class ClickCounter < ActiveRecord::Migration
  def change
    add_column :smurls, :click_count, :integer
  end
end
