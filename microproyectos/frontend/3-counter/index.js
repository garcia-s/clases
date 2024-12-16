let contador = 0;

let valor = document.getElementById("valor");
let incremento = document.getElementById("incrementar");
let decremento = document.getElementById("drecementar");

incremento.addEventListener('click', () => {

    contador++;
    valor.textContent = contador; 
});

decremento.addEventListener('click', () =>{
    if(contador > 0){
        contador--;
        valor.textContent = contador;
    }
});
