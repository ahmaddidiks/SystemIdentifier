
/* program for collecting dataset PG45
   Author     : Ahmad Didik Setiyadi
   Last edited  : 4 Des 2020

*/

#include <AutoPID.h>
int a;
int b=0;
const float pi = 3.14159267;
double setPoint = 0;
double pwm, speedInRPM;


//waktu inc 0-1000 = 10000*10 (sampling time = 10ms) = 10000 
#define waktuAmbilData 15000 //berapa lama ambil datanya (ms)

#define KP 32.9279740191956//2.0086510034733
#define KI 196.610205687394//29.8109534766749
#define KD 1.20746780266902
#define OUTPUT_MIN 0
#define OUTPUT_MAX 1000

#define LED_PIN 13
#define motor 5
#define pinA 6
#define pinB 7
#define ClockPin 2 // Must be pin 2 or 3
#define DataPin 9 // can be any other pin
      // My Encoder has 150 Clock pulses per revolution
      // note that 399999.8 = (60 seonds * 1000000 microseconds)microseconds in a minute / 150 pulses in 1 revolution)
      // change the math to get the proper multiplier for RPM for your encoder
#define Multiplier 399999.8//150000.0 // don't forget a decimal place to make this number a floating point number

long nilaiRandom;
unsigned long waktuAwal,waktuAkhir;

volatile long EncoderCounter = 0;

//input/output variables passed by reference, so they are updated automatically
AutoPID myPID(&speedInRPM, &setPoint, &pwm, OUTPUT_MIN, OUTPUT_MAX, KP, KI, KD); 
 
void setup() {
  // put your setup code here, to run once:
pinMode(motor, OUTPUT);
pinMode(pinA, OUTPUT); digitalWrite(pinA, LOW);
pinMode(pinB, OUTPUT); digitalWrite(pinB, HIGH); //FORWARD
pinMode(ClockPin, INPUT); 
pinMode(DataPin, INPUT);
pinMode(LED_PIN, OUTPUT);
attachInterrupt(0,onPin2CHANGECallBackFunction,RISING);


myPID.setBangBang(200);
myPID.setTimeStep(1);

Serial.begin(57600);
Serial.println("Serial Test");
delay(500);
for (int i=0;i<=5;i++){
  Serial.print("Collecting dataset in "); Serial.println(5-i);
  delay(1000);
        }
waktuAwal = millis();

waktuAkhir = waktuAwal+waktuAmbilData;
}

void loop() {
  // put your main code here, to run repeatedly:
static unsigned long SpamTimer;

while(SpamTimer <= waktuAkhir ){
  if ( (unsigned long)(millis() - SpamTimer) >= (3)) {
    
    SpamTimer = millis();
    
    
    //run this code for motor driver test
    //motorDriverTest();
    //Run this code for collecting data
    //nilaiAcak();
    
    //Run this code for PID Test
    //a++;
    //time = a*4ms (estimated)
    //if(a==25) { a=0;
    //            b+=1;
    //            setPoint = sin(b)*180/pi;
    //            if (b==180) b=180;
    //            }
    PIDTest();
    }
  }
  if(SpamTimer >= waktuAkhir) analogWrite(motor,0); //motor off
}

void onPin2CHANGECallBackFunction(uint32_t Time, uint32_t PinsChanged, uint32_t Pins){
    static uint32_t lTime; // Saved Last Time of Last Pulse
    uint32_t cTime; // Current Time
    cTime = micros(); // Store the time for RPM Calculations
    int32_t dTime; // Delt in time

// Encoder Code
    bool DataPinVal = digitalRead(DataPin);
// We know pin 2 just went high to trigger the interrupt
// depending on direction the data pin will either be high or low
    EncoderCounter += (DataPinVal) ? 1 : -1; // Should we step up or down?
// End Encoder Code

// calculate the DeltaT between pulses
    dTime = cTime - lTime;
    lTime = cTime;
    speedInRPM = Multiplier / ((DataPinVal) ? dTime: (-1 * dTime)); // Calculate the RPM Switch DeltaT to either positive or negative to represent Forward or reverse RPM
}

void motorDriverTest(){
     nilaiRandom += 1;
     analogWrite(motor,map(nilaiRandom, 0, 1000, 0, 255)); //set pwm motor as random number
      //show nilaiRandom value as a PWM
     Serial.print(nilaiRandom);
     Serial.print(" ");

     //show Encoder value
    //Serial.println(EncoderCounter);
    //Serial.print(" ");

    //show speed in RPM 
    Serial.print(speedInRPM, 5);
    Serial.println(",");
}

void nilaiAcak(){
     nilaiRandom = random(100,700); //10-70%
     analogWrite(motor,map(nilaiRandom, 0, 1000, 0, 255)); //set pwm motor as random number
      //show nilaiRandom value as a PWM
     Serial.print(nilaiRandom);
     Serial.print(" ");

     //show Encoder value
    //Serial.println(EncoderCounter);
    //Serial.print(" ");

    //show speed in RPM 
    Serial.print(speedInRPM, 5);
    Serial.println(",");
}

void PIDTest(){
    myPID.run(); //call every loop, updates automatically at certain time interval
    analogWrite(motor,map(pwm, 0, 1000, 0, 255)); //use PID Lib
    
    //show PWM value
    Serial.print(setPoint);
    Serial.print(" ");
    

    //show Encoder value
    //Serial.println(EncoderCounter);
    //Serial.print(" ");

    //show speed in RPM 
    Serial.print(speedInRPM, 5);
    Serial.println(",");
    digitalWrite(LED_PIN, myPID.atSetPoint(10));//light up LED when we're at setpoint +-10 RPM
}
