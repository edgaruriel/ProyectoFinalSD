class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :ip
      t.integer :time

      t.timestamps
    end
  end
end
