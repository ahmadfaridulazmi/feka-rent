class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|

      t.belongs_to :rental
      t.string :uuid, default: SecureRandom.uuid
      t.string :receipt_num
      t.string :receipt_doc_path
      t.boolean :sent_email, default: false

      t.timestamps
    end
    add_index :receipts, [:uuid, :receipt_num], unique: true
  end
end
