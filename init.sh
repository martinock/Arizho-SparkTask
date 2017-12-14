sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra &
sudo apt-get install software-properties-common python-software-properties
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
# sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y openjdk-8-jre-headless
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-master.sh
sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077
# sudo apt-get install -y software-properties-common python-software-properties && sudo apt-add-repository ppa:webupd8team/java && 
ssh node-1 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077  && sudo unzip /proj/ucare/kristiantokarim/test/twitter_rv.zip -d /mnt/extra/'
ssh node-2 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077'
ssh node-3 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077'

ssh node-4 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077'

ssh node-5 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077'
ssh node-6 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077'
ssh node-7 -t 'sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository -y ppa:webupd8team/java && sudo apt-get update && sudo apt-get install -y oracle-java8-installer && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 && sudo /proj/ucare/arizho/spark-2.2.0-bin-hadoop2.7/sbin/start-slave.sh spark://pc477.emulab.net:7077'




bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://pc477.emulab.net:7077 ../../../itb/pat/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar twitter_rv.net

bin/spark-submit --class com.tugaspat.tugasspark.SecondLevelFollowers --master spark://localhost:8080  ../../../itb/pat/Arizho-SparkTask/target/scala-2.11/spark-second-followers_2.11-1.0.jar twitter_rv.net