class CreateExercicios < ActiveRecord::Migration[6.0]
  def change
    create_table :exercicios do |t|
      t.string :modalidade
      t.string :valor

      t.timestamps
    end
  end
end
