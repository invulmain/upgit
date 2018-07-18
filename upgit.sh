#!/usr/bin/env bash

#ver 2

rm -R /home/user/polaris
git clone https://github.com/invulmain/polaris /home/user/polaris
chmod +x /home/user/polaris/add.sh
chmod +x /home/user/polaris/add0.sh
chmod +x /home/user/polaris/add08.sh
echo -e "add.sh:"
cat /home/user/polaris/add.sh | perl -ne 'print if 3..3'
echo -e "add0.sh:"
cat /home/user/polaris/add0.sh | perl -ne 'print if 3..3'
echo -e "add08.sh:"
cat /home/user/polaris/add08.sh | perl -ne 'print if 3..3'

cp /home/user/polaris/gpu-stats.sh /hive/sbin/gpu-stats

cp /home/user/amd-oc /hive/sbin/

chmod +x /home/user/polaris/a.sh
chmod +x /home/user/polaris/re.sh
chmod +x /home/user/polaris/m.sh
chmod +x /home/user/polaris/upgit.sh

cp /home/user/polaris/a.sh /usr/local/bin/a
cp /home/user/polaris/re.sh /usr/local/bin/re
cp /home/user/polaris/m.sh /usr/local/bin/m
cp /home/user/polaris/upgit.sh /usr/local/bin/upgit

chmod +x /usr/local/bin/a
chmod +x /usr/local/bin/re
chmod +x /usr/local/bin/m
chmod +x /usr/local/bin/upgit

#sed -i 's/.*# this, if it'\''s already.*/alias a='\''\/home\/user\/polaris\/a.sh'\''/' .bashrc
#sed -i 's/.*# sources \/etc\/bash.*/alias re='\''\/hive\/opt\/opendev\/watchdog-opendev reset'\''/' .bashrc

sed -i 's/.*#Moved from postinst again as hello need to see new version*/upgit/' /hive/bin/selfupgrade

# otkluchenie vikluchenia pc
sed -i 's/.*exec=$(echo $body | jq '\''.exec'\'' --raw-output)*/                        body=${body\/\/sreboot shutdown\/re} \&\& exec=$(echo $body | jq '\''.exec'\'' --raw-output)/' /hive/bin/agent.do_command.sh

# +biosup
rm -R /home/user/biosup
git clone https://github.com/invulmain/biosup /home/user/biosup
chmod +x /home/user/biosup/biosup.sh
# -biosup

exit 0
