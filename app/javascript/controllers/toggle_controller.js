import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "button"]

  connect() {
    console.log("✅ Contrôleur Stimulus 'toggle' connecté")
  }

  toggle() {
    this.contentTarget.hidden = !this.contentTarget.hidden

  }
}
