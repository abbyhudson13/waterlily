import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { 
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [ 1.295430, 52.626494 ],
      zoom: 14
    });
    new mapboxgl.Marker()
      .setLngLat([ 1.295430, 52.626494 ])
      .addTo(map);
  }
};

export { initMapbox };
