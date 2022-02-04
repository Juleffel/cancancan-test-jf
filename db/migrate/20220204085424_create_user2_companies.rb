class CreateUser2Companies < ActiveRecord::Migration[6.1]
  def change
    create_table :user2_companies do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
