class BookController < ApplicationController
	def new
		@aluno = Aluno.find params[:id]
		@livro = Livro.new
	end

	def create
		@livro = Livro.create(params.require(:livro).permit(:livro, :entrada, :devolucao, :ref))

		redirect_to show_book_path @livro
	end

	def show
		@livro = Livro.find params[:id]
	end

	def update
		@livro = Livro.find params[:id]
		@livro.devolucao = @livro.devolucao + 7.days
		@livro.save

		redirect_to show_book_path @livro
	end
end