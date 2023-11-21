# iot

để chạy cần :
- cài đặt các thư viện cần thiết
  + pip instal flask
  + các thư viện còn lại tra gg
- cài đặt mqtt server
- file broker.conf :
  +listener 1883
  +allow_anonymous true
- chạy mqtt với lệnh cd "C:\Program Files\mosquitto"
                        > mosquitto -v -c broker.conf
- sau khi hòan tất nhận dữ liệu ở arduino chạy app.py 
