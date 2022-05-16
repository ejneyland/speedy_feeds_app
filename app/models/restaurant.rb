class Restaurant < ApplicationRecord
    has_many :foods, dependent: :destroy

    def get_name
        return "#{name}"
    end

    def get_cuisine
        return "#{cuisine}"
    end 

    def name_cuisine
        return "#{name} (#{cuisine})"
    end

end
