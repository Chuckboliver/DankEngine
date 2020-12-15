#include<SoftwareSerial.h>
SoftwareSerial myserial(10, 11);//rx, tx
uint16_t data(String number){
  uint16_t data = 0;
  for(size_t i = 0 ; i < number.length() ; ++i){
    data  = data * 10 + number[i] - 48;
  }
  return data;
}
void TX(uint16_t data){
  myserial.write(data);
  delay(20);
}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myserial.begin(57600);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(myserial.available()){//Read data
    uint16_t readed_data;
    uint16_t RC = myserial.read();
    if(RC == 0xCC){
      uint16_t MSB = 0;
      uint8_t count = 0;
      uint16_t b[2];
      while(count < 2){
        if(myserial.available()){
          b[count++] = myserial.read();
        }
      }
      MSB |= b[0] << 8;
      MSB |= b[1];
      readed_data = MSB;
    }
    else{
      readed_data = RC;
    }
    if(readed_data >> 8 == 0){
      Serial.write(readed_data);
      delay(20);
    }
    else{
      Serial.write((readed_data >> 8) & 0xFF);
      Serial.write(readed_data & 0xFF);
      delay(20);
    }
  }
  if(Serial.available()){//Serial Monitor
    uint16_t  incomingBytes = Serial.read();
    TX(incomingBytes);
  }
}
