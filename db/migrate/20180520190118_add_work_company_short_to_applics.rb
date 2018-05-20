class AddWorkCompanyShortToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :work_company_short, :string
  end
end
