source "https://rubygems.org"

gem "jekyll", ">=3.8.6"

# plugins
group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-redirect-from"
  gem "jekyll-seo-tag", "~> 2.6.1"
  gem "jekyll-archives"
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

group :test do
  gem "html-proofer"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
#install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  
#end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :install_if => Gem.win_platform?