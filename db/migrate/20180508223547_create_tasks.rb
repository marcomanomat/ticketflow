class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :action
      t.boolean :performed
      t.string :notes
      t.references :issue, foreign_key: true

      t.timestamps
    end
  end
end
