const menuHambButton = document.querySelector(".menu-hamb-button")
const navLinks = document.querySelector(".nav-links")

menuHambButton.addEventListener("click", () => {
    navLinks.classList.toggle("show")
})