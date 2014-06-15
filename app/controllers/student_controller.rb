class StudentController < ApplicationController
	def new
		@aluno = Aluno.new
	end

	def create
		@aluno = Aluno.create(params.require(:aluno).permit(:name, :number, :serie))

		redirect_to show_path @aluno
	end

	def show
		@aluno = Aluno.find params[:id]
	end

	def delete
		@aluno = Aluno.find params[:id]
		@aluno.delete
		redirect_to root_path
	end

	def edit
		@aluno = Aluno.find params[:id]
	end

	def update
		@aluno = Aluno.find params[:id]
		@aluno.update_attributes(params.require(:aluno).permit(:name, :nummber, :serie))

		redirect_to show_path @aluno
	end
end