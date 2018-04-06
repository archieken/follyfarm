class CreateAttractions < ActiveRecord::Migration[5.1]
  def change
    create_table :attractions do |t|
      t.string :subject
      t.text :content
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
