class Registry < ApplicationRecord
    # Association
    belongs_to :coordinator
    belongs_to :participant

    #Validation
    
    validates :name, uniqueness: { scope: :location }
    validates :state, acceptance: {accept: 'open', message: "Registration is closed" }
     
end
