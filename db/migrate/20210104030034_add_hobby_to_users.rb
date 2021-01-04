class AddHobbyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :hobby, :text
  end
end
