class CreateTemats < ActiveRecord::Migration[5.0]
  def change
    create_table :temats do |t|

      t.timestamps
    end
  end
end
