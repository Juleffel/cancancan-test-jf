class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user2_companies, dependent: :destroy
  has_many :companies, through: :user2_companies

  has_many :project1s, through: :companies
  has_many :project2s, through: :companies
  has_many :project3s, through: :companies

  def to_s
    email
  end
end
