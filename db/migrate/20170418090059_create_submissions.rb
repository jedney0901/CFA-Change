class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.references :debate, foreign_key: true
      t.string :sub_type
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
