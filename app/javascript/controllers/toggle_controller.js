import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["content", "button"]

  connect() {
    console.log("je suis connecté au controleur toggle");
  }

  toggle() {
    this.contentTarget.hidden = !this.contentTarget.hidden
  }
}
