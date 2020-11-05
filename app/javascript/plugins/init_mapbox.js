import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');
const tournament = document.querySelectorAll('.tournament');

console.log(tournament[0]);
console.log(parseFloat(tournament[0].dataset.longitude));

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [parseFloat(tournament[0].dataset.longitude),parseFloat(tournament[0].dataset.latitude)],
    zoom: 15.5
  });
  map.addControl(new mapboxgl.NavigationControl());
};








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

const initMapbox = () => {
  if (mapElement) {
     buildMap();

    // addMarkersToMap(map, markers);
    // fitMapToMarkers(map, markers);

    window.onscroll = function () {
        var chapterNames = Object.keys(chapters);
        for (var i = 0; i < chapterNames.length; i++) {
            var chapterName = chapterNames[i];
            if (isElementOnScreen(chapterName)) {
                setActiveChapter(chapterName);
                break;
            }
        }
    };

    var activeChapterName = 'Nba';
    function setActiveChapter(chapterName) {
        if (chapterName === activeChapterName) return;

        map.flyTo(chapters[chapterName]);

        document.getElementById(chapterName).setAttribute('class', 'active');
        document.getElementById(activeChapterName).setAttribute('class', '');

        activeChapterName = chapterName;
    }

    function isElementOnScreen(id) {
        var element = document.getElementById(id);
        var bounds = element.getBoundingClientRect();
        return bounds.top < window.innerHeight && bounds.bottom > 0;
    }

  }
};

export { initMapbox };
// FLy to
 // var map = new mapboxgl.Map({
 //        container: 'map',
 //        style: 'mapbox://styles/mapbox/streets-v11',
 //        center: [-0.15591514, 51.51830379],
 //        zoom: 15.5,
 //        bearing: 27,
 //        pitch: 45
 //    });

// const tournamentCards = document.querySelectorAll('tournament') // this is an array with all my tournaments cards
// const tournaments = {}
// const ids = []
// tournamentCards.forEach(tournament => {
//   const key = tournament.dataset.key
//   ids.push(key)
//   const center = [tournament.data, tournament.data] // cast to int
//   tournament[`${key}`] = {
//     bearing: 45,
//     zoom: 10,
//     center: center
//   }
// });

//   ids.forEach(tournament => {
//     if (isElementOnScreen(tournament.key)) {
//       setActiveTournament(tournament.key)
//     }
// });


// let activeTournamentName = ids[0]
// function setActiveTournament(tournamentName) {
//     if (tournamentName === activeTournamentName) return;

//       map.flyTo(chapters[chapterName]);

//       document.getElementById(tournamentName).setAttribute('class', 'active');
//       document.getElementById(activeTournamentName).setAttribute('class', '');

//       activeTournamemntName = tournamentName;
//     }

// function isElementOnScreen(id) {
//   var element = document.getElementById(id);
//   console.log(element);
//   var bounds = element.getBoundingClientRect();
//   return bounds.top < window.innerHeight && bounds.bottom > 0;
//     }


























    // var chapters = {
    //     'baker': {
    //         bearing: 27,
    //         center: [-0.15591514, 51.51830379],
    //         zoom: 15.5,
    //         pitch: 20
    //     },
    //     'aldgate': {
    //         duration: 6000,
    //         center: [-0.07571203, 51.51424049],
    //         bearing: 150,
    //         zoom: 15,
    //         pitch: 0
    //     },
    //     'london-bridge': {
    //         bearing: 90,
    //         center: [-0.08533793, 51.50438536],
    //         zoom: 13,
    //         speed: 0.6,
    //         pitch: 40
    //     },
    //     'woolwich': {
    //         bearing: 90,
    //         center: [0.05991101, 51.48752939],
    //         zoom: 12.3
    //     },
    //     'gloucester': {
    //         bearing: 45,
    //         center: [-0.18335806, 51.49439521],
    //         zoom: 15.3,
    //         pitch: 20,
    //         speed: 0.5
    //     },
    //     'caulfield-gardens': {
    //         bearing: 180,
    //         center: [-0.19684993, 51.5033856],
    //         zoom: 12.3
    //     },
    //     'telegraph': {
    //         bearing: 90,
    //         center: [-0.10669358, 51.51433123],
    //         zoom: 17.3,
    //         pitch: 40
    //     },
    //     'charing-cross': {
    //         bearing: 90,
    //         center: [-0.12416858, 51.50779757],
    //         zoom: 14.3,
    //         pitch: 20
    //     }
    // };

    // On every scroll event, check which element is on screen
    // window.onscroll = function () {
    //     var chapterNames = Object.keys(chapters);
    //     for (var i = 0; i < chapterNames.length; i++) {
    //         var chapterName = chapterNames[i];
    //         if (isElementOnScreen(chapterName)) {
    //             setActiveChapter(chapterName);
    //             break;
    //         }
    //     }
    // };

    // var activeChapterName = 'baker';
    // function setActiveChapter(chapterName) {
    //     if (chapterName === activeChapterName) return;

    //     map.flyTo(chapters[chapterName]);

    //     document.getElementById(chapterName).setAttribute('class', 'active');
    //     document.getElementById(activeChapterName).setAttribute('class', '');

    //     activeChapterName = chapterName;
    // }

    // function isElementOnScreen(id) {
    //     var element = document.getElementById(id);
    //     var bounds = element.getBoundingClientRect();
    //     return bounds.top < window.innerHeight && bounds.bottom > 0;
    // }


