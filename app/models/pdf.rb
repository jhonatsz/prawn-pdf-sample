class Pdf < ActiveRecord::Base
  has_attached_file :attach_file,
  :storage => :s3,
              :s3_credentials => "#{Rails.root}/config/aws.yml",
  :path => ":class/:attachment/:id/:style/:filename",
              :path => "klaseko-gcc-pdfs/:filename",
              :url => "s3_domain_url"


  def self.copy_and_delete(paperclip_file_path, raw_source)
    s3 = AWS::S3.new # create new S3 object
    destination = s3.buckets['klaseko-gcc-pdfs'].objects[paperclip_file_path]
    sub_source =CGI.unescape(raw_source)
    sub_source.slice(0)! # Removing the extra "/" of the file_path from the beggining
    source = s3.buckets['klaseko-gcc-pdfs'].objects["#{sub_source}"]
    source.copy_to(destination) # method from aws_gem
    source.delete # delete the tempfile
  end
end
