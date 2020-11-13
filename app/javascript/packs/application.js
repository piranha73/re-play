// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery.scrollto');





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
//
import "../plugins/flatpickr";
// External imports
import "bootstrap";
import $ from 'jquery';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
import { tabsFunction } from "../components/tabs";
import { tabToggle } from "../components/tabs2";
import { moreThing } from "../components/more";






document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initAutocomplete();

  const logos = document.querySelectorAll(".image-logos");

  logos.forEach((element) => {
    element.addEventListener("click", (event) => {
     element.classList.toggle("logo-active");
     let idImage = event.currentTarget.id
     var input = document.createElement("input");
     input.setAttribute("type", "hidden");
     input.setAttribute("name", "image");
     input.setAttribute("value", idImage);
     document.getElementById("new_team").appendChild(input);

   })
  });



  const hiddenInput = $("#booking_team_id")
  const hiddenButton = $("#hidden-btn")

  if ((hiddenInput) && (hiddenButton)) {
    hiddenButton.click( () =>{
      console.log("btn clicked")
      hiddenInput.fadeIn(1000);

    })


}

  if (document.getElementById('map')) {
    initMapbox();
  }

  if (document.querySelector(".more")) {
    moreThing();
  }
  // if (document.getElementById("map")) {
  //   tabToggle();
  // }

  if (document.querySelectorAll('[data-tab-target]')) {
   tabsFunction();
 }
});








