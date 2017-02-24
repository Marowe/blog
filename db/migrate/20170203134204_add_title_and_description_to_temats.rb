class AddTitleAndDescriptionToTemats < ActiveRecord::Migration[5.0]
  def change
    add_column :temats, :title, :string
    add_column :temats, :description, :text
  end
end
