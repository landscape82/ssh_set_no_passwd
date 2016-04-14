# SSH Set No Passwd of Server Group
Batch script to set ssh login without no password

## Usage

1.Set servers info in run.sh :
```
ip_prefix=[the first 3 number of ip ] # like 192.168.228. 
ip_begin=[last number of ip from ] # like 4 
ip_end=[last number of ip to ] # like 28 
user=[user name ] # like root 
pwd=[password] # like 111111 
```
2.Then execute:

>./run.sh
