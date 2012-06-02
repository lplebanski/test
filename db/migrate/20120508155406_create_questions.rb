class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :tiltle
      t.text :content

      t.timestamps
    end
  end
end
