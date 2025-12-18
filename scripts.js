// CS07 - formulario
const form = document.getElementById("form-consulta");
const msg = document.getElementById("msg-form");

if (form) {
  form.addEventListener("submit", function (e) {
    e.preventDefault();
    msg.textContent = "✅ Consulta enviada correctamente.";
    form.reset();
  });
}

// CS08 - cambio de estilo (GLOBAL)
const btnTema = document.querySelector(".btn-tema");

if (btnTema) {
  btnTema.addEventListener("click", function () {
    document.body.classList.toggle("tema-claro");
  });
}
