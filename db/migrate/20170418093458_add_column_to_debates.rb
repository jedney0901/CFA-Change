class AddColumnToDebates < ActiveRecord::Migration[5.0]
  def change
    add_reference :debates, :user, foreign_key: true
  end
end
