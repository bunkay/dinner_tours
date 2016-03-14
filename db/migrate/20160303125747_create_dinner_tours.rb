class CreateDinnerTours < ActiveRecord::Migration
  def change
    create_table :dinner_tours do |t|
      t.string :title
      t.text :notes

      t.timestamps null: false
    end
  end
end
