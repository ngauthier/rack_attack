require 'test/test_helper'
class HelloWorldSpec < RackAttack::IntegrationSpec
  it 'should say hello' do
    visit '/'
    assert_see 'Hello Rack!'
  end
end
