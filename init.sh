sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &
sudo apt-get install software-properties-common python-software-properties
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-master.sh
sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077
# sudo apt-get install -y software-properties-common python-software-properties && sudo apt-add-repository ppa:webupd8team/java && 
ssh node-1 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-2 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-3 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'

ssh node-4 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'

ssh node-5 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'

ssh node-6 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-7 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc557.emulab.net:7077 && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'




bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://pc557.emulab.net:7077  --executor-memory 10G --driver-memory 10G --driver-cores 3 --executor-cores 3 arizho/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar /mnt/extra/twitter_rv.net 

bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://pc557.emulab.net:7077  --executor-memory 10G --driver-memory 10G arizho/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar /mnt/extra/twitter_rv.net 

bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://localhost:8080  ../../../itb/pat/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar twitter_rv.net


ssh node-1 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-2 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-3 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-4 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-5 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-6 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-7 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-8 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'
ssh node-9 -t 'sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &'


# iti

sudo apt-get update
sudo apt-get install -y openjdk-8-jre-headless
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-master.sh

ssh node-1 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-2 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-3 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-4 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-5 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-6 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-7 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-8 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-9 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'


sudo bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://pc803.emulab.net:7077 --executor-cores 5 --executor-memory 9G --num-executors 54 --driver-memory 50G --driver-cores 3 /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/arizho/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar /mnt/extra/twitter_rv.net 

ssh node-1 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-2 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-3 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-4 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-5 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-6 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-7 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-8 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'
ssh node-9 -t 'sudo apt-get update && sudo apt-get install -y openjdk-8-jre-headless && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc803.emulab.net:7078'


sudo bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://pc803.emulab.net:7078 --executor-cores 5 --executor-memory 9G --num-executors 54 --driver-memory 50G --driver-cores 3 /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/arizho/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar /mnt/extra/twitter_rv.net 

