class AddAttachmentImageToTattoos < ActiveRecord::Migration
  def self.up
    change_table :tattoos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tattoos, :image
  end
end
