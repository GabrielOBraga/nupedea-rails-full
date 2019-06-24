class VinculoAlunoProjeto < ApplicationRecord
  belongs_to :aluno
  belongs_to :projeto
end
