# coding: utf-8
class UserMailer < ApplicationMailer
 default from: 'ysphost@gmail.com'

  def email(user)
    @user = user
    mail to: @user.email,
         subject: '利用完了'
  end
  
end
