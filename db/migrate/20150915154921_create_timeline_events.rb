class CreateTimelineEvents < ActiveRecord::Migration
  def change
    create_table :timeline_events do |t|
      t.integer :year
      t.string :title
      t.text :description

      t.references :timeline

      t.timestamps
    end

    add_attachment :timeline_events, :image
  end
end
