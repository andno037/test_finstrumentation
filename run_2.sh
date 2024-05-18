#gcc -O0 -finstrument-functions -g -c -o main.o main.c
rm main
rm main.o
rm trace.o
#g++ -finstrument-functions -g -c -o main.o main.c
gcc -o0 -finstrument-functions -g3 -c -o main.o main.c
gcc -c -o trace.o trace.c
gcc main.o trace.o -o main
./main
du -h main
cat trace.out
./readtracelog.sh main trace.out
