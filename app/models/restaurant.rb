class Restaurant < ApplicationRecord

  # Validations
  validates :name, presence: { message: "El nombre no puede estar vacio"}
end
