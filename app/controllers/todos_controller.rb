class TodosController < ApplicationController
  def index
    # text/plain
    # render plain: 'Hello World!'

    # erb
    # @hello = 'Hello World!'

    todos = Todo.all
    objects = todos.map { |todo| { id: todo.id, done: todo.done, desc: todo.desc } }
    
    object = objects
    render json: object
  end

  def create
    @todo = Todo.create(done: false, desc: "foo")
  end
end
