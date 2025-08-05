import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      dateFormat: "Y-m-d",
      altInput: true,
      altFormat: "d/m/Y",
      allowInput: true
    })
  }
}
