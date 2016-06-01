class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|
      t.string :title
      t.string :desc

      t.timestamps null: false
    end
  end
end
