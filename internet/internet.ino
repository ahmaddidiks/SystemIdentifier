
#define ClockPin 2 // Must be pin 2 or 3
#define DataPin 9 // can be any other pin
      // My Encoder has 400 Clock pulses per revolution
      // note that 150000.0 = (60 seonds * 1000000 microseconds)microseconds in a minute / 400 pulses in 1 revolution)
      // change the math to get the proper multiplier for RPM for your encoder
#define Multiplier 150000.0 // don't forget a decimal place to make this number a floating point number
volatile long EncoderCounter = 0;
volatile float SpeedInRPM = 0;

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
    SpeedInRPM = Multiplier / ((DataPinVal) ? dTime: (-1 * dTime)); // Calculate the RPM Switch DeltaT to either positive or negative to represent Forward or reverse RPM
}

void setup() {
  Serial.begin(57600); //115200
  // put your setup code here, to run once:
  pinMode(ClockPin, INPUT); 
  pinMode(DataPin, INPUT);
  attachInterrupt(0,onPin2CHANGECallBackFunction,RISING);
}

void loop() {
  //static unsigned long SpamTimer;
  //if ( (unsigned long)(millis() - SpamTimer) >= (10)) {
   // SpamTimer = millis();
    Serial.print(EncoderCounter);
    Serial.print(" ");
    Serial.print(SpeedInRPM, 5);
    Serial.print(" RPM");
    Serial.println();
    SpeedInRPM = 0; // if no pulses occure in the next 100 miliseconds then we must assume that the motor has stopped
  //}
}
