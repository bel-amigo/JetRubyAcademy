class Report < ApplicationRecord
  belongs_to :user

  #has_one :user
  attribute :edited, :boolean, default: false


  validates :title, length: { maximum: 250 }
  validates :description, length: { maximum: 500 }
  validates :grade, length: { maximum: 2 }
end
