class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.decimal :age
      t.decimal :days
      t.decimal :daysoff
      t.boolean :isboss

      t.timestamps
    end
  end
end
