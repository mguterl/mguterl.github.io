require 'rack/contrib'
require 'rack-rewrite'
require 'rack-canonical-host'

use Rack::CanonicalHost, 'michaelguterl.com'
use Rack::Static, :urls => ['/images'], :root => 'public'
use Rack::ETag
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
run Rack::Directory.new('public')
