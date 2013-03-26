class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :name
      t.string :password
      t.string :mail
      t.string :tagline
      t.timestamp :last_update
      t.timestamp :last_access
      t.hstore :status
      t.string :timezone
      t.hstore :metadata
      t.hstore :user_roles

      t.timestamps
    end
  end
end
