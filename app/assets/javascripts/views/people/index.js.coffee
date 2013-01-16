class RailsBbPortfolio.Views.PeopleIndex extends Backbone.View

  template: JST['people/index']

  render: ->
  $(@el).html(@template())
  @collection.each(@appendProject)
  
  this
