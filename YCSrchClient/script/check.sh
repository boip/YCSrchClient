YCSrchDIR=/home/was/srch
export YCSrchDIR

JavaPNO=`ps -ef | grep java | grep ${YCSrchDIR} | awk '{print $2 }'`
echo $JavaPNO
AC=`ps -ef | grep java | grep ${YCSrchDIR} | awk '{print $1 }'`
echo $AC
if [ "${JavaPNO}" -gt 0 ]
then
        echo "java process is running" 
else
        echo "no adapter java process is running "
        exit 0
fi
