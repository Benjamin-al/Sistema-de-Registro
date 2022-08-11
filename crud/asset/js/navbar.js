let btn = document.querySelector("#btn")
let sidebar = document.querySelector(".sidebar")
let body = document.querySelector("body")

btn.onclick = function () {
    body.classList.toggle("body_move")
    sidebar.classList.toggle("active")
}

/*cuando la resolucion sea mayor a 760 se desplegara el menu
en caso contrario se minimizara*/
window.addEventListener("resize", function () {
    if (window.innerWidth > 760) {
        body.classList.add("body_move")
        sidebar.classList.add("active")
    } else if (window.innerWidth < 760) {
        body.classList.remove("body_move")
        sidebar.classList.remove("active")
    }
})