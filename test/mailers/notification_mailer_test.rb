require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase

  test "proposal" do
    mail = NotificationMailer.proposal
=begin
    assert_equal "Proposal", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
=end
  end

  test "application" do
    mail = NotificationMailer.application
=begin
    assert_equal "Application", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
=end
  end

  test "contact" do
    mail = NotificationMailer.contact
=begin
    assert_equal "Message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
=end
  end

end
