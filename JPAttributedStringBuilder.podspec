Pod::Spec.new do |s|

  s.name         = "JPAttributedStringBuilder"
  s.version      = "0.1"
  s.summary      = "An easier way to work with NSAttributedStrings"

  s.description  = <<-DESC
                   A builder for JPAttributedStrings. Makes working working with NSAttributedStrings much easier.
                   DESC

  s.homepage     = "https://github.com/jPaolantonio/JPAttributedStringBuilder"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author    = "James Paolantonio"
  s.social_media_url   = "http://twitter.com/jPaolantonio"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/jPaolantonio/JPAttributedStringBuilder.git", :tag => "0.0.1" }
  s.source_files  = "JPAttributedStringBuilder", "JPAttributedStringBuilder/**/*.{h,m}"
  s.requires_arc = true

end
