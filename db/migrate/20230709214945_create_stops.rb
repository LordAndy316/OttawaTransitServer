class CreateStops < ActiveRecord::Migration[7.0]
  def change
    create_table :stops do |t|
      t.string :StopNumber
      t.text :StopDescription
      t.string :Error
      t.string :RouteNumber
      t.integer :RouteDirectionID
      t.string :RouteDirection
      t.string :RouteHeading

      t.timestamps
    end
  end
end
