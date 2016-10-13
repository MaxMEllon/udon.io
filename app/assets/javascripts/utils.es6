const isMethod = (key, obj) => obj !== 'constructor' && _.isFunction(obj[key]);

class Utils {
  static autoBind(arg) {
    const self = arg;
    _.forEach(Object.getOwnPropertyNames(Object.getPrototypeOf(self)), key => {
      if (isMethod(key, self)) {
        self[key] = self[key].bind(self);
      }
    });
  }
}

window.Utils = Utils;
