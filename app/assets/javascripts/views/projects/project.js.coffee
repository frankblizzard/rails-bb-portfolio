class RailsBbPortfolio.Views.Project extends Backbone.View

  template: JST['projects/project']
  
  className: 'project'
    
  render: ->
    $(@el).html(@template(model: @model))
    this