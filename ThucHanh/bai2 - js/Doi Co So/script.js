const inputElement = document.getElementById("input");
const tuElement = document.getElementById("tu");
const sangElement = document.getElementById("sang");
const resultElement = document.getElementById("result");
const convertButton = document.querySelector("button");

// Bản đồ chuyển đổi giữa các cơ số
const baseMap = {
    option1: { option2: 10, option3: 8, option4: 16 },
    option2: { option1: 2, option3: 8, option4: 16 },
    option3: { option1: 2, option2: 10, option4: 16 },
    option4: { option1: 2, option2: 10, option3: 8 }
};

// Các thông báo lỗi
const errorMessages = {
    2: "Input không phải cơ số 2.",
    3: "Input không phải cơ số 10.",
    4: "Input không phải cơ số 8.",
    5: "Input không phải cơ số 16."
};

// Bản đồ các mẫu và mã lỗi tương ứng với từng cơ số
const baseMap1 = {
    option1: { pattern: /^[01]+$/, errorCode: 2 },
    option2: { pattern: /^\d+$/, errorCode: 3 },
    option3: { pattern: /^[0-7]+$/, errorCode: 4 },
    option4: { pattern: /^[0-9a-fA-F]+$/, errorCode: 5 }
};

// Hàm kiểm tra tính hợp lệ của input
function isValidInput(input, tuValue) {
    const pattern = baseMap1[tuValue].pattern;
    const errorCode = baseMap1[tuValue].errorCode;

    return pattern.test(input) ? 1 : errorCode;
}

// Hàm chuyển đổi cơ số
function convertBase() {
    const inputValue = inputElement.value;
    const tuValue = tuElement.value;
    const sangValue = sangElement.value;

    const inputValidationResult = isValidInput(inputValue, tuValue);

    // Kiểm tra tính hợp lệ của input
    if (inputValidationResult >= 2 && inputValidationResult <= 5) {
        resultElement.textContent = errorMessages[inputValidationResult];
        return;
    }

    const fromBase = baseMap[tuValue][sangValue];
    const toBase = baseMap[sangValue][tuValue];
    const convertedValue = parseInt(inputValue, toBase).toString(fromBase);

    resultElement.textContent = convertedValue;
}

// Thêm sự kiện click cho nút chuyển đổi
convertButton.addEventListener("click", convertBase);

// Thêm sự kiện change cho phần tử tuElement
tuElement.addEventListener("change", function () {
    const selectedTuValue = tuElement.value;
    const sangOptions = sangElement.querySelectorAll("option");

    // Vô hiệu hóa các tùy chọn trùng với cơ số đang được chọn
    sangOptions.forEach(function (option) {
        option.disabled = (option.value === selectedTuValue);
    });
});