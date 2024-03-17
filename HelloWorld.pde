#include <Wire.h> 
#include <LiquidCrystal_I2C.h>

int led1 = 2;
int led2 = 4;
const int solar = 34;
int sol = 0;

LiquidCrystal_I2C lcd(0x27,20,4);  // set the LCD address to 0x27 for a 16 chars and 2 line display

void setup()
{
  /*lcd.init();                      // initialize the lcd 
  lcd.init();
  // Print a message to the LCD.
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("VENNAMAVAL");
  lcd.setCursor(0,1);
  lcd.print("GHEE GIRL");*/
  Serial.begin(115200);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
}


void loop(){
  sol = analogRead(solar);
  Serial.println(sol);
  if(sol >= 600){
    digitalWrite(led1, HIGH);
    Serial.println("SOLAR POWER");
  }
  else{
    digitalWrite(led2, HIGH);
    Serial.println("NORMAL POWER");
  }
  delay(500);
}
