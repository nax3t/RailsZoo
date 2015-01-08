class AddBioToAnimal < ActiveRecord::Migration
  def change
  	add_column :animals, :bio, :string
  end
end
