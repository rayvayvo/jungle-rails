class JungleMailerPreview < ActionMailer::Preview
def receipt_email
    JungleMailer.receipt_email(User.first.email)
  end
end

