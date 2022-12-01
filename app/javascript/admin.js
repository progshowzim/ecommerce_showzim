// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "./jquery"
import * as bootstrap from "bootstrap"
window.bootstrap = bootstrap
// Turbo.session.drive = false
import "./sbadmin/sbadmin.js"
import "./sbadmin/jquery-easing/jquery.easing.min.js"
