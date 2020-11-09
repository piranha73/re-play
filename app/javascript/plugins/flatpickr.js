import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  flatpickr("#start_date", {
        altInput: true,
        minDate: "today",
        enableTime: true,
        plugins: [new rangePlugin({ input: "#end_date"})]
      });

});
