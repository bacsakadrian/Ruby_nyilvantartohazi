class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :Name
      t.string :City

      t.timestamps
    end
  end
end
