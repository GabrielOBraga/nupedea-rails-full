class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.integer :n_matricula
      t.string :nome_professor

      t.timestamps
    end
  end
end
