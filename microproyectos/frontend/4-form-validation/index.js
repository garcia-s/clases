const form = document.getElementById("form1");
const input = document.querySelectorAll('#form1 input');


const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
    nombre: /^[a-zA-ZÀ-ÿ\s]{2,12}$/, // Letras y espacios, pueden llevar acentos.
    password: /^.{8,16}$/, // 8 a 16 digitos.
    correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    telefono: /^\d{7,14}$/ // 7 a 14 numeros.
}


const validarFormulario = (e) => {
    switch (e.target.name) {
        case "nombre":

        if(expresiones.nombre.test(e.target.value)){
            
        } else {
            document.getElementById("name").classList.add("formulario__grupo-incorrecto")
        }
    
        break;
        case "correo":
    
        break;
        case "telefono":
    
        break;
        case "edad":
    
        break;   
    }
}

input.forEach((input) => {
    input.addEventListener('keyup', validarFormulario);
    input.addEventListener('blur', validarFormulario);

})

form.addEventListener('submit', (e) => {

    e.preventDefault();

})