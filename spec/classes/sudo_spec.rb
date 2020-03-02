require 'spec_helper'

describe 'sudo' do
  let(:title) { 'Sudo' }

  shared_examples 'common' do
    it { is_expected.to compile }
  end

  shared_examples 'package_manage' do
    include_examples 'common'
    it {
      is_expected.to contain_package('sudo')
        .with('ensure' => 'present')
    }
  end

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      include_examples 'package_manage'
    end
  end
end
