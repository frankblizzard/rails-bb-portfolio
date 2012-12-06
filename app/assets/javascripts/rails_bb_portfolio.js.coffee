window.RailsBbPortfolio =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new RailsBbPortfolio.Routers.Projects()
    Backbone.history.start()

$(document).ready ->
  RailsBbPortfolio.init()
