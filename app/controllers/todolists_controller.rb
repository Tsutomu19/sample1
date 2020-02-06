class TodolistsController < ApplicationController

  	def new
  	#Viewへ受け渡すためのインスタンス変数にからのモデルオブジェクトを生成する
  		@list = List.new
  	end

	def index
		@lists = List.all
	end

	def show
		@list = List.find(params[:id])
	end

	def create
  		list = List.new(list_params)#ストロングパラメーターを利用
  		list.save #DBへ保存

  		redirect_to todolist_path(list.id)
  	end

private

  	def list_params
  	params.require(:list).permit(:title, :body)
  	end
end
