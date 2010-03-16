class CreateHelpfiles < ActiveRecord::Migration
  def self.up
    create_table :helpfiles do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :helpfiles
  end
end
