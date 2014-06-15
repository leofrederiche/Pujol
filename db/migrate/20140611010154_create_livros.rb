class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :livro
      t.datetime :entrada
      t.datetime :devolucao
      t.string :ref

      t.timestamps
    end
  end
end
