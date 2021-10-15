class CreateDashes < ActiveRecord::Migration[6.0]
  def change
    create_table :dashes do |t|
      t.text :no
      t.text :desc

      t.timestamps
    end
  end
end
