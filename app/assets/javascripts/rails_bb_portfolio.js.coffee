window.RailsBbPortfolio =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new RailsBbPortfolio.Routers.Projects()
    Backbone.history.start()
    console.log "Hello from Backbone!!"

$(document).ready ->
  RailsBbPortfolio.init()

