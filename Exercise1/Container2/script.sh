while true;
  do echo `date`  "  " `curl -s 192.168.1.88:8080`;
     sleep 10;
  done;
