class Projeto < ApplicationRecord
  belongs_to :professor
  has_one :vinculo_professor_projeto
  has_one :vinculo_aluno_projeto
end
