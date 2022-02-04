class Company < ApplicationRecord
  has_many :user2_companies, dependent: :destroy
  has_many :users, through: :user2_companies
  has_many :project1s, dependent: :destroy
  has_many :project2s, dependent: :destroy
  has_many :project3s, dependent: :destroy
  has_many :project4s, dependent: :destroy
  has_many :project5s, dependent: :destroy
  has_many :project6s, dependent: :destroy

  def to_s
    name
  end
end
