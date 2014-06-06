class Project < ActiveRecord::Base

  validates :name, presence: true

  has_many :permissions, as: :thing
  has_many :tickets, dependent: :delete_all

  scope :viewable_by, ->(user) do 
    joins(:permissions).where(permissions: { action: "view", user_id: user.id })
  end

end
