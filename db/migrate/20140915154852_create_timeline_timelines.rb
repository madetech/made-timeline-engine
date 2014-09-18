class CreateTimelineTimelines < ActiveRecord::Migration
  def change
    create_table :timeline_timelines do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
