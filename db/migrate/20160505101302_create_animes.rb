class CreateAnimes < ActiveRecord::Migration[5.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :title_short1
      t.string :title_short2
      t.string :title_short3
      t.string :twitter_account
      t.string :public_url
      t.boolean :sex
      t.string :twitter_hash_tag
      t.integer :sequel
      t.integer :cours_id, limit: 8
      t.timestamps
    end
  end
end
