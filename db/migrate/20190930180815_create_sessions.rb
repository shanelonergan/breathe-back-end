class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :done
      t.integer :rounds

      t.timestamps
    end
  end
end
