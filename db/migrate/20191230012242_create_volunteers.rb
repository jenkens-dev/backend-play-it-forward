class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :username
      t.string :display_name
      t.string :image
      t.string :bio
      t.integer :points
      t.string :title

      t.timestamps
    end
  end
end
