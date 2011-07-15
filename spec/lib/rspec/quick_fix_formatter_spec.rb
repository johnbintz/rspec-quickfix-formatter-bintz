require 'spec_helper'
require 'rspec/quick_fix_formatter'

describe RSpec::QuickFixFormatter do
  let(:output) { mock }

  let(:formatter) do
    formatter = described_class.new(output)
    formatter.stubs(:failed_examples).returns(failed_examples)
    formatter
  end

  let(:example) do
    stub(:file_path => path, :metadata => metadata)
  end

  let(:metadata) do
    {
      :line_number => line_number,
      :execution_result => {
        :exception => exception
      }
    }
  end

  let(:exception) { stub(:message => message) }

  let(:path) { 'path' }
  let(:line_number) { 100 }
  let(:message) { 'message' }

  let(:failed_examples) { [ example ] }

  it 'should dump the failed example' do
    output.expects(:puts).with("#{path}:#{line_number}:#{message}")

    formatter.dump_failures
  end
end

