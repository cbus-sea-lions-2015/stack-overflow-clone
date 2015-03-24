class User < ActiveRecord::Base
  include BCrypt
  
  has_many :questions
  has_many :answers
  has_many :votes


   def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  
  def self.authenticate(username, password_attempt)
    user = User.find_by(username: username)
    user if user && user.password == password_attempt
  end
end
