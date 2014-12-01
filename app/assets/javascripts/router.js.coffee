Blog.Router.map ()->
  @resource 'posts', { path: '/' }, ->
    this.route('post');
