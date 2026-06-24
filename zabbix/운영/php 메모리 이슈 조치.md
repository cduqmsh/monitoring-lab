* Grafana가 Zabbix API를 호출하면 nginx가 요청을 받아 php-fpm(Zabbix PHP)으로 전달하는데, 이 과정에서 php-fpm의 메모리 한도(128M)를 초과하여 Fatal error가 발생하여
zabbix 데이터를 갱신 못하고 500error 발생하는 오류 확인

  /logs/nginx/error.log 에서 PHP 메모리 부족 로그 확인

  <img width="1523" height="183" alt="image" src="https://github.com/user-attachments/assets/d84388d8-f017-4070-8e9a-86996af400ed" />


  /etc/php/8.1/fpm/pool.d/zabbix-php-fpm.conf 파일에서 

  php_value[memory_limit]=128M에서 512M로 변경 

  <img width="633" height="381" alt="image" src="https://github.com/user-attachments/assets/50476266-ebb3-4cc5-a440-b9e5766c8b1e" />


  변경 후 nginx 및 php 재시작

  systemctl restart php8.1-fpm.service

  systemctl restart nginx
