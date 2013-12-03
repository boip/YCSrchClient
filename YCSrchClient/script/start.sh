YCSrchDIR=/home/was/srch
JAVA_HOME=/home/was/was85/java/jre/bin
JavaPNO=`ps -ef | grep java | grep ${YCSrchDIR} | awk '{print $2 }'`
echo $JavaPNO
cd $YCSrchDIR
if [ "${JavaPNO}" -gt 0 ]
then
        echo "java process is running, cannot start it!!! "
else
        echo "java process is starting..." 
        cd $YCSrchDIR
        $JAVA_HOME/java -Dfile.encoding=UTF-8 -classpath $YCSrchDIR/conf:$YCSrchDIR/lib/mmseg4j-core-1.9.1.jar:$YCSrchDIR/lib/mmseg4j-solr-1.9.1.jar:$YCSrchDIR/lib/mmseg4j-analysis-1.9.1.jar:$YCSrchDIR/lib/solr-solrj-4.3.1.jar:$YCSrchDIR/lib/wstx-asl-3.2.7.jar:$YCSrchDIR/lib/slf4j-api-1.6.6.jar:$YCSrchDIR/lib/slf4j-log4j12-1.6.6.jar:$YCSrchDIR/lib/log4j-1.2.16.jar:$YCSrchDIR/lib/noggit-0.5.jar:$YCSrchDIR/lib/jul-to-slf4j-1.6.6.jar:$YCSrchDIR/lib/httpclient-4.2.3.jar:$YCSrchDIR/lib/httpcore-4.2.2.jar:$YCSrchDIR/lib/httpmime-4.2.3.jar:$YCSrchDIR/lib/jcl-over-slf4j-1.6.6.jar:$YCSrchDIR/lib/zookeeper-3.4.5.jar:$YCSrchDIR/lib/commons-logging.jar:$YCSrchDIR/lib/commons-io-2.4.jar:$YCSrchDIR/lib/commons-jxpath-1.3.jar:$YCSrchDIR/lib/commons-lang-2.6.jar:$YCSrchDIR/lib/commons-dbcp.jar:$YCSrchDIR/lib/commons-configuration-1.9.jar:$YCSrchDIR/lib/commons-codec-1.3.jar:$YCSrchDIR/lib/commons-collections.jar:$YCSrchDIR/lib/commons-beanutils.jar:$YCSrchDIR/lib/commons-pool-1.5.6.jar:$YCSrchDIR/lib/YCSrchClient-1.0.jar com.yuchengtech.tail4solr.TailMain &
fi
