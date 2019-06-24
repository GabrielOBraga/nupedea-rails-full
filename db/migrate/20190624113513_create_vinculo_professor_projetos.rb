class CreateVinculoProfessorProjetos < ActiveRecord::Migration[5.2]
  def change
    create_table :vinculo_professor_projetos do |t|
      t.references :projeto, foreign_key: true
      t.references :professor, foreign_key: true
      t.date :data_inicio
      t.date :data_final

      t.timestamps
    end
  end
end
