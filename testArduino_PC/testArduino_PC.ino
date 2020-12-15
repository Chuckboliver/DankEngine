#include<SoftwareSerial.h>
SoftwareSerial myserial(10, 11);//rx, tx
uint16_t move_to_bytes(String move_uci) {
  uint16_t data = 3 << 13;
  for (size_t i = 0 ; i < 2 ; ++i) {
    data |= map(move_uci[2 * i], 97, 104, 0, 7) << (10 - 6 * i);
    data |= map(move_uci[2 * i + 1], 49, 56, 0, 7) << (7 - 6 * i);
  }
  return data;
}
uint16_t decode_command(String command){
  String cmd = (String)command[0] + (String)command[1];
  String arg;
  uint16_t data;
  if(cmd.equals("mv")){
    arg = (String)command[3] + (String)command[4] + (String)command[5] + (String)command[6];
    data = move_to_bytes(arg);
  }
  else if(cmd.equals("ng")){
    data = 0;
  }
  else if(cmd.equals("cs")){
    arg = command[3];
    if(arg.equals("w")){
      data = 32;
    }
    else{
      data = 48;
    }
  }
  else if(cmd.equals("sl")){
    arg = (String)command[3];
    uint16_t level = arg.toInt();
    Serial.println(level);
    data = 2 << 5;
    data |= (level - 1) << 2;
  }
  else if(cmd.equals("pc")){
    arg = (String)command[3];
    data = 4 << 5;
    if(arg.equals("r")){
      data |= 0 << 3;
    }
    else if(arg.equals("n")){
      data |= 1 << 3;
    }
    else if(arg.equals("b")){
      data |= 2 << 3;
    }
    else if(arg.equals("q")){
      data |= 3 << 3;
    }
  }
  else if(cmd.equals("er")){
    data = 180;
  }
  return data;
}
uint16_t data(String number) {
  uint16_t data = 0;
  for (size_t i = 0 ; i < number.length() ; ++i) {
    data  = data * 10 + number[i] - 48;
  }
  return data;
}
void TX(uint16_t data) {
  if (data >> 8 == 0) {
    myserial.write(data);
  }
  else {
    myserial.write(0xCC);
    uint8_t buf[2];
    buf[0] = (data >> 8) & 0xFF;
    buf[1] = data & 0xFF;
    myserial.write(buf, 2);
  }
}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  myserial.begin(57600);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (myserial.available()) { //Read data
    uint16_t readed_data;
    uint16_t RC = myserial.read();
    //Serial.print(RC);
    if (RC >> 5 == 3) {
      uint16_t MSB = 0;
      while(MSB == 0){
        if(myserial.available()){
          MSB |= RC << 8;
          MSB |= myserial.read();
        }
      }
      readed_data = MSB;
    }
    else {
      readed_data = RC;
    }
    Serial.println(readed_data);
  }
  if (Serial.available()) { //Serial Monitor
    uint16_t  incomingBytes = decode_command(Serial.readString());
    //Serial.println(incomingBytes);
    TX(incomingBytes);
  }
}
