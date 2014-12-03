S3DirectUpload.config do |c|
  c.access_key_id = "klasekoph@gmail.co,"
  c.secret_access_key = "Kl@sek00daddy"
  c.bucket = "klaseko-gcc-pdfs"
  c.region = "s3"
  c.url ="https://#{c.bucket}.s3.amazonaws.com/"

end
