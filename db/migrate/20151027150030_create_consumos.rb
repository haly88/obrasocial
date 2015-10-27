class CreateConsumos < ActiveRecord::Migration
  def change
    create_table :consumos do |t|
      t.references :liquidacion, index: true, foreign_key: true
      t.string :insumo
      t.decimal :cantidad
      t.decimal :precio
      t.decimal :total

      t.timestamps null: false
    end
  end
end
