class User < ActiveRecord::Base
  validates :email, presence: true

  has_secure_password
  has_many :tickets

  def to_s
    "#{self.email} (#{admin? ? "Admin" : "User"})"
  end

end
