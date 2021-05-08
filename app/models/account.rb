class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many_attached :images

  def matches
    linked_account_ids = Like.where(account_id: self.id).map(&:linked_account_id)
    likes_me_account_ids = Like.where(linked_account_id:self.id).map(&:account_id)

    matches_ids = linked_account_ids.select{|id| likes_me_account_ids.include?(id)}

    Account.where(id: matches_ids)
  end
end
