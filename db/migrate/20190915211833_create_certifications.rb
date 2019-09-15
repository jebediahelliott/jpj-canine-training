class CreateCertifications < ActiveRecord::Migration[5.2]
  def change
    create_table :certifications do |t|
      t.references :page, foreign_key: true
      t.integer :year_issued
      t.string :name
      t.string :certificate_issuer

      t.timestamps
    end
  end
end
