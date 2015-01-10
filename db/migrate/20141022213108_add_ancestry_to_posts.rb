class AddAncestryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :ancestry, :string
  end
end
