class CreateVeterinarios < ActiveRecord::Migration[6.1]
  def change
    create_table :veterinarios do |t|
      t.string :nome
      t.string :cmrv
      t.text :especialidades

      t.timestamps
    end
  end
end
