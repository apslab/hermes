# encoding: UTF-8
class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
