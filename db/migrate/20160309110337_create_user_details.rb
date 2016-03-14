class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :FirstName
      t.string :LastName
      t.string :SelectTour
      t.string :TourDescription
      t.decimal :Time

      t.timestamps null: false
    end
  end
end
