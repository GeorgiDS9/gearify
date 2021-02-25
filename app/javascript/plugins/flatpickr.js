import flatpickr from 'flatpickr'
import 'flatpickr/dist/flatpickr.min.css'


const flatPickr = () => {
  const widget = document.getElementById("widget");
  
  if (widget) {
    const unavailableDates = JSON.parse(widget.dataset.unavailable);

    flatpickr(".datepicker", {
      disable: unavailableDates,
      altInput: true
    });
  }
};

export {flatPickr}
