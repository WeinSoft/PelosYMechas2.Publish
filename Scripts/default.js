function btnPrueba_Click(s, e) {
    alert("Entro en el evento del evento");
    alert("Hago el callback");
    cbpDefault.PerformCallback("prueba");
}
function cbpDefault_EndCallback(s, e) {
    alert("HOLA MUNDO");
}