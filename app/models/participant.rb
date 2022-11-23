class Participant < ApplicationRecord
    #Association
    has_many :registries
    has_many :coordinators, :through => :registries

    
    #Validation
    validates :date_of_birth, format: {:with => /\d{2}\/\d{2}\/\d{4}/ }

    
end
