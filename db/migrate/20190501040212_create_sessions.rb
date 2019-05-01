class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|

      t.belongs_to :user
      t.string :ip_address
      t.string :platform
      t.integer :start_time
      t.integer :exp_time
      t.boolean :active ,default: true
      t.timestamps
    end
  end
end
