class ExpertiseProfessor < ApplicationRecord
  belongs_to :expertise
  belongs_to :professor
end
