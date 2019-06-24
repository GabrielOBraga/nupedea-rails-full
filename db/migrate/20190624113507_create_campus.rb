class CreateCampus < ActiveRecord::Migration[5.2]
  def change
    create_table :campus do |t|
      t.string :nome_campus
      t.string :estado

      t.timestamps
    end
  end
end
