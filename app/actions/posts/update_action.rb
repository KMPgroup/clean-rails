module Posts
  class UpdateAction < AbstractAction
    def run(params)
      # TODO: Spaghetti code - Needs some work
      post = Post.find(params[:id])
      post_entity = PostEntity.new(post.attributes.merge(params[:post]))
      if post_entity.valid?
        post.update params[:post]
        @responder.success(post_entity)
      else
        @responder.error(post_entity)
      end
    end
  end
end