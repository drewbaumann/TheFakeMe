class CreateIdentities < ActiveRecord::Migration
  def self.up
    create_table :identities do |t|
      t.string :fname
      t.string :lname
      t.string :occupation

      t.timestamps
    end
  end

  def self.down
    drop_table :identities
  end
end
