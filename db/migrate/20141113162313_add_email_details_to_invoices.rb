class AddEmailDetailsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :from, :string
    add_column :invoices, :receiver, :string
    add_column :invoices, :body, :text
  end
end
