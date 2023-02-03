class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :foto
      t.string :nome_animal
      t.string :nome_dono
      t.string :cpf_cnpj_dono

      t.timestamps
    end
  end
end
