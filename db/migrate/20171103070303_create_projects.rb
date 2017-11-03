class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.text :name
      t.string :status
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
