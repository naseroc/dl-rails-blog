module PostsHelper
  def excerpt(post)
    truncate(post.content, length: 400, separator: ' ') do
    end
  end
end
