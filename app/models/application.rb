class Application < ApplicationRecord
  has_many :pet_applications
  has_many :pets, through: :pet_applications

 validates_presence_of :name, :address, :city, :state, :zip, :description

 def new_status
   "In Progress"
 end
end
