class CreateCours < ActiveRecord::Migration[5.0]
  def change
    create_table :cours do |t|
       t.integer :year
       t.integer :cours
      t.timestamps
    end
  end
end
