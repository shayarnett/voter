class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :candidate, index: true
      t.string :provided

      t.timestamps
    end
  end
end
