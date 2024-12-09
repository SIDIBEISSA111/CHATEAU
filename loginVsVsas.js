const container = document.getElementById('container');
const register1 = document.getElementById('register');
const login1 = document.getElementById('login');

register1.addEventListener('click', ()=>{
    container.classList.add("active");
});

login1.addEventListener('click', ()=>{
    container.classList.remove("active");
});