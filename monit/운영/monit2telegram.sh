#------------------------------------------------------------
# monit 트리거 발생 시 텔레그램으로 발송하는 알림 스크립트
# Proxy 를 사용해야할 경우 Proxy 설정
#------------------------------------------------------------

#!/bin/bash
#
# Monit EXEC handler that sends monit notifications via Telegram
#
# Depends on having `/usr/local/bin/sendtelegram` installed and a config file in `/etc/telegramrc`
#
export HTTPS_PROXY=1.1.1.1:3128
/etc/monit/alert/sendtelegram.sh -p html -m "<strong>*** MONIT ALERT ***</strong>
<pre>*** Event: $MONIT_EVENT                    </pre>
<pre>Host: $MONIT_HOST
Date: $MONIT_DATE
Service: $MONIT_SERVICE
Description: $MONIT_ACTION $MONIT_DESCRIPTION</pre>"
set HTTPS_PROXY
