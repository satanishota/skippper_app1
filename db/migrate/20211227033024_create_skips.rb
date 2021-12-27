class CreateSkips < ActiveRecord::Migration[5.2]
  def change
    create_table :skips do |t|
      t.string  :name, null:false
      t.integer :number, null:false
      t.timestamps
    end
  end
end
