class CreateAssets < ActiveRecord::Migration

  def up
    create_table :assets do |t|
      t.string :asset
      t.references :ticket
      t.timestamps
    end
    remove_column :tickets, :asset
  end

  def down 
    drop_table :assets 
    add_column :tickets, :asset, :string
  end

end
