class AddFreesatToTvChannels < ActiveRecord::Migration
  def change
    add_column :tv_channels, :freesat, :integer
  end
end
