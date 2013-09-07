class CreateOrphans < ActiveRecord::Migration
  def change
    create_table :orphans do |t|
      t.string :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
