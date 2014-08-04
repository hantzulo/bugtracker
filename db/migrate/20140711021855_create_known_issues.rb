class CreateKnownIssues < ActiveRecord::Migration
  def change
    create_table :known_issues do |t|
    	t.string	:name
    	t.string	:machine
    	t.text		:comment
    	t.text		:shellmesg
    	t.text		:solution

      t.timestamps
    end
  end
end
