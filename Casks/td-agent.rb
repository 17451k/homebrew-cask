cask 'td-agent' do
  version '2.3.5-1'
  sha256 '2f2973ed29a3edd416cc5dad6b924751a2cdb8cdbb2792dc5344f3e13529b190'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/packages.treasuredata.com/2/macosx/td-agent-#{version}.dmg"
  appcast 'https://td-agent-package-browser.herokuapp.com/2/macosx'
  name 'td-agent'
  homepage 'https://www.fluentd.org/'

  pkg "td-agent-#{version}.pkg"

  uninstall pkgutil:   'test.treasuredatainc.pkg.td-agent',
            launchctl: 'td-agent'
end
