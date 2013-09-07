class AddColumnToOrphan < ActiveRecord::Migration
  def change
    add_column :orphans, :image_url, :string
  end
end
