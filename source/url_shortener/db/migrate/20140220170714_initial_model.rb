class InitialModel < ActiveRecord::Migration
  def change
    create_table :smurls do |t|
      t.string :l_url
      t.string :s_url
      t.timestamps
    end
  end
end
