class CreateEvs < ActiveRecord::Migration[6.0]
  def change
    create_table :evs do |t|
      t.string :eng
      t.string :vni

      t.timestamps
    end
  end
end
