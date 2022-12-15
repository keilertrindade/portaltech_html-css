let nome = prompt("Qual o seu nome?")
let inputNome = document.getElementById('nome')
inputNome.value = nome;
inputNome.disabled = true;

let campoData = document.querySelector('#data')
let date = new Date()
campoData.value = date.getFullYear().toString() + '-' + (date.getMonth() + 1).toString() +
'-' + date.getDate().toString();
campoData.disabled = true;


let comentario = 'Deixe seu comentário aqui '+ inputNome.value+'!';
console.log(comentario)

const deixeComentario = document.getElementById('deixe-comentario');
deixeComentario.innerText = comentario;









/*let usuario = {
    id: 5,
    username: "João",
    senha: "abc123",
    admin: true
}
console.log(usuario.id)*/

