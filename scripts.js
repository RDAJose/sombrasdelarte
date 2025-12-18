// Script del formulario
const form = document.getElementById("form-consulta");
const msg = document.getElementById("msg-form");

form.addEventListener("submit", function (e) {
  e.preventDefault();
  msg.textContent = "✅ Consulta enviada correctamente.";
  form.reset();
});

// Cambio de estilos
const btnTema = document.getElementById("btn-tema");

btnTema.addEventListener("click", function () {
  document.body.classList.toggle("tema-claro");
});
