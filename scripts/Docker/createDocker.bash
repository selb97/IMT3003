
openstack server create \
--image 1676adb4-9657-42ed-b31f-b3907cbcd697 \ #Ubuntu Server 18.04 LTS (Bionic Beaver) amd64 
--flavor 3d0d6b55-971e-4fe6-9c90-f9c059ff70ca \ #	m1.tiny
--key-name managerKey $1

sleep 60

IP=$(openstack server $1 | awk 'FNR == 13 {print $4}' | awk -F'=' '{print $2}')

echo $IP
