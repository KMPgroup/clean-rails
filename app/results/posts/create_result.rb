module Posts
  class CreateResult < AbstractResult

    def success(post)
      redirect_to post_path(post), notice: 'Post updated successfuly'
    end

    def error(post)
      assign_instance_var(:@post, post)
      render :new
    end

  end
end
