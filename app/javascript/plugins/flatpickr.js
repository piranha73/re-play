import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  flatpickr("#flatpickr_start", {
        altInput: true,
        minDate: "today",
        enableTime: true,
        plugins: [new rangePlugin({ input: "#flatpickr_end"})]
      });

});
