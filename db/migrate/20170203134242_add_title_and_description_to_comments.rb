class AddTitleAndDescriptionToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :title, :string
    add_column :comments, :description, :text
  end
end
