class AddFileAttributesToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :original_filename, :string
    add_column :pictures, :file_path, :string
  end
end
