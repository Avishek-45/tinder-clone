class Like < ApplicationRecord
    validates_uniqueness_of :linked_account_id, scope: :account_id
end
