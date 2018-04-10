class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :source, default: "http://res.cloudinary.com/di7okux3q/image/upload/v1522773619/vwbeetle.jpg"
      t.text :description

      t.timestamps
    end
  end
end
