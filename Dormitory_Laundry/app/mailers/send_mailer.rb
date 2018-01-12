# coding: utf-8
class SendMailer < ApplicationMailer
  default from: 'ysphost@gmail.com'

  def notification(user) # 通知メール送信
    @user = user # current_user取ってくる
    # app/views/send_mailer/notification.html.erb をメールの本文として送信
    mail to: @user.email,
         subject: "ランドリー利用完了"
  end
end
