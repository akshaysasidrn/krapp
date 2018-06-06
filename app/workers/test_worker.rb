class TestWorker
  include Sidekiq::Worker

  def perform(*args)
    Comment.create(comment: "Created comment at #{Time.current}")
  end
end
