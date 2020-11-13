import mapboxgl from 'mapbox-gl';

const buildMap = () => {
  const mapElement = document.getElementById('map');
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });

};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap();
     map.addControl(new mapboxgl.NavigationControl());
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };

// fly on location whenscr

// const tournament = document.querySelectorAll('.tournament');
// var map;

// const buildMap = () => {
//   mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//   map = new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v11',
//     center: [parseFloat(tournament[0].dataset.longitude),parseFloat(tournament[0].dataset.latitude)],
//     zoom: 15.5
//   });
//   map.addControl(new mapboxgl.NavigationControl());
// };


// const addMarkersToMap = (map, markers) => {
//   markers.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//   });
// };

// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
// };

// const initMapbox = () => {
//   if (mapElement) {
//     buildMap();
//     const markers = JSON.parse(mapElement.dataset.markers);
//     addMarkersToMap(map, markers);
//     fitMapToMarkers(map, markers);

// const tournaments = {}
// const ids = []
// tournament.forEach(tournament => {
//   const key = tournament.id
//   ids.push(key)
//   const center = [parseFloat(tournament.dataset.longitude),parseFloat(tournament.dataset.latitude)]
//   tournaments[`${key}`] = {
//     bearing: 45,
//     zoom: 15.5,
//     center: center,
//     pitch: 20,
//   }
// });


// window.onscroll = function () {
//   var tournamentNames = Object.keys(tournaments);
//   for (var i = 0; i < tournamentNames.length; i++) {
//     var tournamentName = tournamentNames[i];
//     if (isElementOnScreen(tournamentName)) {
//         setActiveTournament(tournamentName);
//         break;
//       }
//     }
//   };

// var activeTournamentName = ids[0];
// function setActiveTournament(tournamentName) {
//   if (tournamentName === activeTournamentName) return;
//   map.flyTo(tournaments[tournamentName]);

//   document.getElementById(tournamentName).setAttribute('class', 'active');
//   document.getElementById(activeTournamentName).setAttribute('class', '');

//   activeTournamentName = tournamentName;
// }

// function isElementOnScreen(id) {
//   var element = document.getElementById(id);
//   var bounds = element.getBoundingClientRect();
//   return bounds.top < window.innerHeight && bounds.bottom > 0;
//     }
//   }
// };

// export { initMapbox };

