require 'rack/contrib'
require 'rack-rewrite'
require 'rack-canonical-host'

use Rack::Static, :urls => ['/images'], :root => 'public'
use Rack::ETag
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
use Rack::CanonicalHost, 'michaelguterl.com'
run Rack::Directory.new('public')
