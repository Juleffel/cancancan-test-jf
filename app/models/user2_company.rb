class User2Company < ApplicationRecord
  belongs_to :user
  belongs_to :company
end
