class CreateJoinTableIssueTasks < ActiveRecord::Migration[5.2]
  def change
    create_join_table :issues, :tasks do |t|
      # t.index [:issue_id, :task_id]
      # t.index [:task_id, :issue_id]
    end
  end
end
