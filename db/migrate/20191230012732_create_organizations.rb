class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :username
      t.string :display_name
      t.string :address
      t.string :logo
      t.string :description
      t.string :mission
      t.string :contact

      t.timestamps
    end
  end
end
