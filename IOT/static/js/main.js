const labels = [];
const initialData = {
    dobui: [],
    nhietdo: [],
    doam: [],
    anhsang: [],
};

const newData = {
    dobui: [],
    nhietdo: [],
    doam: [],
    anhsang: [],
};

const ctx = document.getElementById('canvas').getContext('2d');
const chart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: labels,
        datasets: [
            {
                label: 'Nhiệt độ',
                backgroundColor: 'blue',
                borderColor: 'blue',
                data: initialData.nhietdo,
                tension: 0.4,
            },
            {
                label: 'Độ ẩm',
                backgroundColor: 'red',
                borderColor: 'red',
                data: initialData.doam,
                tension: 0.4,
            },
            {
                label: 'Ánh sáng',
                backgroundColor: 'yellow',
                borderColor: 'yellow',
                data: initialData.anhsang,
                tension: 0.4,
            },
        ],
    },
    options: {},
});

const ctx2 = document.getElementById('canvas2').getContext('2d');
const chart2 = new Chart(ctx2, {
    type: 'line',
    data: {
        labels: labels,
        datasets: [
            {
                label: 'Độ bụi',
                backgroundColor: 'green',
                borderColor: 'green',
                data: initialData.dobui,
                tension: 0.4,
            },
        ],
    },
    options: {},
});

var nn = true;
var bl1 = document.getElementById('light1');
var bl2 = document.getElementById('light2');
var bl3 = document.getElementById('light3');
var timeoutId;
var isFlashing = false;

function flight() {
    if (nn) {
        bl1.classList.remove("block1");
        bl1.classList.add("block1_2");     
        bl2.classList.remove("block2");
        bl2.classList.add("block2_2");
        bl3.classList.remove("block3");
        bl3.classList.add("block3_2");
    } 
    else {
        bl1.classList.remove("block1_2");
        bl1.classList.add("block1");
        bl2.classList.remove("block2_2");
        bl2.classList.add("block2");
        bl3.classList.remove("block3_2");
        bl3.classList.add("block3");
    }
    nn = !nn;
    // timeoutId = setInterval(stopLightEffect, 1000);
}

function startLight() {
    if (!isFlashing) {
        isFlashing = true;
        timeoutId = setInterval(flight,500);
    }
}

function stopLightEffect() {
    nn = true;
    isFlashing = false;
    clearInterval(timeoutId);
    bl1.classList.remove("block1_2");
    bl1.classList.add("block1");
    bl2.classList.remove("block2_2");
    bl2.classList.add("block2");
    bl3.classList.remove("block3_2");
    bl3.classList.add("block3");
}

function updateChart(data) {
    if (newData.nhietdo.length === 5) {
        newData.nhietdo.shift();
        newData.doam.shift();
        newData.anhsang.shift();
        newData.dobui.shift();
    }
    newData.nhietdo.push(data.temperature);
    newData.doam.push(data.humidity);
    newData.anhsang.push(data.light);
    newData.dobui.push(data.dobui);

    if (labels.length === 5) {
        labels.shift();
    }
    labels.push(data.timestamp);

    x = newData.nhietdo[newData.nhietdo.length - 1];
    y = newData.doam[newData.doam.length - 1];
    z = newData.anhsang[newData.anhsang.length - 1];
    t = newData.dobui[newData.dobui.length - 1];

    chart.data.datasets[0].data = newData.nhietdo;
    chart.data.datasets[1].data = newData.doam;
    chart.data.datasets[2].data = newData.anhsang;

    chart2.data.datasets[0].data = newData.dobui;

    var divElement = document.querySelector('.tt0');
    divElement.textContent = t + ' %';
    var ttElement = document.querySelector('.hd0');

    if (t >= 0 && t <= 40) {
        ttElement.style.backgroundColor = '#EEEEEE';
    } else if (t > 40 && t <= 70) {
        ttElement.style.backgroundColor = '#DDDDDD';
    } else if (t > 60) {
        ttElement.style.backgroundColor = '#BBBBBB';
    }

    var divElement1 = document.querySelector('.tt1');
    divElement1.textContent = x + ' °C';
    var ttElement1 = document.querySelector('.hd1');

    if (x > -60 && x <= 20) {
        ttElement1.style.backgroundColor = '#66FFFF';
    } else if (x > 20 && x <= 30) {
        ttElement1.style.backgroundColor = '#FFCC00';
    } else if (x > 30) {
        ttElement1.style.backgroundColor = 'rgb(255, 0, 0)';
    }

    var divElement2 = document.querySelector('.tt2');
    divElement2.textContent = y + ' %';
    var ttElement2 = document.querySelector('.hd2');

    if (y > 0 && y <= 30) {
        ttElement2.style.backgroundColor = '#3300FF';
    } else if (y > 30 && y <= 60) {
        ttElement2.style.backgroundColor = '#0000CC';
    } else if (y > 60) {
        ttElement2.style.backgroundColor = '#000099';
    }

    var divElement3 = document.querySelector('.tt3');
    divElement3.textContent = z + ' vh';
    var ttElement3 = document.querySelector('.hd3');

    if (z >= 0 && z <= 30) {
        ttElement3.style.backgroundColor = '#f4f416';
    } else if (z > 30 && z <= 60) {
        ttElement3.style.backgroundColor = '#d1d112';
    } else if (z > 60) {
        ttElement3.style.backgroundColor = '#7f7f0b';
    }

    chart.update();
    chart2.update();
}

function fetchData() {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/get_data', true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var data = JSON.parse(xhr.responseText);
            if (data.length > 0) {
                updateChart(data[0]);
                if (data[0].dobui > 70) {
                    startLight();
                } else {
                    stopLightEffect();
                }
            }
        }
    };
    xhr.send();
}

setInterval(fetchData, 2000);