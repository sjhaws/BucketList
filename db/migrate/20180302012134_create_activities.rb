class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.float :cost
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
