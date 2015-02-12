class CreateMyvds < ActiveRecord::Migration
  def change
    create_table :myvds do |t|
      t.string :name
      t.string :message
      t.boolean :looking_for
    end
  end
end
