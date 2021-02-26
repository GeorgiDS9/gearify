const bookingCalenderPriceCalculator = () => {
  const endDate = document.getElementById("booking_end_time");
  const startDate = document.getElementById("booking_start_time");
  if (endDate === null) return;

  const dayCounter = (value) => {
    value.addEventListener('input', (event) => {
      const startDate = new Date(document.querySelector("#booking_start_time").value)
      const endDate = new Date(document.querySelector("#booking_end_time").value)
      const price = document.querySelector(".price").innerHTML;

      const days = ((endDate.getTime() - startDate.getTime()) / (1000 * 3600 * 24));
      
      const total = (price * days).toFixed(2);

      if (days > 0 ) document.getElementById("total").innerHTML = `$${price} * ${days} days = Total: $${total}`;
      if (days <= 0 ) document.getElementById("total").innerHTML = `Start date must be before end date, Silly!`;
    });
  }
  dayCounter(endDate);
  dayCounter(startDate);
};

export { bookingCalenderPriceCalculator }
