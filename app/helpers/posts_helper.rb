module PostsHelper
  def title_form
    @post.new_record? ? "New post" : "Edit post"
  end
end
