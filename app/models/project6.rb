class Project6 < ApplicationRecord
  belongs_to :company

  def to_s
    name
  end
end
