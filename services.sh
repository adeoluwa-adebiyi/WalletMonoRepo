#!usr/bin/sh
eval $(cd projects/WalletAPIService && yarn start & >> /dev/null)
eval $(cd projects/WalletPaymentService && yarn start  & >> /dev/null)
eval $(cd projects/WalletFinanceService && yarn start  & >> /dev/null)
eval $(cd projects/WalletTransferService && yarn start  & >> /dev/null)