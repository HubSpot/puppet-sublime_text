require 'spec_helper'

describe 'sublime_text' do
  let(:build_version) { '3065' }
  it do
    should contain_package('Sublime Text').with({
      :provider => 'appdmg',
      :source   => 'http://c758482.r82.cf2.rackcdn.com/' +
                   "Sublime%20Text%20Build%20#{build_version}.dmg"
    })
  end
end
