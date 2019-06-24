class VinculoProfessorProjeto < ApplicationRecord
  belongs_to :projeto
  belongs_to :professor
end
