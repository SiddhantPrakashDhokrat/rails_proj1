class CreateF1s < ActiveRecord::Migration[6.0]
  def change
    create_table :f1s do |t|
      t.string :Name
      t.string :Email
      t.string :phone

      t.timestamps
    end
  end
end
