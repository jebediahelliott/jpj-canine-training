class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.text :content
      t.references :static_page, foreign_key: true
    end
  end
end
