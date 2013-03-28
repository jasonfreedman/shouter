class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
