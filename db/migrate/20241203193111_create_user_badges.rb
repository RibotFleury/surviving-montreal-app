class CreateUserBadges < ActiveRecord::Migration[7.1]
  def change
    create_table :user_badges do |t|
      t.date :earned_date
      t.references :user, null: false, foreign_key: true
      t.references :badge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
