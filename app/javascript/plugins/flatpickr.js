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

const totalDays = () => {
  const endDate = document.querySelector(".end_date").addEventListener('input', (event) => {
    let startDate = new Date(document.querySelector("#booking_start_time").value)
    let endDate = new Date(event.target.value);
    const days = ((endDate.getTime() - startDate.getTime()) / (1000 * 3600 * 24));

    document.querySelector("#total").innerHTML(days);
  });
};

export {flatPickr}
export {totalDays}
