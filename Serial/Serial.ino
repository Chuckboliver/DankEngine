uint16_t move_to_bytes(String move_uci) {
  if (move_uci.length() == 4) {
    uint16_t data = 3 << 13;
    for (size_t i = 0 ; i < 2 ; ++i) {
      data |= map(move_uci[2 * i], 97, 104, 0, 7) << (10 - 6 * i);
      data |= map(move_uci[2 * i + 1], 49, 56, 0, 7) << (7 - 6 * i);
    }
    return data;
  }
  else {
    uint16_t data = 0;
    data |= map(move_uci[0], 97, 104, 0, 7) << 5;
    data |= map(move_uci[1], 49, 56, 0, 7) << 2;
    return data;
  }
}

void TX(uint16_t data) {
  if (data >> 8 == 0) {
    Serial.write(data);
    delay(10);
  }
  else {
    Serial.write((data >> 8) & 0xFF);
    Serial.write(data & 0xFF);
    delay(10);
  }
}
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  TX(B00010000);//new game
  TX(B01101100);//bot level 4
  TX(B01101000); //bot level 3
  TX(B00100000); //choose WHITE
  TX(B00010000);//new game
  //TX(0x90C6);//e2e4
  //TX(0x9348);//e7e5
  //TX(0x9854);//g1f3
  //  TX(move_to_bytes("e2e4"));
  //  TX(move_to_bytes("e7e5"));
  //  TX(move_to_bytes("g1f3"));
  //  TX(move_to_bytes("g8f6"));
  //  TX(move_to_bytes("f1c4"));
  //TX(move_to_bytes("d7d5"));
  //  TX(move_to_bytes("e4d5"));
}

void loop() {
  // put your main code here, to run repeatedly:
  TX(move_to_bytes("d1d5"));

  TX(move_to_bytes("d1"));

  TX(move_to_bytes("d5"));
}
