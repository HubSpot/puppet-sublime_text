require 'spec_helper'

describe 'sublime_text::config' do
  let(:facts) { {:luser => 'testuser'} }

  let(:sublimedir) { "/Users/#{facts[:luser]}/Library/Application Support/Sublime Text 3" }
  let(:installedpackagedir) { "#{sublimedir}/Installed Packages" }

  it { should contain_file(sublimedir).with_ensure('directory') }
  it { should contain_file(installedpackagedir).with_ensure('directory') }
end
