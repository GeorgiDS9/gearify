// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
import { flatPickr } from '../plugins/flatpickr';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  flatPickr();
  // totalDays();
});

const endDate = document.getElementById("booking_end_time");
const startDate = document.getElementById("booking_start_time");

const dayCounter = (value) => {
  value.addEventListener('input', (event) => {
    const startDate = new Date(document.querySelector("#booking_start_time").value)
    const endDate = new Date(document.querySelector("#booking_end_time").value)
    const price = document.querySelector(".price").innerHTML;

    const days = ((endDate.getTime() - startDate.getTime()) / (1000 * 3600 * 24));
    
    const total = (price * days);

    if (days > 0 ) {
      document.getElementById("error").innerHTML = "";
      document.getElementById("days").innerHTML = days;
      document.getElementById("price").innerHTML = price;
      document.getElementById("total").innerHTML = total;
    } else {
      document.getElementById("error").innerHTML = "Start Date needs to be before End Date Silly!";
      document.getElementById("days").innerHTML = "";
      document.getElementById("price").innerHTML = "";
      document.getElementById("total").innerHTML = "";
    };
  });
}

dayCounter(endDate);
dayCounter(startDate);
