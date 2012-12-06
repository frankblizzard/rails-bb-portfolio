class RailsBbPortfolio.Views.ProjectsIndex extends Backbone.View

  template: JST['projects/index']
  
  initialize: ->
    @collection.on('reset', @render, this)
    this
  
  render: ->
    $(@el).html(@template())
    @collection.each(@appendProject)
    
    this

  appendProject: (project) ->
    view = new RailsBbPortfolio.Views.Project(model: project)
    $('#projects').append(view.render().el)
    this