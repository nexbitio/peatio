# encoding: UTF-8
# frozen_string_literal: true

def catch_and_report_exception(options = {})
  begin
    yield
    nil
  rescue options.fetch(:class) { StandardError } => e
    report_exception(e)
    e
  end
end

def report_api_error(exception, request)
  Rails.logger.info message: exception.message, path: request.path, params: request.params
end

def report_exception(exception, report_to_ets = true)
  report_exception_to_screen(exception)
  report_exception_to_ets(exception) if report_to_ets
end

def report_exception_to_screen(exception)
  Rails.logger.error(exception.inspect)
  Rails.logger.error(exception.backtrace.join("\n")) if exception.respond_to?(:backtrace)
end

def report_exception_to_ets(exception)
  Raven.capture_exception(exception) if defined?(Raven)
rescue => ets_exception
  report_exception(ets_exception, false)
end
