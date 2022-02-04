class CreateProject6s < ActiveRecord::Migration[6.1]
  def change
    create_table :project6s do |t|
      t.string :name
      t.belongs_to :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
