TARGET = hello_ppc

CXX = powerpc-linux-gnu-g++
CXXFLAGS = -Wall -O2 -static

SRCS = hello.cpp
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)