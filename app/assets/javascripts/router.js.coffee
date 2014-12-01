Blog.Router.map ->
  @resource 'posts', ->
    @route('show', { path: ':post_id' })
