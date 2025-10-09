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

  .modal input[type='file']::placeholder {
    text-indent: -100000px;
  }



  .modal h2 {
    font: 900 1.2em "Cousine", sans-serif;
    color: var(--accentColor);
    margin: 25px 0 5px 15px;
  }

  .modal label {
    display: block;
    font: 100 0.5em "Cousine", sans-serif;
    color: var(--formFieldTextColor);
    margin: 5px 0 25px 0;
    border: 1px solid #E4E4E4;
    border-radius: 5px;
    width: 100%;
    height: 35px;
    padding: 3px 0 0 5px;
    background: #fff;
  }

  .confirm-modal {
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
