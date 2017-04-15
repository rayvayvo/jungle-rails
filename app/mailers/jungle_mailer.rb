class JungleMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def receipt_email(current_user)
    mail(to: current_user, subject: 'receipt from Jungle')
    puts "yay"
  end
end
