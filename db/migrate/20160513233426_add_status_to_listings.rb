class AddStatusToListings < ActiveRecord::Migration
  def change
    add_column :listings, :status, :string, :default => "open"
  end
end
