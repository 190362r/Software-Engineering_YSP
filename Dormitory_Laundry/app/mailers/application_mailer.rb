# coding: utf-8
class ApplicationMailer < ActionMailer::Base
  default from:  "ドミトリー管理人" # 宛先名
  layout 'mailer'
end
