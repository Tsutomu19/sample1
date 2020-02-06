class TodolistsController < ApplicationController
  def new
  	#Viewへ受け渡すためのインスタンス変数にからのモデルオブジェクトを生成する
  	@list = List.new
  end
  def create
  	list  = List.new(list_params)
  	list.save
  	redirect_to '/top'
  end
  private

  def list_params
  	params.repuire(:list).permit(:title,:body)
  end
end
