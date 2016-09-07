class AddAttachmentImageToCanvas < ActiveRecord::Migration
  def self.up
    change_table :canvas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :canvas, :image
  end
end
