class Consultation < ApplicationRecord
  # Add any necessary validations
  validates :first_name, :email, :project_description, presence: true
end
