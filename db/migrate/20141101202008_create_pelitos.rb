class CreatePelitos < ActiveRecord::Migration
  def change
    create_table :pelitos do |t|
      t.string :forma
      t.date :fecha
      t.integer :grosor

      t.timestamps
    end
  end
end
