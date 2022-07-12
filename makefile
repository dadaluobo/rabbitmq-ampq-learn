G++ = /usr/bin/g++
 
CFLAGS  = --std=c++14 -g -Wall 
INCLUDE = -I.
INCLUDE += -I/home/li/workspace/AMQP-CPP/include
LIB = -lpthread -ldl -levent
LIB += /home/li/workspace/AMQP-CPP/src/libamqpcpp.a.4.3.15

TARGET = preTradeTester
 
all: $(TARGET)
 
$(TARGET): $(TARGET).o
	$(G++) $(CFLAGS) $^ $(LIB) -o $(TARGET) 

$(TARGET).o: $(TARGET).cpp
	$(G++) $(CFLAGS) $(INCLUDE) -c $^

preTradeClient.o: preTradeClient.cpp
	$(G++) $(CFLAGS) $(INCLUDE) -c $^
	
clean:
	$(RM) $(TARGET) preTradeClient.o $(TARGET).o