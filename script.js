function convert() {
    let cm = document.getElementById("cmInput").value;
    let inches = cm / 2.54;
    document.getElementById("result").innerText = `${cm} cm = ${inches.toFixed(2)} inches`;
}
