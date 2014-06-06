class User < ActiveRecord::Base
  validates :email, presence: true

  has_secure_password
  has_many :tickets
  has_many :permissions

  scope :admins, ->{ where(admin: true) }

  def to_s
    "#{self.email} (#{admin? ? "Admin" : "User"})"
  end

end
