#!/usr/bin/env bash

#ver 1

rm -R /home/user/polaris
git clone https://github.com/invulmain/polaris /home/user/polaris
chmod +x /home/user/polaris/add.sh
chmod +x /home/user/polaris/add08.sh
echo -e "add.sh:"
cat /home/user/polaris/add.sh | perl -ne 'print if 3..3'
echo -e "add08.sh:"
cat /home/user/polaris/add08.sh | perl -ne 'print if 3..3'
exit 0
