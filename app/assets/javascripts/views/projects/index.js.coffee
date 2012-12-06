class RailsBbPortfolio.Views.ProjectsIndex extends Backbone.View

  template: JST['projects/index']
  
  initialize: ->
    @collection.on('reset', @render, this)
    this
  
  render: ->
    $(@el).html(@template(projects: @collection))
    this
