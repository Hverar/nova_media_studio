document.addEventListener("DOMContentLoaded", function () {
  const modal = document.getElementById("expertModal");
  const openBtns = document.querySelectorAll("#openModalBtn, #openModalBtn2");
  const closeBtn = document.getElementById("closeModalBtn");

  openBtns.forEach(btn => {
    btn.addEventListener("click", function (e) {
      e.preventDefault();
      modal.classList.remove("hidden");
    });
  });

  closeBtn.addEventListener("click", function () {
    modal.classList.add("hidden");
  });

  window.addEventListener("click", function (e) {
    if (e.target === modal) {
      modal.classList.add("hidden");
    }
  });
});
