class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :body
      t.json :details

      t.timestamps
    end

    create_table :exhibitions do |t|
      t.string :name
      t.string :image
      t.text :body
      t.json :details
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end

    create_table :arts do |t|
      t.belongs_to :exhibition, index: true
      t.belongs_to :artist, index: true
      t.string :name
      t.string :image
      t.string :subtitle
      t.text :body
      t.json :details

      t.timestamps
    end
  end
end
