const modalButtons = document.querySelectorAll(".modal-button");
const modalStyle = document.createElement("style");
const modal = `
 #overlay {
    width: 100%;
    height: 100vh;
    z-index: 99999 !important;
    background: rgba(0, 0, 0, 0.4);
    display: flex;
    justify-content: center;
    align-items: center;
    position: fixed;
    top: 0;
    left: 0;
 }

 .modal, .edit-modal {
    width: 30%;
    height: auto;
    padding: 20px;
    background: #fafafa;
    border-radius: 25px;
    z-index: 9999;
 }

 .form-items {
    width: 100%;
 }

 .form-items:first-of-type {
    margin-right: 25px;
 }

 .form-items #publication-date,
 .form-items #acquisition-date {
    width: 100%;
    height: 35px;
    border-radius: 5px;
    border: 1px solid #E4E4E4;
    font: var(--darkGrayCardSub);
    margin: 3px 0 5px 0;
    padding-left: 3px;
    outline: transparent;
 }

 .modal h2 {
    font: 900 1.2em "Cousine", sans-serif;
    color: var(--accentColor);
    margin: 25px 0 5px 15px;
 }

 .modal label {
    display: block;
    font: 100 0.7em "Cousine", sans-serif;
    color: var(--formFieldTextColor);
 }

 #staff-image-upload,
 #book-cover-upload {
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

 .close {
    float: right;
    display: block;
    font: 100 1.5em "Cousine", sans-serif;
    color: var(--formFieldTextColor);
    text-decoration: none;
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
