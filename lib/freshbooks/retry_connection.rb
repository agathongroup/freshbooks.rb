module FreshBooks
  class RetryConnection < FreshBooks::Connection

    def call_api(method, elements = [])
      3.times do
        begin
          result = super(method, elements)
          return result
        rescue Exception => e

        end
      end
      raise e
  end
end