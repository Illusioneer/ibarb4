class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :node_id
      t.integer :version_id
      t.integer :current_version_id
      t.string :language
      t.string :title
      t.hstore :authors_id
      t.string :status
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamp :unpublished_at
      t.timestamp :first_published
      t.timestamp :last_published
      t.string :rank
      t.hstore :metadata
      t.text :content

      t.timestamps
    end
    add_index :nodes, :node_id
    add_index :nodes, :version_id
    add_index :nodes, :current_version_id
  end
end
