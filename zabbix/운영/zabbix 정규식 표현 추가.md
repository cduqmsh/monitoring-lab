* 리눅스 서버에 zabbix-agent 설치 후 별도로 Zabbix에서 디스크 수집 설정을 해주지 않아도  자동으로  "Mounted filesystem discovery" 템플릿을 통해 수집함

* 수집이 안되는 경우 해당 템플릿의 규칙 확인이 필요 *


  1. 디스커버리 규칙 확인 화면
    - 정규표현식에 일치하는 파일시스템타입 수집 이라는 필터가 적용이 되어 있음
      <img width="1432" height="367" alt="image" src="https://github.com/user-attachments/assets/b9480acf-7b0e-4a9f-8456-5a482e38b91a" />



  2. 정규표현식 설정 화면 ( 관리 > 일반 > 정규표현식 )
   - 자동으로 수집이 되어야하는데 안되는 경우 디스커버리의 정규표현식 확인 
   - 기존에 File system for discovery 규칙에 nfs4 가 없어 nfs4 추가 및 파일시스템타입 nfs4 정상 수집 확인
     <img width="1432" height="367" alt="image" src="https://github.com/user-attachments/assets/782dee79-9e3d-4baa-9f1f-6228f30445a1" />

    

