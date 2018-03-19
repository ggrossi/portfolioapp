class CreateWriter < ActiveRecord::Migration[5.1]
  def change
    create_table :writers do |t|
      t.string :writername
      t.string :email
      t.timestamps
    end
  end
end
