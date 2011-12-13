require 'test/test_helper'

class BlogSpec < RackAttack::IntegrationSpec
  it 'should list the posts' do
    visit '/'
    assert_see 'Post 1'
    assert_see 'Post 2'
    assert_see 'Post 3'
  end
end
