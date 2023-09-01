class DoingUserIdForReport < ActiveRecord::Migration[7.1]
  def change
    add_column :reports, :user_id, :integer

  end
end
