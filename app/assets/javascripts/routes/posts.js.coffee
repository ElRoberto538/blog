Blog.PostsRoute = Ember.Route.extend
  model: ->
    @store.findAll('post')

Blog.PostsShowRoute = Ember.Route.extend
  model: (params)->
    @store.find('post', params.post_id)
