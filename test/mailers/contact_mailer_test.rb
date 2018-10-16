require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "sendmail" do
    mail = ContactMailer.sendmail
    assert_equal "Sendmail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
