Blog.PostsIndexController = Ember.ArrayController.extend
  actions:
    createPost: ->
      formData = new FormData($('#new-post')[0])
      formData.append('name', @get('newName'))
      formData.append('content', @get('newContent'))

      response = $.ajax
        data: formData
        cache: false
        processData: false
        contentType: false
        type: 'POST'
        url: '/api/v1/posts.json'
      response.done (data) ->
        alert 'Successully created post'
      response.fail (data) ->
        alert 'Failed to create post'

    deletePost: (post)->
      post.destroyRecord().then ->
        alert('Successfully removed post')
