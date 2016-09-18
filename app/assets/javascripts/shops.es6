class Shop {
  constructor(mapDomId, position) {
    Utils.autoBind(this);
    this.mapDomId = mapDomId;
    this.position = position;
    google.maps.event.addDomListener(window, 'load', this.render);
  }

  getPosition() {
    if (!this.map) return null;
    const center = this.map.getCenter();
    return {
      lat: center.lat(),
      lng: center.lng(),
    }
  }

  getMap() {
    return this.map;
  }

  render() {
    this.canvas = document.getElementById(this.mapDomId);
    const center = new google.maps.LatLng(this.position.lat, this.position.lng);
    this.mapOptions = {
      center,
      zoom: 15,
    };
    this.map = new google.maps.Map(this.canvas, this.mapOptions);
  }
}

window.Shop = Shop;

