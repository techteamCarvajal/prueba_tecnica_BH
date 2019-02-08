require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test 'responds to name, email, phone and body' do
  	msg = Message.new
    assert msg.respond_to?(:name), 'does not respond to :name'
    assert msg.respond_to?(:email), 'does not respond to :email'
    assert msg.respond_to?(:phone), 'does not respond to :body'
    assert msg.respond_to?(:body), 'does not respond to :body'
   end
end
