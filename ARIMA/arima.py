import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.tsa.arima.model import ARIMA

# Đọc dữ liệu từ file CSV
data = pd.read_csv('ARIMA/demo.csv')

# Chuyển đổi cột thời gian thành đối tượng datetime
data['Date'] = pd.to_datetime(data['Date'])

# Đặt cột thời gian làm chỉ mục của DataFrame
data.set_index('Date', inplace=True)

# Chọn chỉ mục cần thiết (date và close)
data = data[['Close']]

# Xác định model ARIMA
model = ARIMA(data, order=(3, 0, 1))

# Ước lượng model ARIMA
results = model.fit()

# Đánh giá mô hình
print(results.summary())

# Dự đoán giá trị trong tương lai
forecast = results.get_forecast(steps=20)  # Dự đoán 20 bước tiếp theo

# Lấy các giá trị dự đoán và khoảng tin cậy tương ứng
forecast_values = forecast.predicted_mean
confidence_interval = forecast.conf_int()

# Vẽ biểu đồ dữ liệu gốc và dự đoán
plt.figure(figsize=(10, 6))
plt.plot(data.index, data['Close'], label='Actual')
plt.plot(forecast_values.index, forecast_values, color='red', label='Forecast')
plt.fill_between(confidence_interval.index, confidence_interval['lower Close'], confidence_interval['upper Close'], color='gray', alpha=0.3)
plt.title('ARIMA Forecast')
plt.xlabel('Date')
plt.ylabel('Close Price')
plt.legend()
plt.show()