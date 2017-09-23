class CreateNotifiers < ActiveRecord::Migration[5.1]
  def change
    create_table :notifiers do |t|
      t.string :topic

      t.timestamps
    end
  end
end
