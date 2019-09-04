echo "--------------------list of docker containers-----------"
sudo docker ps 
echo "---------------- status of nexec container-------------"
sudo docker ps | grep nexec
echo "---------------- status of cron container-------------"
sudo docker ps | grep cron
echo "---------------- status of steptrigger container-------------"
sudo docker ps | grep steptrigger
echo "---------------- status of runtrigger container-------------"
sudo docker ps | grep runtrigger
echo "---------------- status of pipelinesync container-------------"
sudo docker ps | grep pipelinesync
echo "---------------- status of www container-------------"
sudo docker ps | grep www
echo "---------------- status of api container-------------"
sudo docker ps | grep api
echo "------------------api responce------------"
curl localhost:30000 \n
echo "------------------www responce------------"
curl localhost:30001
