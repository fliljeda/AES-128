build: aes.cpp
	g++ aes.cpp -o aes.o

test: build aes.o aes_sample.in
	./aes.o < aes_sample.in 
	cat < aes_sample.ans | xxd -u -p
