class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :project_id
      t.text :content

      t.timestamps
    end
  end
end
