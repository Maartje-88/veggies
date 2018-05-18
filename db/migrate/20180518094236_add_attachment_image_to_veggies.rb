class AddAttachmentImageToVeggies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :veggies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :veggies, :image
  end
end
