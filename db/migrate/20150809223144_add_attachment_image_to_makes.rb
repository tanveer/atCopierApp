class AddAttachmentImageToMakes < ActiveRecord::Migration
  def self.up
    change_table :makes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :makes, :image
  end
end
