class User < ActiveRecord::Base
  has_attached_file :attach_file,
  :storage => :s3,
              :s3_credentials => "#{Rails.root}/config/aws.yml",
              #:path => ":class/:attachment/:id/:style/:filename",
              :path => ":filename",
              :url => "s3_domain_url"
  #has_attached_file: invoice_file,
  #                   :path => "",
  #                   :url => "",
#
#                     :storage => "s3",
#                     :bucket => "",
#                     :s3_credentials => "",
#                     :access_key_id => "klasekoph@gmail.com",
#                     :secret_access_key => "Kl@sek00daddy"
end
