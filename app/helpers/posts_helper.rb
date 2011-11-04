module PostsHelper
  def latest_posts
    Post.all.order_by([[:created_at, :desc]])
  end
end
