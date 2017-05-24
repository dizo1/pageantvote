class CreateContestants < ActiveRecord::Migration[5.1]
  def change
    create_table :contestants do |t|

      t.timestamps
    end
  end
end
