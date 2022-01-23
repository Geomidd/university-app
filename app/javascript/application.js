// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";

import "@materializecss/materialize";

// Setup Materialize JS
document.addEventListener("DOMContentLoaded", function () {
  M.AutoInit();
});
