class Project3 < ApplicationRecord
  belongs_to :company

  def to_s
    name
  end
end
