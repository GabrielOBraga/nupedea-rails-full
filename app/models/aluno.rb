class Aluno < ApplicationRecord
  belongs_to :curso
  has_one :vinculo_aluno_projeto
end
