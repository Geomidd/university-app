// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";

import "jquery";
import "@materializecss/materialize";

// Setup Materialize JS
document.addEventListener("turbo:load", function () {
  M.AutoInit();
  // TODO: Add fadeout support
});
