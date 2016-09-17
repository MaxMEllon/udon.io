class Shop {
  constructor(mapDomId) {
    Utils.autoBind(this);
    this.mapDomId = mapDomId;
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
    this.mapOptions = {
      zoom: 15,
      center: new google.maps.LatLng(35.792621, 139.806513),
    };
    this.map = new google.maps.Map(this.canvas, this.mapOptions);
  }
}

window.Shop = Shop;

