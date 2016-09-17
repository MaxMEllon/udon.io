class Utils {
  static autoBind(self) {
    _.forEach(Object.getOwnPropertyNames(self.__proto__), key => {
      if (key !== 'constructor' && _.isFunction(self[key])) {
        self[key] = self[key].bind(self);
      }
    });
  }
}

window.Utils = Utils;
