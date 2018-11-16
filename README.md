# ubuntu

docker build -t nc-ubuntu .

docker run --rm -it -p 9000:9000 --name daemon  nc-ubuntu

nc -lk -p 9000


#### In general the syntax for nc is :
// OpenBSD / macOS
nc -lk 7777

// other OSes
nc -lk -p 7777