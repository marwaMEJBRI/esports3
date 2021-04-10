class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role 
  has_many :notifications, as: :recipient
  has_many :players,through: :likes
  has_many :likes

  def assign_default_role
    self.add_role(:player) if self.roles.blank?
  end 
end
