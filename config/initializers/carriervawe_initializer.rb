CarrierWave.configure do |config|
  config.ftp_host = ENV['CARRIERWAVE_FTP_HOST']
  config.ftp_port = ENV['CARRIERWAVE_FTP_PORT']
  config.ftp_user = ENV['CARRIERWAVE_FTP_USER']
  config.ftp_passwd = ENV['CARRIERWAVE_FTP_PASSWD']
  config.ftp_folder = ENV['CARRIERWAVE_FTP_FOLDER'] # "/public_html/uploads"
  config.ftp_url = ENV['CARRIERWAVE_FTP_URL'] # "http://example.com/uploads"
  config.ftp_passive = false # false by default
end