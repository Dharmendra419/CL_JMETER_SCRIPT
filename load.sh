
#!/bin/bash

echo "Enter No of Threads"
read  THREADS

echo "Enter Rampup"
read  RAMPUP

echo "Enter LoopCount"
read  LOOP

mkdir loadtest-fun/


~/apache-jmeter-5.4.3/bin/jmeter -n -t elev8.jmx -l loadtest-fun/test.csv -e -o loadtest-fun/ -Jthread=$THREADS -Jrampup=$RAMPUP -Jloop=$LOOP
