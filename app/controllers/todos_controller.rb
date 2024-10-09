class TodosController < ApplicationController
  def index
    # text/plain
    # render plain: 'Hello World!'

    # erb
    # @hello = 'Hello World!'

    todo = { id: 1, done: true, desc: "foo" }
    render json: todo
  end

  def create
  end
end
