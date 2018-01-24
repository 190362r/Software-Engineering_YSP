# coding: utf-8
class ReportMailer < ApplicationMailer
  default from: "ysphost@gmail.com"

  def report
    mail to: "ysphost@gmail.com",
         subject: "紛失物申告"
  end
end
