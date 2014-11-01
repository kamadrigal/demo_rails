class CreateParteCuerpos < ActiveRecord::Migration
  def change
    create_table :parte_cuerpos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
