class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
