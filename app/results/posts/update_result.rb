module Posts
  class UpdateResult < AbstractResult

    def success(post)
      redirect_to post_path(post), notice: 'Post created successfuly'
    end

    def error(post)
      assign_instance_var(:@post, post)
      render :edit
    end

  end
end
