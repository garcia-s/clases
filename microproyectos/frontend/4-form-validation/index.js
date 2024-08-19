let form = document.getElementById("form_name");
let data = new FormData(form);
for (let [username,value] of data){
    console.log("Hola")
}