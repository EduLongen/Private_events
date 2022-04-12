class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_title
      t.string :event_description
      t.datetime :event_date
      t.string :event_location

      t.timestamps
    end
  end
end
