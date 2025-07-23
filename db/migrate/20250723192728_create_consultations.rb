class CreateConsultations < ActiveRecord::Migration[7.1]
  def change
    create_table :consultations do |t|
      t.string :first_name
      t.string :email
      t.string :phone
      t.text :project_description

      t.timestamps
    end
  end
end
