class CreateAirlinePictures < ActiveRecord::Migration[7.1]
  def change
    create_table :airline_pictures do |t|
      t.string :title
      t.references :imagable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
