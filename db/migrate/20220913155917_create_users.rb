class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png?'
      t.text :bio, default: 'This user has no bio yet'
      t.integer :posts_counter, default: 0

      t.timestamps
    end
  end
end
