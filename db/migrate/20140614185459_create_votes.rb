class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.integer :topic_id

      t.timestamps
    end
    add_index :votes,:topic_id
  end

def self.down
	drop_tables :votes

end

end
