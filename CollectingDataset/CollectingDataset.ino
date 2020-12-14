
/* program for collecting dataset PG45
   Author     : Ahmad Didik Setiyadi
   Last edited  : 4 Des 2020

*/

#include <AutoPID.h>

double setPoint = 400;
double pwm, speedInRPM;


//waktu inc 0-1000 = 10000*10 (sampling time = 10ms) = 10000 
#define waktuAmbilData 1000 //berapa lama ambil datanya (ms)

#define KP 32.9279740191956//2.0086510034733
#define KI 196.610205687394//29.8109534766749
#define KD 1.20746780266902
#define OUTPUT_MIN 0
#define OUTPUT_MAX 255

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


myPID.setBangBang(100);
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
    
    /*
     * RUN THIS CODE FOR COLLECTING DATA AND COMMENT PID TEST
     Collecting data with random value PWM
     nilaiRandom = random(100,600);
     analogWrite(motor,map(nilaiRandom, -1000, 1000, -255, 255)); //set pwm motor as random number
    //show nilaiRandom value as a PWM
    Serial.print(nilaiRandom);
    Serial.print(" ");
     */

     // /*RUN THIS CODE FOR PID TEST AND COMMENT COLLECTING DATA
    //PID test
    
    //pwm = computePID(setPoint);
    //if(pwm > 1000) pwm = 1000;
    //else if(pwm < -1000) pwm = -1000;
    //analogWrite(motor,map(pwm, -1000, 1000, -255, 255)); //set pwm motor as random number
    myPID.run(); //call every loop, updates automatically at certain time interval
    analogWrite(motor,pwm); //use PID Lib
    //show PWM value
    Serial.print(pwm);
    Serial.print(" ");
    //*/

    //show Encoder value
    //Serial.println(EncoderCounter);
    //Serial.print(" ");

    //show speed in RPM 
    Serial.print(speedInRPM, 5);
    Serial.println(",");
    digitalWrite(LED_PIN, myPID.atSetPoint(10));//light up LED when we're at setpoint +-10 RPM
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

//int computePID(int setRPM){
//  float error, cumError, rateError, lastError;
//  
//  error =  (float) setRPM - SpeedInRPM; //get error
//  cumError += error; //integral
//  rateError = error - lastError; //derivatif
//  lastError = error;
//  return round ((kp * error) + (ki * cumError) + (kd * rateError));;
//}
