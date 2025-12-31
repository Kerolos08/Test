CXX = g++
CXXFLAGS = -std=c++17 -Isrc -Wno-sign-compare -Wno-switch -Wno-unknown-pragmas
TARGET = BankSystem
SRC = src/main.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
