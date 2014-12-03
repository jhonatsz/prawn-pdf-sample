 Raffle < ActiveRecord::ase
  has_attach_file :attach_file,
  :storage => :s3,
              :s3_credentials => "#{Rails.root}/config/aws.yml",
  :path => ":class/:attachment/:id/:style/:filename",
              :path => "klaseko-gcc-pdfs/:filename",
              :url => "s3_domain_url"
end
