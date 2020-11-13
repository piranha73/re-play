const moreThing = () => {
  document.querySelector(".more").addEventListener("click", () => {
  const divs = document.querySelectorAll(".off");
  divs.forEach(div => {
    div.classList.remove("off");
    div.classList.add("active");
  })
})
}

export { moreThing };
