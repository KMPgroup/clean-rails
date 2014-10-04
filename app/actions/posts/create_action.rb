module Posts
  class CreateAction
    def run(params)
      # TODO: Spaghetti code - Needs some work
      post_entity = PostEntity.new(params)
      if post_entity.valid?
        post_entity.id = Post.create(post_entity.to_h).id
        @responder.success(post_entity)
      else
        @responder.error(post_entity)
      end
    end
  end
end