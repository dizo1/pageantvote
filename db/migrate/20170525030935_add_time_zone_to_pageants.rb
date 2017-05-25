class AddTimeZoneToPageants < ActiveRecord::Migration[5.1]
  def change
    add_column :pageants, :time_zone, :string
  end
end
