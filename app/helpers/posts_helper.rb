module PostsHelper
  def render_post_content(post)
    truncate(simple_format(post.content), escape: false, length: 100)
  end
end
