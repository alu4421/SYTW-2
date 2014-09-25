def my_twitter_client
  Twitter::REST::Client.new do |config|
    config.consumer_key        = 'qalDf8dV4xkRHf5QAOkHD9awa'
    config.consumer_secret     = 'JDUcGxtfpq0M4689PYDJeKdvdCf616OfR8l55WV803R0ocAmUF'
    config.access_token        = '2830583060-tDSSa32Pi0rotAuyw4KWTccqRU7E4TcBe1fjmQr'
    config.access_token_secret = 'rI5ZVjbcnG1YutNWMjDaLQtjMEIEzuadPmlAZRSh3pVke'
  end
end
