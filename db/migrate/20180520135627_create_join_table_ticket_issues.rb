class CreateJoinTableTicketIssues < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tickets, :issues do |t|
      t.index [:ticket_id, :issue_id]
      t.index [:issue_id, :ticket_id]
    end
  end
end
