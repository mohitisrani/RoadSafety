class User < ActiveRecord::Base

  def self.with_details(user_hash)
    @user = find_by_email_and_password(user_hash["email"],user_hash["password"])
  end

  def self.with_email(email)
    User.where(email: email).first_or_initialize do |user|
      user.email = email
    end
  end
end
