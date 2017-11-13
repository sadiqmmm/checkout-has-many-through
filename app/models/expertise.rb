class Expertise < ApplicationRecord
	has_many :expertise_professors
	has_many :professors, through: :expertise_professors
end
