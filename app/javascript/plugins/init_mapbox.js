import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [ 1.295489, 52.626321 ],
      zoom: 14
    });
    new mapboxgl.Marker()
      .setLngLat([ 1.295489, 52.626321 ])
      .addTo(map);
  }
};

export { initMapbox };
