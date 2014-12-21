class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :provider, :string
      t.column :uid, :string
      t.column :email, :string
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :image, :string

      t.timestamps
    end

    add_index :users, :provider
    add_index :users, :uid
  end
end
