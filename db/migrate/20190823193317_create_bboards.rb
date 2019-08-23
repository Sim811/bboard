class CreateBboards < ActiveRecord::Migration[6.0]
  def change
    create_table :bboards do |t|
      t.string :name

      t.timestamps
    end
  end
end
