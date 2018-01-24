require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  test "report" do
    mail = ReportMailer.report
    assert_equal "Report", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
