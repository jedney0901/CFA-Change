class CreateDebates < ActiveRecord::Migration[5.0]
  def change
    create_table :debates do |t|
      t.string :topic
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
