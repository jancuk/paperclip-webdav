

HTTP PUT - CDN - Paperclip

Upload [Paperclip](https://github.com/thoughtbot/paperclip) attachments to a remote server via webdav.

## Installation

Add this line to your application's Gemfile:

    gem 'paperclip-webdav', git: 'https://github.com/jancuk/paperclip-webdav.git'

And then execute:

    $ bundle


## Usage

#### In your rails model:

```ruby
class User < ActiveRecord::Base
  has_attached_file :avatar,

    # Choose the Webdav storage backend
    :storage => :webdav,

    # Set where to store the file on the Webdav server(s).
    # This supports Paperclip::Interpolations.
    :path => "/images/:attachment/:id/:style/:filename",
    
    # Hostname for generating links.
    :public_url => "http://cdn.example.com", # optional

    # The list of Webdav servers to use
    :webdav_servers => [
      {
        :url      => "http://webdav1.example.com",
        :query    => "?force_create_dir=1", #optional
        :username => "foo", # optional
        :password => "bar", # optional
      },
      # Add more servers if needed
      {
        :url      => "http://webdav1.example.com",
        :username => "foo", # optional
        :password => "bar"  # optional
      }
    ]
end
```

#### Or your config/application.rb (config/environments/*.rb):
