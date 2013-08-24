class Picture < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  before_create :file_upload

  attr_accessor :file

  validates_presence_of :file, on: :create
  validates_presence_of :title

  def file_upload
    begin
      uploaded_io = self.file
      File.open(Rails.root.join('public', 'system', 'pictures', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      self.extension = uploaded_io.content_type
      self.original_filename = uploaded_io.original_filename
      self.file_path = 'system/pictures'
    rescue
      errors[:base] << "File upload error ..."
    end

  end

  def url
    if self.file_path && self.original_filename
      "#{self.file_path}/#{self.original_filename}"
    else
      nil
    end
  end

end
