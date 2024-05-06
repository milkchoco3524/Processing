import processing.serial.*;  // 시리얼 포트를 사용하기 위해 import 사용
Serial port;  // 통신을 위한 시리얼 포트 정의

PImage img;
int i;

float[] ultrasonic_sensor = {0,0,0,0};
int[] ultrasonic_sensor1 = new int[2];
String Serial_Data_String = null;

void setup()
{
  
  size(700, 900);
  img=loadImage("c:\\미래모빌리티공학과\\MinJun LEE\\SAE_CAR\\img\\ultrasonic_sensor.png");
  port = new Serial(this,"COM?",115200);
  
}


void draw()
{
  
  background(255,255,255);
  image(img,260,500,197,98);
  
  fill(255,255,0);
  rect(340,500,30,-ultrasonic_sensor1[0]);  //ultrasonic senseor distance
  
  if (i<-180) i=0;
  display_ultrasonic_sensor_data();
  
  
  
}

void display_ultrasonic_sensor_data()
{
  
  if(ultrasonic_sensor1[0]<15) fill(255,0,0);
  else fill(255,255,0);
  fill(255,255,0);
  rect(340,500,30,i--);  //ultrasonic senseor distance
  
  //if (i<-180) i=0;
}
 
 
void serialEvent(Serial port)
{
  
   Serial_Data_String = port.readStringUntil('\n');
  
  if(Serial_Data_String != null) 
  {
    
    print("input data : ");
    print("Serial_Data_String");
    
    Serial_Data_String = trim(Serial_Data_String);
    String [] values = split(Serial_Data_String," ");
    
    if( (values.length == 4) && (values[0].indexof('#')==0) && (values[3].indexof('*') ==0) );
      print(values[0]);
      print(" ");   
      print(values[1]);
      print(" ");
      print(values[3]);
      print(" \n");
      
      ultrasonic_sensor1[0] = int(values[1]);
      ultrasonic_sensor1[1] = int(values[2]);
      
    }
    
    
    
  }
  
  
  
  
}
