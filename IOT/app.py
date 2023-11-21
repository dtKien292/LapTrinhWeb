from flask import Flask, render_template, request, jsonify
import paho.mqtt.publish as publish
import paho.mqtt.client as mqtt
import json
import mysql.connector
from datetime import datetime

app = Flask(__name__)

mqtt_broker = "192.168.43.65"
mqtt_topic = "ledControlInput"
mqtt_data_topic = "dataSensorOutput"

@app.route('/get_action_data', methods=['GET']) # lay du lieu de hien len action.html
def get_action_data():
    page = request.args.get('page', type=int, default=1)
    per_page = 10 # Dòng này xác định số lượng mục dữ liệu (số bản ghi) mà bạn muốn hiển thị trên mỗi trang
    offset = (page - 1) * per_page

    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )

    query = "SELECT * FROM `iot`.`button_events` ORDER BY `timestamp` DESC LIMIT %s OFFSET %s;"
    cursor = connection.cursor()
    cursor.execute(query, (per_page, offset))
    data = cursor.fetchall()
    cursor.close()
    connection.close()
    sensor_data = []
    for row in data:
        sensor_data.append({
            "id": row[0],
            "button_id": row[1],
            "status": row[2],
            "timestamp": row[3]
        })

    return jsonify(sensor_data)

@app.route('/get_sensor_data', methods=['GET']) # lay du lieu de hien len data.html
def get_sensor_data():
    page = request.args.get('page', type=int, default=1)
    per_page = 10
    offset = (page - 1) * per_page
    sort_column = request.args.get('sort', default='id')  
    
   
    sort_order = request.args.get('order', default='desc')

    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )

    query = f"SELECT * FROM `iot`.`datasensor` ORDER BY `{sort_column}` {sort_order} LIMIT %s OFFSET %s;"
    
    cursor = connection.cursor()
    cursor.execute(query, (per_page, offset))
    data = cursor.fetchall()
    cursor.close()
    connection.close()

    sensor_data = []
    for row in data:
        sensor_data.append({
            "id": row[0],
            "timestamp": row[1],
            "temperature": row[2],
            "humidity": row[3],
            "led1": row[4],
            "led2": row[5],
            "light": row[6],
            "dobui" : row[7],
            "led3" : row[8]
        })

    return jsonify(sensor_data)

@app.route('/get_data', methods=['GET']) # lay de ve so do
def get_data():
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    query = "SELECT * FROM datasensor ORDER BY timestamp DESC LIMIT 1"
    cursor = connection.cursor()
    cursor.execute(query)
    data = cursor.fetchall()
    cursor.close()
    connection.close()
    
    sensor_data = []
    for row in data:
        sensor_data.append({
            "id": row[0],
            "timestamp": row[1],
            "temperature": row[2],
            "humidity": row[3],
            "led1": row[4],
            "led2": row[5],
            "light": row[6],
            "dobui" : row[7],
            "led3" : row[8]
        })
    
    return jsonify(sensor_data)


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        if request.form.get('btn_bat') == 'on':
            message = '{ "led1" : "on" }'
            save_button('led1','on')
        elif request.form.get('btn_bat') == 'off':
            message = '{ "led1" : "off" }'
            save_button('led1','off')
        elif request.form.get('btn_quat') =='on':
            message = '{ "led2" : "on" }'
            save_button('led2','on')
        elif request.form.get('btn_quat')=='off':
            message = '{ "led2" : "off" }'
            save_button('led2','off')
        elif request.form.get('btn_bat_2')=='on':
            message = '{"led3" : "on"}'
            save_button('led3','on')
        else :
            message = '{"led3" : "off"}'
            save_button('led3','off')
        publish_to_mqtt(message)
        print(f"Đã gửi thông điệp '{message}' đến chủ đề '{mqtt_topic}'")
        return "Success"

    return render_template('index.html')

@app.route('/search_sensor_data', methods=['POST'])
def search_sensor_data():
    temperature = request.form.get('tk')
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    if temperature:
        query = "SELECT * FROM datasensor WHERE temperature = %s"
        cursor = connection.cursor()
        cursor.execute(query, (temperature,))
        data = cursor.fetchall()
        cursor.close()
        connection.close()
        sensor_data = []
        for row in data:
            sensor_data.append({
                "id": row[0],
                "timestamp": row[1],
                "temperature": row[2],
                "humidity": row[3],
                "led1": row[4],
                "led2": row[5],
                "light": row[6],
                "dobui": row[7],
                "led3" : row[8]
            })
        return jsonify(sensor_data)
    else:
        return jsonify([])


@app.route('/search_sensor_dataL', methods=['POST'])
def search_sensor_dataL():
    light = request.form.get('tl')
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    if light:
        query = "SELECT * FROM datasensor WHERE light = %s"
        cursor = connection.cursor()
        cursor.execute(query, (light,))
        data = cursor.fetchall()
        cursor.close()
        connection.close()
        sensor_data = []
        for row in data:
            sensor_data.append({
                "id": row[0],
                "timestamp": row[1],
                "temperature": row[2],
                "humidity": row[3],
                "led1": row[4],
                "led2": row[5],
                "light": row[6],
                "dobui": row[7],
                "led3" : row[8]
            })
        return jsonify(sensor_data)
    else:
        return jsonify([])

@app.route('/search_sensor_dataDA', methods=['POST'])
def search_sensor_dataDA():
    humidity = request.form.get('td')
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    if humidity:
        query = "SELECT * FROM datasensor WHERE humidity = %s"
        cursor = connection.cursor()
        cursor.execute(query, (humidity,))
        data = cursor.fetchall()
        cursor.close()
        connection.close()
        sensor_data = []
        for row in data:
            sensor_data.append({
                "id": row[0],
                "timestamp": row[1],
                "temperature": row[2],
                "humidity": row[3],
                "led1": row[4],
                "led2": row[5],
                "light": row[6],
                "dobui": row[7],
                "led3" : row[8]
            })
        return jsonify(sensor_data)
    else:
        return jsonify([])


@app.route('/search_sensor_dataDB', methods=['POST'])
def search_sensor_dataDB():
    dobui = request.form.get('db')
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    if dobui:
        query = "SELECT * FROM datasensor WHERE dobui = %s"
        cursor = connection.cursor()
        cursor.execute(query, (dobui,))
        data = cursor.fetchall()
        cursor.close()
        connection.close()
        sensor_data = []
        for row in data:
            sensor_data.append({
                "id": row[0],
                "timestamp": row[1],
                "temperature": row[2],
                "humidity": row[3],
                "led1": row[4],
                "led2": row[5],
                "light": row[6],
                "dobui": row[7],
                "led3" : row[8]
            })
        return jsonify(sensor_data)
    else:
        return jsonify([])

def save_button(led, status): # luu trang thai bat tat den
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='iot',
            user='root',
            password='123456789'
        )
        query = """INSERT INTO button_events (button_id, status, timestamp) VALUES (%s, %s, NOW())"""
        cursor = connection.cursor()
        cursor.execute(query, (led, status))
        connection.commit()
        cursor.close()
    except mysql.connector.Error as error:
        print("Failed to insert record into button_events table: {}".format(error))

    finally:
        if connection is not connection.is_connected():
            connection.close()
        
@app.route('/search_sensor_data_date', methods=['POST'])
def search_sensor_data_date():
    timestamp = request.form.get('date')
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    if timestamp:
        query = "SELECT * FROM datasensor WHERE timestamp >= %s"
        cursor = connection.cursor()
        cursor.execute(query, (timestamp,))
        data = cursor.fetchall()
        cursor.close()
        connection.close()
        sensor_data = []
        for row in data:
            sensor_data.append({
                "id": row[0],
                "timestamp": row[1],
                "temperature": row[2],
                "humidity": row[3],
                "led1": row[4],
                "led2": row[5],
                "light": row[6],
                "dobui": row[7],
                "led3" : row[8]
            })
        return jsonify(sensor_data)
    else:
        return jsonify([])

@app.route('/data.html')
def show_data():
    return render_template('data.html')

@app.route('/actions.html')
def show_actions():
    return render_template('actions.html')

@app.route('/profile.html')
def profile():
    return render_template('profile.html')


# lay trang thai den 
@app.route('/get_led_status', methods=['GET'])
def get_led_status():
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    
    query = "SELECT led1 FROM `iot`.`datasensor` ORDER BY `timestamp` DESC LIMIT 1;"
    cursor = connection.cursor()
    cursor.execute(query)
    data = cursor.fetchone()
    cursor.close()
    connection.close()
    led_status = data[0]  
    return jsonify({"ledStatus": led_status}) # lay trang thai den

@app.route('/get_led3_status', methods=['GET'])
def get_led3_status():
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    
    query = "SELECT led3 FROM `iot`.`datasensor` ORDER BY `timestamp` DESC LIMIT 1;"
    cursor = connection.cursor()
    cursor.execute(query)
    data = cursor.fetchone()
    cursor.close()
    connection.close()
    led_status3 = data[0]  
    return jsonify({"led3Status": led_status3})

# lay trang thai quat
@app.route('/get_fan_status', methods=['GET'])
def get_fan_status():
    connection = mysql.connector.connect(
        host='localhost',
        database='iot',
        user='root',
        password='123456789'
    )
    
    query = "SELECT led2 FROM `iot`.`datasensor` ORDER BY `timestamp` DESC LIMIT 1;"
    cursor = connection.cursor()
    cursor.execute(query)
    data = cursor.fetchone()
    cursor.close()
    connection.close()
    fan_status = data[0]  
    
    return jsonify({"fanStatus": fan_status})



def publish_to_mqtt(message): # gui di
    publish.single(mqtt_topic, message, hostname=mqtt_broker)


def on_message(client, userdata, message): # luu vao csdl
    json_data = message.payload.decode('utf-8')
    data = json.loads(json_data)
    timestamp = datetime.now()
    temperature = data["temperature"]
    humidity = data["humidity"]
    led1 = data["led1"]
    led2 = data["led2"]
    light = data["light"]
    dobui = data["dobui"]
    led3 = data["led3"]
    
    try:
        connection = mysql.connector.connect(
            host='localhost',
            database='iot',
            user='root',
            password='123456789'
        )

        query = "SELECT COUNT(*) FROM `iot`.`datasensor`"
        cursor = connection.cursor()
        cursor.execute(query)
        data = cursor.fetchone()
        id = data[0]  
        
        mySql_insert_query = """INSERT INTO datasensor (id,timestamp, temperature, humidity, led1, led2, light,dobui,led3) 
                               VALUES (%s, %s, %s, %s, %s, %s, %s,%s,%s) 
                               ON DUPLICATE KEY UPDATE timestamp=timestamp"""
        
        cursor = connection.cursor()
        cursor.execute(mySql_insert_query, (id,timestamp, temperature, humidity, led1, led2, light, dobui,led3))
        connection.commit()
        cursor.close()

    except mysql.connector.Error as error:
        print("Failed to insert record into datasensor table: {}".format(error))

    finally:
        if connection is not None and connection.is_connected():
            connection.close()
            


client = mqtt.Client()
client.on_message = on_message
client.connect(mqtt_broker, 1883, 60)
client.subscribe(mqtt_data_topic)

client.loop_start()

if __name__ == '__main__':
    app.run()