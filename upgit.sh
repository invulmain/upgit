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

chmod +x /home/user/polaris/a.sh
alias a='/home/user/polaris/a.sh'

exit 0
