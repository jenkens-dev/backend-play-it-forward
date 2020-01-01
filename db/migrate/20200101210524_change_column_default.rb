class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :organizations, :display_name, :string, default: ''
    change_column :organizations, :address, :string, default: ''
    change_column :organizations, :logo, :string, default: 'https://unsplash.com/photos/SIU1Glk6v5k'
    change_column :organizations, :description, :string, default: ''
    change_column :organizations, :mission, :string, default: ''
    change_column :organizations, :contact, :string, default: ''
    change_column :volunteers, :display_name, :string, default: ''
    change_column :volunteers, :bio, :string, default: ''
    change_column :volunteers, :image, :string, default: 'https://unsplash.com/photos/7uSrOyY1U0I'
    change_column :volunteers, :points, :integer, default: 0
    change_column :volunteers, :title, :string, default: ''
  end
end
