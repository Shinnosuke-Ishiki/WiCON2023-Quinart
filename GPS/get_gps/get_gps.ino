#include <TinyGPSPlus.h>
#include <M5StickC.h>

HardwareSerial GPSRaw(2);
TinyGPSPlus gps;

int cnt=0;

void setup() {
  M5.begin();
  M5.Lcd.setRotation(3);
  GPSRaw.begin(9600, SERIAL_8N1, 33, 32);
}

void loop() {
  M5.Lcd.setCursor(0, 0, 2);
  M5.Lcd.fillScreen(BLACK);
  M5.Lcd.printf("### GPS TEST %d\n", cnt++);

  while(GPSRaw.available()>0) {
    if(gps.encode(GPSRaw.read())) {
      break;
    }
  }
  if(gps.location.isValid()) {
    M5.Lcd.printf("LAT:%.6f\n", gps.location.lat());  // 緯度
    M5.Lcd.printf("LNG:%.6f\n", gps.location.lng());  // 経度
    M5.Lcd.printf("ALT:%.2f\n", gps.altitude.meters());
  } else {
    M5.Lcd.printf("INVALID\n");
  }
  delay(5000);
}
