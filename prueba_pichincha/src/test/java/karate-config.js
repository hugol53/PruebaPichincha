function fn() {
  var env = karate.env || 'local';
  var config = {
    baseUrl: 'http://localhost:8080'
  };
  // URLs para todos los microservicios (nombrados con formato port_nombre_microservicio)
  config.port_automatizacion = 'http://localhost:8081/automatizacion';
  // Configuración específica por entorno
  if (env == 'dev') {
    config.baseUrl = 'https://api-dev.empresa.com';
    config.port_automatizacion = 'https://api-dev.empresa.com/automatizacion';
  } else if (env == 'qa') {
    config.baseUrl = 'https://api-qa.empresa.com';
    config.port_automatizacion = 'https://api-qa.empresa.com/automatizacion';
  }
  return config;
}
