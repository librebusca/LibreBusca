document.addEventListener("DOMContentLoaded", function () {

  /* ================================
              ELEMENTS
  ================================= */
  const btn = document.getElementById("btn-config");
  const popup = document.getElementById("config-popup");
  const close = document.getElementById("close-config");
  const overlay = document.getElementById("overlay");
  const darkSwitch = document.getElementById("darkMode");
  const fontSelect = document.getElementById("fontSizeSelect");

  /* ================================
          POP-UP FUNCTIONS
  ================================= */
  function abrirPopup() {
    if (!popup || !overlay) return;
    popup.style.display = "flex";
    overlay.style.display = "block";
    document.body.classList.add("modal-aberto");
  }

  function fecharPopup() {
    if (!popup || !overlay) return;
    popup.style.display = "none";
    overlay.style.display = "none";
    document.body.classList.remove("modal-aberto");
  }

  if (btn) {
    btn.addEventListener("click", function (e) {
      e.stopPropagation();
      abrirPopup();
    });
  }

  if (close) {
    close.addEventListener("click", function (e) {
      e.stopPropagation();
      fecharPopup();
    });
  }

  if (overlay) {
    overlay.addEventListener("click", fecharPopup);
  }

  if (popup) {
    popup.addEventListener("click", function (e) {
      e.stopPropagation();
    });
  }

  /* ================================
          GLOBAL DARK MODE
  ================================= */
  function aplicarTema(tema) {
    document.body.classList.remove("dark", "light");

    if (tema === "dark") {
      document.body.classList.add("dark");
      localStorage.setItem("tema", "dark");
      if (darkSwitch) darkSwitch.checked = true;
    }
    else if (tema === "light") {
      document.body.classList.add("light");
      localStorage.setItem("tema", "light");
      if (darkSwitch) darkSwitch.checked = false;
    }
  }

  // APPLIES WHEN OPENING ANY PAGE
  const temaSalvo = localStorage.getItem("tema");

  if (temaSalvo === "dark") {
    aplicarTema("dark");
  }
  else if (temaSalvo === "light") {
    aplicarTema("light");
  }

  // SWITCH TO SWITCH (IF AVAILABLE ON THE PAGE)
  if (darkSwitch) {
    darkSwitch.addEventListener("change", function () {
      if (darkSwitch.checked) {
        aplicarTema("dark");
      } else {
        aplicarTema("light");
      }
    });
  }

  /* ================================
          FONT SIZE (GLOBAL)
  ================================= */
  function aplicarFonte(tamanho) {
    if (tamanho === "small") {
      document.documentElement.style.setProperty("--font-size-base", "14px");
    }
    else if (tamanho === "large") {
      document.documentElement.style.setProperty("--font-size-base", "18px");
    }
    else {
      document.documentElement.style.setProperty("--font-size-base", "16px"); // normal
    }

    localStorage.setItem("fontSize", tamanho);
  }

  // APPLIES WHEN LOADING
  const fonteSalva = localStorage.getItem("fontSize");

  if (fonteSalva) {
    aplicarFonte(fonteSalva);
    if (fontSelect) fontSelect.value = fonteSalva;
  }

  // REPLACE WITH SELECT (IF EXISTING)
  if (fontSelect) {
    fontSelect.addEventListener("change", function () {
      aplicarFonte(fontSelect.value);
    });
  }

});