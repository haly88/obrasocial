class CreatePrestaciones < ActiveRecord::Migration
  def change
    create_table :prestaciones do |t|
      t.references :liquidacion, index: true, foreign_key: true
      t.boolean :domiciliaria
      t.references :prestador, index: true, foreign_key: true
      t.datetime :fecha
      t.string :nombre
      t.decimal :cantidad
      t.decimal :precio
      t.decimal :km
      t.decimal :total

      t.timestamps null: false
    end
  end
end
