class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :feedurl
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :feeds, :users
    add_index :feeds, [:user_id, :created_at]
  end
end
