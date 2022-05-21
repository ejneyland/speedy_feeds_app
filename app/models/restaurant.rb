class Restaurant < ApplicationRecord
    has_many :foods, dependent: :destroy

    validates :name, presence: true, length: { minimum: 4 }

    validates :cuisine, presence: true, length: { minimum: 4 }

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
