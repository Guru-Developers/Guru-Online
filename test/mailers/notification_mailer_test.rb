require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase
  test "proposal" do
    mail = NotificationMailer.proposal
    assert_equal "Proposal", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "application" do
    mail = NotificationMailer.application
    assert_equal "Application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "message" do
    mail = NotificationMailer.message
    assert_equal "Message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
