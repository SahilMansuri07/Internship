 let display = document.getElementById("display");

function appendValue(value) {

  display.value += value;
}

function clearDisplay() {
  display.value = "0";
}


function calculate() {
  try {
    display.value = eval(display.value);
  } catch {
    display.value = "";
  }
}
