class ApplicFile < ActiveRecord::Base
  attr_accessible :file1, :file2
  has_attached_file :file1
  has_attached_file :file2
  validates :file1, :file2, presence: true
  validates :applic_id, presence: true
  validates_attachment_file_name :file1, :matches => [/doc\Z/, /docx\Z/]
  validates_attachment_file_name :file2, :matches => [/pdf\Z/, /jpe?g\Z/, /png\Z/]
end
