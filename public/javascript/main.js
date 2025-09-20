const modalButtons = document.querySelectorAll(".modal-button");
const modalStyle = document.createElement("style");
const modal = `
  #overlay {
      width: 100%;
      height: 100vh;
      z-index: 99999 !important;
      background: rgba(0, 0, 0, 0.4);
      position: fixed;
      top: 0;
      left: 0;
  }

  .modal, .edit-modal {
      width: 30%;
      height: 420px;
      padding: 20px;
      background: #fafafa;
      border-radius: 25px;
      z-index: 9999;
      margin: 10% auto 0 auto;
  }

  #confirm-modal {
     width: 25%;
     height: 150px;
     padding: 20px;
     background: #fafafa;
     border-radius: 25px;
     z-index: 9999;
     margin: 10% auto 0 auto;

  }
  `;
modalStyle.textContent = modal;
modalButtons.forEach((modalButton) => {
  modalButton.addEventListener("click", (e) => {
    e.preventDefault();
    document.body.appendChild(modalStyle);
  });
});
