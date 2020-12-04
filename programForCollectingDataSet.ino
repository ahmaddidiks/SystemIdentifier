
/* program for collecting dataset PG45
   Author     : Ahmad Didik Setiyadi
   Last edited  : 4 Des 2020

*/
unsigned int nilaiRandom;
unsigned long encoder;
float RPM;
#define motor 5
#define button 4
#define pinA 3
#define pinB 2

void setup() {
  // put your setup code here, to run once:
  
pinMode(button,INPUT_PULLUP);
pinMode(motor, OUTPUT);
pinMode(pinA, OUTPUT);
pinMode(pinB, OUTPUT);

Serial.begin(57600);
}

void loop() {
  // put your main code here, to run repeatedly:

while(button==LOW){
  nilaiRandom = random(0,255);
  analogWrite(motor, nilaiRandom); //set pwm motor as random number
  //hitung encoder
  //hitung rpm
  Serial.print(nilaiRandom);
  Serial.print(" ");
  Serial.print(RPM);
  Serial.println(",");
}
}

float hitungRPM(int deltaEncoder){

}
