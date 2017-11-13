class Professor < ApplicationRecord
	has_many :expertise_professors, dependent: :destroy
	has_many :expertises, through: :expertise_professors
end
