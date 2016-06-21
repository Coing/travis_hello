
	CC = gcc
	CFLAGS = -c -Wall -O -g  
	
	LDFLAGS = 

	objects = hello.o

	target = hello

all:
	make $(target)

test:
	make $(target)
	
$(target) : $(objects)
		$(CC)  -o  $(target)  $(objects) $(LDFLAGS)
hello.o : hello.c
		$(CC) $(CFLAGS) hello.c
clean :
		rm $(target) $(objects)


dep:
	$(CC) -MM $(CFLAGS) hello.c
		
.PHONY : clean
 
print:
	@echo "CFLAGS: "  $(CFLAGS)
	@echo "LDFLAGS: "  $(LDFLAGS)
	@echo "target: "  $(target)
	@echo "CC: "  $(CC)
