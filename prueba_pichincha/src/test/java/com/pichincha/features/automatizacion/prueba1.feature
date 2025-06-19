@REQ_HU-RET-444 @HU444 @prueba1 @automatizacion @Agente2 @E2 @iniciativa_automatizacion
Feature: HU-RET-444 Escenarios para prueba1 (microservicio automatizacion)

Background:
* url 'https://dummyjson.com'
# path 'products' # Ajusta la ruta real del endpoint
* def generarHeaders =
"""
function() {
  return {
    "Content-Type": "application/json"
  };
}
"""
* def headers = generarHeaders()
* headers headers

@id:1 @prueba1 @solicitudExitosa200
Scenario: T-API-HU-RET-444-CA01-prueba1 exitosa 200 - karate
  Given path 'products'
#* def jsonData = read('classpath:data/automatizacion/prueba1_request.json')
#And request jsonData
When method GET
Then status 200
#And match response == read('classpath:data/automatizacion/prueba1_response.json')
  #And match response.result == 'ok'

  @id:2 @prueba2 @solicitudExitosa200
  Scenario: T-API-HU-RET-445-CA01-prueba2 exitosa 200 - karate
    Given path 'products',3
    When method GET
    Then status 200