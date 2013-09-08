class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body
      t.references :user, index: true

      t.timestamps
    end
  end
end
