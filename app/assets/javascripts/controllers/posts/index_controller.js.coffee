Blog.PostsIndexController = Ember.ArrayController.extend
  actions:
    createPost: ->
      formData = new FormData($('#new-post')[0])
      formData.append('name', @get('newName'))
      formData.append('content', @get('newContent'))
      # formData.append('image', @get('newImage'))

      response = $.ajax
        data: formData
        cache: false
        processData: false
        contentType: false
        type: 'POST'
        url: '/api/v1/posts.json'
      response.done (data) ->
        alert 'done'
      response.fail (data) ->
        alert 'failed'

      # post = @store.createRecord 'post',
      #   name: @get('newName')
      #   content: @get('newContent')
      #   image: @get('newImage')
      #
      #
      # @set('newName', '')
      # @set('newContent', '')
      # @set('newImage', '')
      #
      # post.save()
