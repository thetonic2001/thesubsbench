class CreateTvChannels < ActiveRecord::Migration
  def change
    create_table :tv_channels do |t|
      t.string :name
      t.integer :bt
      t.integer :freeview
      t.integer :sky
      t.integer :virgin
      t.integer :youview
      t.text :rights_held
      t.string :weblink
      t.boolean :hd

      t.timestamps
    end
  end
end
