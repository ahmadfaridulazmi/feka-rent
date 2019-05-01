class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|

      t.string :name
      t.string :email
      t.integer :tel_num
      t.integer :ic_num
      t.string :tenant_num
      t.text :address
      t.string :occupation
      t.boolean :active, default: true

      t.timestamps
    end
    add_index :tenants, [:email, :ic_num], unique: true
  end
end
