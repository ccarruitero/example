require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  setup do
    @message = Message.new
  end

  test "not should save message without values" do
    assert !@message.save
  end

  test "not should save an empty" do
    assert false # egg
  end

  test "recipient_number should add '+' to number" do
    # and maybe validate country too, but is not necessary for this example
    assert_equal @message.recipient_number(242124), '+242124'
  end

  test "recipient_number should receive only a number" do
    assert_equal @message.recipient_number('sghasogasg'), nil
  end

end
