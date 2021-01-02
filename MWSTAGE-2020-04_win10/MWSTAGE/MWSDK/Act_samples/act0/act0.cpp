#include <TWELITE>

/*** the setup procedure (called on boot) */
void setup() {
    Wire.begin();
}

/*** the loop procedure (called every event) */
void loop() {
    Wire.beginTransmission(0x00);
	Wire.write(000 & 0xFF);
	Wire.write(000 >> 8);
	Wire.write(0);
	Wire.endTransmission();
    delay(100);

    Wire.beginTransmission(0x01);
	Wire.write(111 & 0xFF);
	Wire.write(111 >> 8);
	Wire.write(0);
	Wire.endTransmission();
    delay(100);

    Wire.beginTransmission(0x02);
	Wire.write(222 & 0xFF);
	Wire.write(222 >> 8);
	Wire.write(0);
	Wire.endTransmission();
    delay(100);

    Wire.beginTransmission(0x03);
	Wire.write(333 & 0xFF);
	Wire.write(333 >> 8);
	Wire.write(0);
	Wire.endTransmission();
    delay(100);
}