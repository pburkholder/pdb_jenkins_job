#
# Cookbook Name:: pdb_jenkins_job
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'pdb_jenkins_job::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run # This should not raise an error
    end

    it 'creates pdb_jenkins_job' do
      expect(chef_run).to create_jenkins_job('pdb_jenkins_job')
    end
  end
end
