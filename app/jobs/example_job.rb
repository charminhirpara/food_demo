# frozen_string_literal: true

class ExampleJob < ActiveJob::Base
  # Set the Queue as Default
  queue_as :default

  def perform(*args)
    # Perform Job
    puts '------'
    puts 'Step 1'
    puts 'Step 2'

    puts args[0][:a]
    puts '------'
  end
end
