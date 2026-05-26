#!/bin/bash

workerip=190
vmip=170

node_end=6
port_end=7

invid=0
for nodes in {0..6}
do
	for ip in {0..7}
	do
		t=0	# for prevent inner for error

		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'apt install ntp ntpstat rdate ntpdate -y' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'apt install libboost-program-options-dev -y' &
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) '/etc/init.d/ntp stop' &
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'apt install chrony -y' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'chronyc tracking' &	# check chronyc working
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'systemctl status chrony' &

		# echo "[$(($WORKER_IP+$nodes)):$((3355+$ip))]"
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'zcat /var/log/unattended-upgrades/unattended-upgrades.log.3.gz | grep "upgraded"'
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) "cat /var/tmp/wsklogs/invoker${invid}/invoker${invid}_logs.log | grep 70707eae65164aefb07eae65161aefc6"
		# invid=$((invid+1))

		# check chronyc working sequentially
		# echo "[$(($WORKER_IP+$nodes)):$((3355+$ip))] chronyc..."
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'chronyc -a tracking'
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'chronyc sources'

		# echo "[$(($WORKER_IP+$nodes)):$((3355+$ip))] git status..."
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd openwhisk_metric/; git status'

		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'mv openwhisk_metric/ openwhisk_metric_prev/' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'git clone https://github.com/sangwoongk/openwhisk_metric.git; cd openwhisk_metric; git checkout vm-nokafka' &

		#echo $nodes, $ip
		#ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'ntpdate 10.150.21.197' &
		#sleep 30

		# clear invoker log
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) "echo > /var/tmp/wsklogs/invoker${invid}/invoker${invid}_logs.log" &
		# invid=$((invid+1))

		# pull images required to locust experiment
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/numpy:1.0.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/pyaes:1.0.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/markdown:1.0.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull openwhisk/action-python-v3.7:1.17.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/sentiment:1.0.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/imgprocess:1.0.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/imgresize:1.0.0' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker pull sangroad/chameleon:1.0.0' &

		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'docker rmi -f $(docker images -q)' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'ibstat' &

		# extend LVM capacity
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'lvextend -l +90%FREE /dev/ubuntu-vg/ubuntu-lv'
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv'

		# pull latest pickme openwhisk
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; git pull origin vm-nokafka' &
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; git pull origin vm-metric' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'apt install -y linux-tools-common linux-tools-generic linux-tools-4.15.0-200-generic' &
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; git config user.email "sw.kim@dgist.ac.kr"; git config user.name "Sangwoong Kim"' &
		# TODO: change VM config to `cpu-passthrough` and install g++-8 to build monitor

		# initial setup for pickme
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; ./gradlew distDocker' &	# build all components
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; ./gradlew :core:invoker:distDocker' &	# build invoker only
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk-comp/openwhisk-harv-vm-cgroup-azure-distributed/; ./gradlew :core:invoker:distDocker' &	# build invoker only - mws
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk-comp/openwhisk-harv-vm-cgroup-azure-distributed-jsq/; ./gradlew :core:invoker:distDocker' &	# build invoker only - jsq
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'snap install cmake --classic' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'git clone --recursive https://github.com/dmlc/xgboost; cd xgboost; mkdir build' &
		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd xgboost/build; cmake ..; make install' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'apt install -y libboost-iostreams-dev' &

		# change cmake version
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'snap remove cmake' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'snap install cmake --channel=3.17/stable --classic' &

		#sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; git checkout breakdown' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric; git checkout vm-nokafka' &
		# sudo scp -P $((3355+$ip)) ../core/invoker/src/main/scala/org/apache/openwhisk/core/containerpool/ContainerPool.scala root@10.150.21.$(($workerip+$nodes)):~/openwhisk_metric/core/invoker/src/main/scala/org/apache/openwhisk/core/containerpool/ContainerPool.scala &
		# sudo scp -P $((3355+$ip)) ../core/invoker/src/main/scala/org/apache/openwhisk/core/containerpool/ContainerProxy.scala root@10.150.21.$(($workerip+$nodes)):~/openwhisk_metric/core/invoker/src/main/scala/org/apache/openwhisk/core/containerpool/ContainerProxy.scala &
		# sudo scp -P $((3355+$ip)) ../common/scala/src/main/scala/org/apache/openwhisk/common/TransactionId.scala root@10.150.21.$(($workerip+$nodes)):~/openwhisk_metric/common/scala/src/main/scala/org/apache/openwhisk/common/TransactionId.scala &
		# sudo scp -P $((3355+$ip)) ../core/invoker/src/main/scala/org/apache/openwhisk/core/containerpool/PICKMESocket.scala root@10.150.21.$(($workerip+$nodes)):~/openwhisk_metric/core/invoker/src/main/scala/org/apache/openwhisk/core/containerpool/PICKMESocket.scala &
		# sudo scp -P $((3355+$ip)) ../core/invoker/src/main/scala/org/apache/openwhisk/core/invoker/InvokerReactive.scala root@10.150.21.$(($workerip+$nodes)):~/openwhisk_metric/core/invoker/src/main/scala/org/apache/openwhisk/core/invoker/InvokerReactive.scala &
		# sudo scp -P $((3355+$ip)) ../monitor/perfBuild.sh root@10.150.21.$(($workerip+$nodes)):~/openwhisk_metric/monitor 
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'pkill monitor' &
		# sudo ssh -p $((3355+$ip)) root@10.150.21.$(($workerip+$nodes)) 'cd /root/openwhisk_metric/monitor; ./perfBuild.sh' &
	done
done

wait < <(jobs -p)
echo "Complete!"
