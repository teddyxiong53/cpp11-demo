CXX := g++
CXXFLAGS := -std=c++11 -Wall -Wextra

SRCS := $(wildcard *.cpp)
EXES := $(SRCS:.cpp=)

all: $(EXES)

%: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f $(EXES)

.PHONY: all clean