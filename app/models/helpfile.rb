class Helpfile < ActiveRecord::Base
  validates_presence_of :title, :url
  
  validates_uniqueness_of :title
  
  validates_format_of :url,
    :with => %r{\.(html|htm|txt)$}i,
    :message => 'must be a URL for HTML or text file. '
end
