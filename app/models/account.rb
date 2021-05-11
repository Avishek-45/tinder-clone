class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :images

  validates :username, presence: true
  validates :images, presence: true
  validates :username, uniqueness: true, if: -> { self.username.present? }
 

  
end
