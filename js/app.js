var inputData = document.querySelector("#inputData")
var inputNome = document.querySelector("#inputNome")
var telefone = document.querySelector("#telefone")
var inputEmail = document.querySelector("#inputEmail")


function verificar() {
    event.preventDefault()  
    if (inputData.value == "" || inputNome.value == "" || telefone.value == "" || inputEmail.value == "") {
        swal({
            title: "Campo vazio",
            text: "Preencha corretamente os campos.",
            icon: "warning",
          });
    } else {
        swal({
            title: "Reserva Efetuada!!!",
            text: "Parabens você realizou sua reserva com sucesso.",
            icon: "success",
          });
    }
}