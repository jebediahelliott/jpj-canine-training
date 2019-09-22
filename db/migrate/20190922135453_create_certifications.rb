class CreateCertifications < ActiveRecord::Migration[5.2]
  def change
    create_table :certifications do |t|
      t.integer :year_issued
      t.string :name
      t.string :certificate_issuer
      t.references :static_page, foreign_key: true
    end
  end
end
