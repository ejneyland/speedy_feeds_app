class Restaurant < ApplicationRecord
    has_many :foods, dependent: :destroy

    def name_cuisine
        return "#{name} (#{cuisine})"
    end
end
