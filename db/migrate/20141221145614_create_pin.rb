class CreatePin < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.column :user_id, :integer
      t.column :description, :text
      t.attachment :image

      t.timestamps
    end

    add_index :pins, :user_id
  end
end
