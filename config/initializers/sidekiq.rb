Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis-service:6379' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis-service:6379' }
end
