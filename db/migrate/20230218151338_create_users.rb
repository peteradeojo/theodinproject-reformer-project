class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email, unique: true
      t.string :password_digest

      t.timestamps
    end
    # add_index :users, :email, unique: true
  end
end
