Blog.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo('posts')
