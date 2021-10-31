class AddCompanyTouser < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :company, index: true
  end
end
