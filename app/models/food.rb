class Food < ApplicationRecord
    belongs_to :restaurant

    def meal_name
        return "#{name}"
    end

end
