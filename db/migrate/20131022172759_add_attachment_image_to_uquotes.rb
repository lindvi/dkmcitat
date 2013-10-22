class AddAttachmentImageToUquotes < ActiveRecord::Migration
  def self.up
    change_table :uquotes do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :uquotes, :image
  end
end
