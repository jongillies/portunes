require 'spec_helper'
require 'portunes_server'
require 'shellwords'
require 'yaml'

describe 'Different Command Line Options' do
  it 'should fail with no options' do
    expect { PortunesServer::GemName.new({}) }.to raise_error
  end
  #
  it 'should succeed with minimum arguments' do
    args = 'my-argument'
    expect { PortunesServer::GemName.new(args.shellsplit, "banner", "version") }.not_to raise_error
  end
end
