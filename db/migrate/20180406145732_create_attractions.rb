class CreateAttractions < ActiveRecord::Migration[5.1]
  def change
    create_table :attractions do |t|
      t.string :subject
      t.text :content
      t.string :link
      t.string :image, default: "http://res.cloudinary.com/di7okux3q/image/upload/v1522773619/vwbeetle.jpg"

      t.timestamps
    end
  end
end
