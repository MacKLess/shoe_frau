class CreateBrand < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |t|
      t.column(:brandname, :string)
      t.column(:price, :decimal, precision: 10, scale:2)
    end
  end
end
