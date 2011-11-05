class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  include Mongoid::Taggable
  cache
  
  field :title, :type => String
  field :body, :type => String
  field :published, :type => Boolean
end
