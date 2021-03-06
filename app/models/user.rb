class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :name, :about_no, :about_en, :auth_token
  has_secure_password
  validates_presence_of :password, :on => :create
  before_create { generate_token(:auth_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def admin?
    true
  end
end
