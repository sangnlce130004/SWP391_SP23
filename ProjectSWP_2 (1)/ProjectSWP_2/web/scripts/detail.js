//Detail script

const allHoverImages = document.querySelectorAll(".hover-container div img");
const imgContainer = document.querySelector(".img-container");

window.addEventListener("DOMContentLoaded", () => {
  allHoverImages[0].parentElement.classList.add("activeImageDetail");
});

allHoverImages.forEach((image) => {
  image.addEventListener("mouseover", () => {
    imgContainer.querySelector("img").src = image.src;
    resetActiveImg();
    image.parentElement.classList.add("activeImageDetail");
  });
});

function resetActiveImg() {
  allHoverImages.forEach((img) => {
    img.parentElement.classList.remove("activeImageDetail");
  });
}
