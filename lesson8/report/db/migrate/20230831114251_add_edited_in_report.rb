class AddEditedInReport < ActiveRecord::Migration[7.1]
  def change
    add_column :reports, :edited, :boolean
  end
end
