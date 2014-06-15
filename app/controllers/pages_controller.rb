class PagesController < ApplicationController
	def index
		@alunos = Aluno.all
		@livros = Livro.all

		@procurar_aluno = Aluno.where("name LIKE '%#{params[:search]}%'") if params[:search]
	end

	def book
		@aluno = Aluno.find params[:id]
		@livros = Livro.all
	end

	
end