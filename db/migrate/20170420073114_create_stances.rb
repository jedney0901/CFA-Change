class CreateStances < ActiveRecord::Migration[5.0]
  def change
    create_table :stances do |t|
      t.references :user, foreign_key: true
      t.references :debate, foreign_key: true
      t.boolean :stance

      t.timestamps
    end
  end
end
