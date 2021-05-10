class Conversation < ApplicationRecord
    has_many :messages, dependent: :destroy
    accepts_nested_attributes_for :messages, allow_destroy: true

    validates_presence_of :sender_id, :receipient_id
    validates_uniqueness_of :sender_id, scope: :receipient_id

    scope :between, -> (sender_id, receipient_id) do
        where("(sender_id = ? AND receipient_id = ?) OR (sender_id = ? AND  receipient_id = ?)",sender_id,receipient_id,receipient_id,sender_id)

    end



end