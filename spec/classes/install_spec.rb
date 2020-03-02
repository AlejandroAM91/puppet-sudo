require 'spec_helper'

describe 'sudo::install' do
  let(:title) { 'Sudo Install' }

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

      context 'with $package_manage => true' do
        let(:params) { { 'package_manage' => true } }

        include_examples 'package_manage'
      end

      context 'with $package_manage => false' do
        let(:params) { { 'package_manage' => false } }

        include_examples 'common'
        it { is_expected.not_to contain_package('sudo') }
      end
    end
  end
end
