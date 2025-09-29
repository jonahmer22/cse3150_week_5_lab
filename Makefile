CXX := g++
CXXFLAGS := -std=c++17 -g -Wall -Wextra -pedantic
TARGET := solution
SRC := solution.cpp

.PHONY: all clean test

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -f $(TARGET) game_output.csv

test: $(TARGET)
	pytest test_game.py
