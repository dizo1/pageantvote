class AddDateToPageants < ActiveRecord::Migration[5.1]
  def change
    add_column :pageants, :startdate, :string
   
    add_column :pageants, :enddate, :string
  
  end
end
