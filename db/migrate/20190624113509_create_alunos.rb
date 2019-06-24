class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :n_matricula
      t.string :nome_aluno
      t.references :curso, foreign_key: true
      t.integer :periodo

      t.timestamps
    end
  end
end
