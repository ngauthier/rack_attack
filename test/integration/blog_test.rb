require 'test_helper'
class Blurg::IndexTest < Blurg::IntegrationTest
  include Blurg

  def test_list_posts
    Collection::Posts.create([
      {title: 'Post 1'},
      {title: 'Post 2'},
      {title: 'Post 3'}
    ])
    visit '/'
    assert_see 'Blurg'
    assert_see 'Post 1'
    assert_see 'Post 2'
    assert_see 'Post 3'
  end
end
