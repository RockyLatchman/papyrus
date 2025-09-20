const popupButton = document.querySelector("#popup");
const popupStyle = document.createElement("style");
const popup = `
  #overlay {
      width: 100%;
      height: 100vh;
      z-index: 99999 !important;
      background: rgba(0, 0, 0, 0.4);
      position: fixed;
      top: 0;
      left: 0;
  }

  .popup {
      width: 30%;
      height: 420px;
      padding: 20px;
      background: #fafafa;
      border-radius: 25px;
      z-index: 9999;
      margin: 10% auto 0 auto;
  }
  `;
popupStyle.textContent = popup;
popupButton.addEventListener("click", (e) => {
  e.preventDefault();
  document.body.appendChild(popupStyle);
});
