class ChangeDataTypeForRating < ActiveRecord::Migration[7.0]
  def self.up
    change_table :reviews do |t|
      t.change :rating, :integer
    end
  end
  def self.down
    change_table :reviews do |t|
      t.change :rating, :varchar
    end
  end
end
