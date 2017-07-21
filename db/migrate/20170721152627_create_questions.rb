class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :desciption, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
