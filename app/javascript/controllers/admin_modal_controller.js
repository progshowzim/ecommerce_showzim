import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails";

// Connects to data-controller="admin-modal"
export default class extends Controller {
  connect() {
    console.log("iniciando o controller admim modal")
    this.element.setAttribute("data-action", "admin-modal#click_modal")
  }

  click_modal(e) {
    console.log(e)
    e.preventDefault()
    this.url = this.element.getAttribute("href")

    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
    .then(response => response.text())
    .then(html => Turbo.renderStreamMessage(html))
  }

}
