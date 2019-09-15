class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.text :content
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
