class CreateCountryZones < ActiveRecord::Migration[5.2]
  def change
    create_table :country_zones do |t|
      t.string :value
      t.string :abbr
      t.float :offset
      t.boolean :isdst
      t.string :text
      t.string :utc, array: true, default: []

      t.timestamps
    end
  end
end
