class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :name
      t.integer :number
      t.string :serie

      t.timestamps
    end
  end
end
