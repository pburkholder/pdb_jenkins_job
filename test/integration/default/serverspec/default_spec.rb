require 'spec_helper'

describe 'pdb_jenkins_job::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'does something' do
    skip 'Replace this with meaningful tests'
  end

  describe file('/var/lib/jenkins/jobs/pdb_jenkins_job') do
    it { should contain 'https://github.com/pburkholder/pdb_jenkins_job' }
  end

end
