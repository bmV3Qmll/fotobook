class CreateFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :follows do |t|
      t.references :follower, foreign_key: {to_table: :users}
      t.references :followee, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
