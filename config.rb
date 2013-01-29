###
# Page options, layouts, aliases and proxies
###

page "index.html", :layout => 'plain'

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :js_assets_paths, %w(vendor)

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  set :http_prefix, '/presentations'

  # Compress PNGs after build
  require "middleman-smusher"
  activate :smusher
end