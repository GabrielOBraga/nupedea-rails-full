class CreateVinculoAlunoProjetos < ActiveRecord::Migration[5.2]
  def change
    create_table :vinculo_aluno_projetos do |t|
      t.references :aluno, foreign_key: true
      t.references :projeto, foreign_key: true
      t.date :data_inicio
      t.date :data_final

      t.timestamps
    end
  end
end
