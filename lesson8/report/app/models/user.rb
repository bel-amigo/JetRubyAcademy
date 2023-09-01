class User < ApplicationRecord
  #attribute :name, :string

  has_many :reports

  validates :first_name, length: { maximum: 100 }
  validates :last_name, length: { maximum: 100 }
  validates :email, length: { maximum: 150 }
end
