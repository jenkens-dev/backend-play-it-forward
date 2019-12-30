class DropPoemsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :poems
  end
end
