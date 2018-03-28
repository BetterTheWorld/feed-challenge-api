class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :verb, null: false
      t.string :object, null: false
      t.string :actor, null: false

      t.timestamps
    end
  end
end
