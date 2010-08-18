class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string    :address, :null => false, :limit => 255
      t.datetime  :created_at
    end
  end

  def self.down
    drop_table :links
  end
end
