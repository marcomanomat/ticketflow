class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :number
      t.text :status
      t.text :link
      t.text :url
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
