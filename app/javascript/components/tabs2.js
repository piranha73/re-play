const tabToggle = () => {
  const button = document.querySelector('.tab-toggle');
  button.addEventListener('click', () => {
    const tab = document.getElementById("map");
    if (tab.style.display === "none") {
      tab.style.display = "block";
    } else {
      tab.style.display = "none";
    }
  })
}

export { tabToggle }
