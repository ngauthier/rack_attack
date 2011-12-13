require 'test/test_helper'
class HelloWorldTest < RackAttack::IntegrationTest
  def test_hello
    visit '/'
    assert_see 'Hello Rack!'
  end
end
