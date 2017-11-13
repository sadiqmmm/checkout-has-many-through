class Professor < ApplicationRecord
	has_many :expertise_professors
	has_many :expertises, through: :expertise_professors
end
