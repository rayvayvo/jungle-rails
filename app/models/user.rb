class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 4 }
  validates :password_confirmation, presence: true


  def pass_check(user)
    if user.password == user.password_confirmation
      return true
    else
      return false
    end
  end

  def email_check(user)

    User.all.each do |u|
      if u.email.downcase == user.email.downcase
        return true
      end
    end
  end



end
