class Coordinator < ApplicationRecord
   #Association
    has_many :registries
    has_many :participants, :through => :registries

   #Validation
    validates :phone_number,uniqueness: true, format: {:with => /\(?:\+?|\b\)?[0-9]{11}\b/ }
    
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end
