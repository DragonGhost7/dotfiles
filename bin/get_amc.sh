#!/bin/bash

amc_price=$(curl -s https://finance.yahoo.com/quote/AMC\?p\=AMC\&.tsrc\=fin-srch | grep -io '"Trsdu(0.3s) Fw(b) Fz(36px) Mb(-4px) D(ib)" data-reactid="31">[0-9].\.[0-9].'  | grep -o "[0-9].\.[0-9].")

echo " AMC:$amc_price"
