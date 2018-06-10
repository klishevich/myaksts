class AddAttachmentFile1ToApplicFiles < ActiveRecord::Migration
  def self.up
    change_table :applic_files do |t|
      t.attachment :file1
      t.attachment :file2
    end
  end

  def self.down
    remove_attachment :applic_files, :file1, :file2
  end
end
