class Cocktail < ApplicationRecord
  has_one_attached :photo
  has_many :doses, :dependent => :delete_all
  has_many :ingredients, through: :doses
  validates_uniqueness_of :name
  validates :name, presence: true

end
