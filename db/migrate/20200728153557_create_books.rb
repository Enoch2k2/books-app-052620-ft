class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.integer :rating

      t.timestamps
    end
  end
end
