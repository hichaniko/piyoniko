class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.text        :area_text,        null: false
      t.integer     :prefecture_id,    null: false
      t.references  :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
