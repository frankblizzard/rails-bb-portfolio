class RailsBbPortfolio.Routers.Projects extends Backbone.Router
  routes:
    '': 'index'
    'projects': 'index'
    'projects/:id': 'showProject'
    'about': 'about'
    
  initialize: ->
    @projects = new RailsBbPortfolio.Collections.Projects()
    @projects.fetch()
  
  index: -> # Projects are on index
    view = new RailsBbPortfolio.Views.ProjectsIndex(collection: @projects)
    $('#container').html(view.render().el)
    
  about: ->
    console.log "about!"
    
  showProject: (id) ->
    project = @projects.get(id)
    view = new RailsBbPortfolio.Views.Project(model: project)
    $('#container').html(view.render().el)
    console.log "Displaying Project #{id}"
    
