class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :name
      t.integer :severity
      t.references :recommendation, index: true

      t.timestamps
    end
  end
end
