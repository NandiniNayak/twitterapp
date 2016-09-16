class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.text :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
