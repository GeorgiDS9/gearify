import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'

flatpickr(".datepicker", {
  altInput: true
});

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")