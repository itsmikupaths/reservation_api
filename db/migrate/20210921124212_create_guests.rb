class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.text :email
      t.text :first_name
      t.text :last_name
      t.integer :guest_count
      t.integer :adult_count
      t.integer :children_count
      t.integer :infant_count

      t.timestamps
    end
    add_index :guests, :email, unique: true
  end
end
