#!/usr/bin/env sh

env
if [[ -e /etc/meowcoin/meowcoind.conf ]]; then
    source /etc/meowcoin/meowcoind.conf
    /home/meowcoin/meowcoind \
      -server=$SERVER \
      -printtoconsole=$PRINTTOCONSOLE \
      -maxconnections=$MAXCONNECTIONS \
      -datadir=$DATADIR \
      -txindex=$TXINDEX \
      -assetindex=$ASSETINDEX \
      -debug=$DEBUG \
      -addressindex=$ADDRESSINDEX \
      -timestampindex=$TIMESTAMPINDEX \
      -spentindex=$SPENTINDEX \
      -zmqpubrawtx=$ZMQPUBRAWTX \
      -zmqpubhashblock=$ZMQPUBHASHBLOCK \
      -rpcbind=$RPCBIND \
      -rpcport=$RPCPORT \
      -rpcallowip=$RPCALLOWIP \
      -rpcuser=$RPCUSER \
      -rpcpassword=$RPCPASSWORD \
      -uacomment=$UACOMMENT \
      -bantime=$BANTIME \
      -mempoolexpiry=$MEMPOOLEXPIRY \
      -rpcworkqueue=$RPCWORKQUEUE \
      -maxmempool=$MAXMEMPOOL \
      -dbcache=$DBCACHE \
      -maxtxfee=$MAXTXFEE \
      -dbmaxfilesize=$DBMAXFILESIZE \
      -reindex=$REINDEX \
      -testnet=$TESTNET
else

  if [[ $SERVER ]]; then
    $SERVER_ARG = "-server=$SERVER"
  fi

  /home/meowcoin/meowcoind \
    $SERVER_ARG \
    -printtoconsole=$PRINTTOCONSOLE \
    -maxconnections=$MAXCONNECTIONS \
    -datadir=$DATADIR \
    -txindex=$TXINDEX \
    -assetindex=$ASSETINDEX \
    -debug=$DEBUG \
    -addressindex=$ADDRESSINDEX \
    -timestampindex=$TIMESTAMPINDEX \
    -spentindex=$SPENTINDEX \
    -zmqpubrawtx=$ZMQPUBRAWTX \
    -zmqpubhashblock=$ZMQPUBHASHBLOCK \
    -rpcbind=$RPCBIND \
    -rpcport=$RPCPORT \
    -rpcallowip=$RPCALLOWIP \
    -rpcuser=$RPCUSER \
    -rpcpassword=$RPCPASSWORD \
    -uacomment=$UACOMMENT \
    -bantime=$BANTIME \
    -mempoolexpiry=$MEMPOOLEXPIRY \
    -rpcworkqueue=$RPCWORKQUEUE \
    -maxmempool=$MAXMEMPOOL \
    -dbcache=$DBCACHE \
    -maxtxfee=$MAXTXFEE \
    -dbmaxfilesize=$DBMAXFILESIZE \
    -reindex=$REINDEX \
    -testnet=$TESTNET
fi
