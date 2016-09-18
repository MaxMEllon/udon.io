class Shop {
  constructor(mapDomId, position) {
    Utils.autoBind(this);
    this.position = position;
    _.delay(() => {
      this.canvas = document.getElementById(mapDomId);
      if (!_.isNull(this.canvas)) this.render();
    }, 100);
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
    const center = new google.maps.LatLng(this.position.lat, this.position.lng);
    this.mapOptions = {
      center,
      zoom: 6,
    };
    this.map = new google.maps.Map(this.canvas, this.mapOptions);
  }
}

