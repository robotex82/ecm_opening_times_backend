# This migration comes from ecm_opening_times (originally 20170813133613)
class CreateEcmOpeningTimesEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :ecm_opening_times_entries do |t|
      t.references :branch, foreign_key: true
      t.string :weekdays
      t.integer :open_at
      t.integer :close_at
      t.boolean :open_all_day, default: false

      t.timestamps
    end
  end
end
