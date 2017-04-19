class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :profile_image
      t.string :user_name
      t.text :about_me

      t.timestamps
    end
  end
end
