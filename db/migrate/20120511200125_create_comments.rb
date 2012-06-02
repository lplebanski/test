class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :question

      t.timestamps
    end
    add_index :comments, :question_id
  end
end
