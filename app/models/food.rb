class Food < ApplicationRecord
    belongs_to :restaurant

    has_one_attached :image

    validates :name, presence: true, length: { minimum: 4 }
    
    validates :price, presence: true, numericality: { only_float: true, greater_than: 0, less_than: 500 }

end
