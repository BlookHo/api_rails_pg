class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, :null => false
      t.string :location, :null => false

      t.timestamps
    end
  end
end
