class Professor < ApplicationRecord
  has_one :vinculo_professor_projeto
  has_one :projeto
end
