class TaskMaker

  attr_reader :book

  public

  def initialize(book_id)
    @book = Book.find(book_id)
    @divisions = []
  end

  def run
    (1..number_of_tasks).each do |which|
      task_params = {}
      task_params[:book_id] = book.id
      task_params[:title] = title_for_task(which)
      task_params[:start_at] = start_at_for_task(which)
      Task.new(task_params).save
    end
  end

  private

  attr_accessor :divisions

  def chunk_size
    book.chunk_size
  end

  def number_of_tasks
    (book.count / chunk_size).round(0)
  end

  def book_divisions
    @offset = 1
    number_of_tasks.times do |n|
      divisions.push("#{@offset}-#{chunk_size * (n+1)}")
      @offset += chunk_size
    end
    divisions
  end

  def title_for_task(which)
    "#{book.title}, #{book_divisions[which-1]}"
  end

  def start_at_for_task(which)
    book.start_at + (which.days-1.day)
  end

end