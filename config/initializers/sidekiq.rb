Rails.application.config.active_job.queue_adapter = :sidekiq

Sidekiq.configure_server do |config|
  config.redis = { url: Shipit.redis_url.to_s }
end

Sidekiq.configure_client do |config|
  config.redis = { url: Shipit.redis_url.to_s }
end
