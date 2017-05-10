#
# Be sure to run `pod lib lint MastodonKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MastodonKit'
  s.version          = '1.0.6'
  s.summary          = "MastodonKit is a Swift Framework that wraps Mastodon's API."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  MastodonKit is a Swift Framework built using Swift Package Manager that wraps the 
  Mastodon API. Its goal is to cover all the entities and endpoints from Mastodon's 
  API.
                       DESC

  s.homepage         = 'https://github.com/ornithocoder/MastodonKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ornithocoder' => '' }
  s.source           = { :git => 'https://github.com/ornithocoder/MastodonKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/**/*.swift'
  
  # s.resource_bundles = {
  #   'MastodonKit' => ['MastodonKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
