class CreatePhonebookCruds < ActiveRecord::Migration[7.0]
  def change
    create_table :phonebook_cruds do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
