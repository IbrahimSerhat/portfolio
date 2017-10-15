CarrierWave.configure do |config|
  config.sftp_host = ENV['CARRIERWAVE_FTP_HOST']
  config.sftp_user = ENV['CARRIERWAVE_FTP_USER']
  config.sftp_folder = ENV['CARRIERWAVE_FTP_FOLDER'] # "/public_html/uploads"
  config.sftp_url = ENV['CARRIERWAVE_FTP_URL'] # "http://example.com/uploads"
  config.sftp_options = {
      :password => ENV['CARRIERWAVE_FTP_PASSWD'],
      :port => ENV['CARRIERWAVE_FTP_PORT']
  }
end