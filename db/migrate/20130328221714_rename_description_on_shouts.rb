class RenameDescriptionOnShouts < ActiveRecord::Migration
  def up
    rename_column :shouts, :description, :message
    remove_column :shouts, :title
  end

  # def down
#   end
end
