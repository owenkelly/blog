module PostsHelper

  def nested_posts post
    post.map do |post, subposts|
      render(post) + content_tag(:div, nested_posts(subposts), :class => "nested_posts")
    end.join.html_safe
  end
  
end
