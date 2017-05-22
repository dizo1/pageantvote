class CreatePageants < ActiveRecord::Migration[5.1]
  def change
    create_table :pageants do |t|
      t.string :pageant_name
      t.string :pageant_category
      t.text   :pageant_description
      t.timestamps
    end
  end
end
