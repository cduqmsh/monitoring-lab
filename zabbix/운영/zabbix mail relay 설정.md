* mail relay 설정 (zabbix 서버에서 메일서버 Relay 설정 시 설정 파일)

  /root/.muttrc
  
  set smtp_url = "smtp://mail.test.com:25"
  
  set from = "zabbix_pdf@test.net"
  
  set ssl_force_tls = no
