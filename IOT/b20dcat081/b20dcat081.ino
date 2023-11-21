#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include "DHT.h"
#include <ArduinoJson.h>

// Wifi và MQTT
const char* ssid = "AndroidAP803C";
const char* password = "wipf1135";
const char* mqtt_server = "192.168.43.65";

// Khai báo cảm biến
const int DHTPin = 14;
#define DHTTYPE DHT11 // DHT 11

DHT dht(DHTPin, DHTTYPE); // Khai báo biến cảm biến DHT11

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE  (50)
char msg[MSG_BUFFER_SIZE];
int value = 0;

// Khai báo chân đèn LED
int led1Pin = 5;
int led1Status = 0;

int led2Pin = 4;
int led2Status = 0;

int led3Pin = 13;
int led3Status = 0;

int lightPin = A0;

// Khai báo biến toàn cục nhiệt độ và độ ẩm
float temperature;
float humidity;
int light;
int dobui;

// Json parse
StaticJsonDocument<500> doc;

void setup_wifi() {
  dht.begin();
  delay(10);
  // Bắt đầu kết nối tới WiFi
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  // Nếu không thể kết nối thì sẽ thử lại sau 500 mili giây
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* message, unsigned int length) {
  Serial.print("Message arrived on topic: ");
  Serial.print(topic);
  Serial.print(". Message: ");
  String messageTemp;

  for (int i = 0; i < length; i++) {
    Serial.print((char)message[i]);
    messageTemp += (char)message[i];
  }
  Serial.println();

  if (String(topic) == "ledControlInput") {
    controlLed(messageTemp);
  }
}

void controlLed(String message) {
  // Deserialize the JSON document
  DeserializationError error = deserializeJson(doc, message);
  if (error) {
    Serial.print("JSON parsing failed: ");
    Serial.println(error.c_str());
    return;
  }

  const char* led1 = doc["led1"];
  const char* led2 = doc["led2"];
  const char* led3 = doc["led3"];

  if (String(led1) == "on") {
    digitalWrite(led1Pin, HIGH);
    led1Status = 1;
  } else if (String(led1) == "off") {
    digitalWrite(led1Pin, LOW);
    led1Status = 0;
  }

  if (String(led2) == "on") {
    digitalWrite(led2Pin, HIGH);
    led2Status = 1;
  } else if (String(led2) == "off") {
    digitalWrite(led2Pin, LOW);
    led2Status = 0;
  }

  if (String(led3) == "on") {
    digitalWrite(led3Pin, HIGH);
    led3Status = 1;
  } else if (String(led3) == "off") {
    digitalWrite(led3Pin, LOW);
    led3Status = 0;
  }

}

void reconnect() {
  // Lắp đến khi kết nối thành công
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Tạo 1 ID của client ngẫu nhiên
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Sẵn sàng kết nối
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Sẽ subscribe đến topic này
      client.subscribe("ledControlInput");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Thử lại sau 5 giây
      delay(5000);
    }
  }
}

void setup() {
  pinMode(led1Pin, OUTPUT);
  pinMode(led2Pin, OUTPUT);
  pinMode(led3Pin, OUTPUT);
  pinMode(lightPin, INPUT);
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);

  digitalWrite(led1Pin, LOW);
  digitalWrite(led2Pin, LOW);
  digitalWrite(led3Pin, LOW);
}

void publishData() {
  // Đọc dữ liệu độ ẩm
  humidity = dht.readHumidity();
  // Đọc dữ liệu nhiệt độ
  temperature = dht.readTemperature();

  light = analogRead(A0);
  dobui = random(1,101);

  // Nếu dữ liệu của 1 trong 2 cái không hợp lệ thì sẽ không gửi
  if (isnan(humidity) || isnan(temperature)) {
    Serial.println("Failed to read from DHT sensor!");
  } else {
    char jsonResult[100];
    sprintf(jsonResult, "{ \"temperature\": %.2f, \"humidity\": %.2f, \"led1\": %d, \"led2\": %d, \"light\": %d, \"dobui\": %d , \"led3\" :%d}", temperature, humidity, led1Status, led2Status, light, dobui,led3Status);
    Serial.println(jsonResult);
    client.publish("dataSensorOutput", jsonResult);
  }
}

void loop() {
  if (!client.connected()) {
    reconnect();
  }
  client.loop();
  publishData();
  if(dobui>70){
      delay(500);
      digitalWrite(led1Pin, HIGH);
      digitalWrite(led2Pin, HIGH);
      digitalWrite(led3Pin, HIGH);
      delay(500);
      digitalWrite(led1Pin, LOW);
      digitalWrite(led2Pin, LOW);
      digitalWrite(led3Pin, LOW);
      delay(500);
      digitalWrite(led1Pin, HIGH);
      digitalWrite(led2Pin, HIGH);
      digitalWrite(led3Pin, HIGH);
      delay(500);
      digitalWrite(led1Pin, LOW);
      digitalWrite(led2Pin, LOW);
      digitalWrite(led3Pin, LOW);
      if(led1Status==1){
        digitalWrite(led1Pin, HIGH);
      }
      if(led2Status==1){
        digitalWrite(led2Pin, HIGH);
      }
      if(led3Status==1){
        digitalWrite(led3Pin, HIGH);
      }
        
  }
  else {
    delay(2000);
  }

}
