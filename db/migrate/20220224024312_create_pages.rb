class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :route
      t.boolean :active
      t.text :html

      t.timestamps
    end
  end
end
