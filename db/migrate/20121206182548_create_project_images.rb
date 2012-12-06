class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.string :name
      t.attachment :img
      t.integer :project_id
      t.timestamps
    end
  end
end
