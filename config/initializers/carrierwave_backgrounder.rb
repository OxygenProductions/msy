CarrierWave::Backgrounder.configure do |c|
  #c.backend :delayed_job, queue: :carrierwave
  # c.backend :resque, queue: :carrierwave
<<<<<<< HEAD
  c.backend :sidekiq, queue: :default
=======
  c.backend :sidekiq, queue: :carrierwave
>>>>>>> a9de3ff4fe6633590b90c8b0158dcc2f91cb21ac
  # c.backend :girl_friday, queue: :carrierwave
  # c.backend :qu, queue: :carrierwave
  # c.backend :qc
end
