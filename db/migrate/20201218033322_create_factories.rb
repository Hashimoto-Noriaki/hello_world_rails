class CreateFactories < ActiveRecord::Migration[6.0]
  def change
    create_table :factories do |t|

      t.timestamps
    end
  end
end
