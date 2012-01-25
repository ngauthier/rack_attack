require 'test_helper'
class Blurg::IndexTest < Blurg::IntegrationTest
  def test_list_posts
    [ {'title' => 'Post 1'},
      {'title' => 'Post 2'},
      {'title' => 'Post 3'}
    ].each{|post| Blurg::Collection::Posts.create(post)}
    visit '/'
    assert_see 'Blurg'
    assert_see 'Post 1'
    assert_see 'Post 2'
    assert_see 'Post 3'
  end

  def test_create_a_post
    visit '/'
    fill_in :title, :with => 'Foo post'
    fill_in :body,  :with => 'This is the contents of the foo post'
    click_button 'Post'

    assert_see 'Post posted'
    assert_see 'Blurg'
    assert_see 'Foo post'
    assert_see 'This is the contents of the foo post'
  end
end
