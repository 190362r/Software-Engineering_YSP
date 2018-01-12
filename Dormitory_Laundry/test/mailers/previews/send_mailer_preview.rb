# Preview all emails at http://localhost:3000/rails/mailers/send_mailer
class SendMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/send_mailer/notification
  def notification
    SendMailer.notification
  end

end
