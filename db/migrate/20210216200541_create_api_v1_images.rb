class CreateApiV1Images < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_images do |t|

      t.timestamps
    end
  end
end
