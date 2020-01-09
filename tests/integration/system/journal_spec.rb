
## Journal
#
describe file(' /etc/systemd/journald.conf.d/90-salt.conf') do
    it('should exist')
    its('content') { should match /^SystemMaxUse=50M/}
    its('content') { should match /^RuntimeMaxFiles=100/}
end
