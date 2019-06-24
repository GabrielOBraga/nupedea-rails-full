class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nome_curso
      t.references :campus, foreign_key: true

      t.timestamps
    end
  end
end
