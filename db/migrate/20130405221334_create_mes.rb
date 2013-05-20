class CreateMes < ActiveRecord::Migration
  def change
    create_table :mes do |t|
      t.string :password_digest
      t.string :auth_token
      t.text   :about

      t.timestamps
    end
  end
end
