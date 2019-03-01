require 'json'
require 'rest-client'

class ThymePluginHabitica
  def initialize(thyme, options={})
    @thyme = thyme
    @task_ids = options[:task_ids]
    @silent = options[:silent]
    @api_url_base = "https://habitica.com/api/v3"
    @api_headers = {'x-api-user': options[:api_user],
                    'x-api-key': options[:api_key]}
  end

  # Hooks

  def after(seconds_left)
    return if @thyme.break or seconds_left > 0

    for task_id in @task_ids
      task = get_task(task_id)
      if task['completed']
          puts "Habitica task \"#{task['text']}\" was already completed" unless @silent
          next
      end
      score_task(task_id)
      puts "Habitica task \"#{task['text']}\" has been scored up" unless @silent
    end
  end

  private

  def get_task(task_id)
    habitica_request(:get, "/tasks/#{task_id}")
  end

  def score_task(task_id)
    habitica_request(:post, "/tasks/#{task_id}/score/up")
  end

  def habitica_request(method, path)
    response = RestClient::Request.execute(
        'method': method,
        'url': "#{@api_url_base}#{path}",
        'headers': @api_headers
    )
    JSON.parse(response)['data']
  end
end

