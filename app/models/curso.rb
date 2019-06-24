class Curso < ApplicationRecord
  belongs_to :campu
  has_one :aluno
end
