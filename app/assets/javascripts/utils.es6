class Utils {
  static autoBind(arg) {
    _.forEach(Object.getOwnPropertyNames(Object.getPrototypeOf(arg)), key => {
      if (key !== 'constructor' && _.isFunction(arg[key])) {
        arg[key] = arg[key].bind(arg);
      }
    });
  }
}

window.Utils = Utils;
