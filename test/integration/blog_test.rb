require 'test_helper'
class Blurg::IndexTest < Blurg::IntegrationTest
  include Blurg

  def test_list_posts
    Post.create(title: 'Post 1')
    Post.create(title: 'Post 2')
    Post.create(title: 'Post 3')
    visit '/'
    assert_see 'Post 1'
    assert_see 'Post 2'
    assert_see 'Post 3'
  end
end
