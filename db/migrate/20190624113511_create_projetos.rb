class CreateProjetos < ActiveRecord::Migration[5.2]
  def change
    create_table :projetos do |t|
      t.integer :numero
      t.string :nome_projeto
      t.string :descricao
      t.references :professor, foreign_key: true
      t.datetime :data_inicio
      t.datetime :data_final

      t.timestamps
    end
  end
end
