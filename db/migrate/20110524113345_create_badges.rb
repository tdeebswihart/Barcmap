class CreateBadges < ActiveRecord::Migration
  def self.up
    create_table :badges do |t|
      t.string :name
      t.text :description
      t.string :uid
      t.string :imageurl


      t.timestamps
    end
  end

  def self.down
    drop_table :badges
  end
end
