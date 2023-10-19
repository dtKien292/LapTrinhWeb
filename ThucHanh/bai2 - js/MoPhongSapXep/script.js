const dau = document.getElementById('dau');
const hienThi = document.getElementById('hienthi');
const nutSapXepLuaChon = document.getElementById('sapXepLuaChon');
const soLanSoSanhElement = document.getElementById('soLanSoSanh');
const soLanDoiChoElement = document.getElementById('soLanDoiCho');
const nutSapXepNoiBot = document.querySelector('#nut button:nth-child(2)');
const nutSapXepChen = document.querySelector('#nut button:nth-child(3)');
const nutTaoDaySo = document.querySelector('#chan button:nth-child(1)');
const nutReset = document.querySelector('#chan button:nth-child(2)');

function render(arr, currentIndex, minIndex) {
    hienThi.innerHTML = '';
    arr.forEach((so, index) => {
        const column = document.createElement('div');
        column.classList.add('column');
        column.style.height = `${(so / 99) * 396}px`;
        column.innerText = so;
        if (index === currentIndex || index === minIndex) {
            column.classList.add('highlight');
        }
        if (index <= currentIndex) {
            column.classList.add('sorted');
        }
        hienThi.appendChild(column);
    });
}
function renderSoLanSoSanh(soLanSoSanh) {
    soLanSoSanhElement.innerText = `Số lần so sánh: ${soLanSoSanh}`;
}
function renderSoLanDoiCho(soLanDoiCho) {
    soLanDoiChoElement.innerText = `Số lần đổi chỗ: ${soLanDoiCho}`;
}

function selectionSortStepByStep(arr) {
    const len = arr.length;
    let i = 0;
    let soLanSoSanh = 0;
    let soLanDoiCho = 0;

    function swap(arr, i, j) {
        const temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    function step() {
        if (i < len - 1) {
            let minIndex = i;
            for (let j = i + 1; j < len; j++) {
                soLanSoSanh++;
                renderSoLanSoSanh(soLanSoSanh);
                if (arr[j] < arr[minIndex]) {
                    minIndex = j;
                }
            }
            if (minIndex !== i) {
                swap(arr, i, minIndex);
                soLanDoiCho++;
                renderSoLanDoiCho(soLanDoiCho);
            }
            render(arr, i, minIndex);
            i++;
            setTimeout(step, 1000);
        } else {
            render(arr, -1, -1);
            renderSoLanSoSanh(soLanSoSanh);
            renderSoLanDoiCho(soLanDoiCho);
        }
        if (i >= len) {
            render(arr, -1, -1);
            renderSoLanSoSanh(soLanSoSanh);
            renderSoLanDoiCho(soLanDoiCho);

            // Đổi màu các cột sang xanh lá cây
            const columns = document.querySelectorAll('.column');
            columns.forEach(column => {
                column.style.backgroundColor = 'green';
            });
        }
    }

    step();
}

function bubbleSortStepByStep(arr) {
    const len = arr.length;
    let i = 0;
    let j = 0;
    let soLanSoSanh = 0;
    let soLanDoiCho = 0;

    function swap(arr, i, j) {
        const temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    function step() {
        if (i < len) {
            if (j < len - i - 1) {
                soLanSoSanh++;
                renderSoLanSoSanh(soLanSoSanh);
                if (arr[j] > arr[j + 1]) {
                    swap(arr, j, j + 1);
                    soLanDoiCho++;
                    renderSoLanDoiCho(soLanDoiCho);
                }
                render(arr, j, j + 1);
                j++;
                setTimeout(step, 1000);
            } else {
                render(arr, -1, -1);
                j = 0;
                i++;
                setTimeout(step, 1000);
            }
        } else {
            renderSoLanSoSanh(soLanSoSanh);
            renderSoLanDoiCho(soLanDoiCho);
        }
        if (i >= len) {
            render(arr, -1, -1);
            renderSoLanSoSanh(soLanSoSanh);
            renderSoLanDoiCho(soLanDoiCho);

            // Đổi màu các cột sang xanh lá cây
            const columns = document.querySelectorAll('.column');
            columns.forEach(column => {
                column.style.backgroundColor = 'green';
            });
        }
    }
    step();
}

function insertionSortStepByStep(arr) {
    const len = arr.length;
    let i = 1;
    let soLanSoSanh = 0;
    let soLanDoiCho = 0;

    function step() {
        if (i < len) {
            let j = i;
            while (j > 0 && arr[j - 1] > arr[j]) {
                const temp = arr[j];
                arr[j] = arr[j - 1];
                arr[j - 1] = temp;
                j--;
                soLanSoSanh++;
                soLanDoiCho++;
                render(arr, j, j + 1);
                renderSoLanSoSanh(soLanSoSanh);
                renderSoLanDoiCho(soLanDoiCho);
            }
            i++;
            setTimeout(step, 1000);
        } else {
            render(arr, -1, -1);
            renderSoLanSoSanh(soLanSoSanh);
            renderSoLanDoiCho(soLanDoiCho);
        }
        if (i >= len) {
            render(arr, -1, -1);
            renderSoLanSoSanh(soLanSoSanh);
            renderSoLanDoiCho(soLanDoiCho);

            // Đổi màu các cột sang xanh lá cây
            const columns = document.querySelectorAll('.column');
            columns.forEach(column => {
                column.style.backgroundColor = 'green';
            });
        }
    }
    step();
}


nutSapXepLuaChon.addEventListener('click', () => {
    const daySo = Array.from(hienThi.children).map((column) => parseInt(column.innerText));
    selectionSortStepByStep(daySo);
});

nutSapXepNoiBot.addEventListener('click', () => {
    const daySo = Array.from(hienThi.children).map((column) => parseInt(column.innerText));
    bubbleSortStepByStep(daySo);
});

nutSapXepChen.addEventListener('click', () => {
    const daySo = Array.from(hienThi.children).map((column) => parseInt(column.innerText));
    insertionSortStepByStep(daySo);
});

nutTaoDaySo.addEventListener('click', () => {
    const daySo = [];
    for (let i = 0; i < 20; i++) {
        const soNgauNhien = Math.floor(Math.random() * 89) + 10;
        daySo.push(soNgauNhien);
    }
    hienThi.innerHTML = '';
    daySo.reverse().forEach((so) => {
        const column = document.createElement('div');
        column.classList.add('column');
        column.style.height = `${(so / 99) * 396}px`;
        column.innerText = so;
        hienThi.appendChild(column);
    });
});

nutReset.addEventListener('click', () => {
    location.reload();
});