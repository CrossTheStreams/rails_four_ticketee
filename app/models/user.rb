class User < ActiveRecord::Base
  has_secure_password
  has_many :tickets

  def to_s
    "#{self.email} (#{admin? ? "Admin" : "User"})"
  end

end
