class AwsQueue
  def initialize
    Aws.config.update({
      region: 'us-west-2',
      credentials: Aws::Credentials.new('akid', 'secret')
    })
    @sqs = AWS::SQS.new
  end

  def queue_name
    "test_goapp"
  end

  def send(email)
    queue = @sqs.queues.named(queue_name)
    queue.send_message(queue_message(email))
  end

  def queue_message(email)
    { email: email }.to_json
  end
end
