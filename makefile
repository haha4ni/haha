# 宣告一個變數來存儲編譯器的名稱
CC = gcc

# 宣告一個變數來存儲編譯器的參數
CFLAGS = -o

# 獲取當前目錄下所有的.c文件
SRC_FILES = $(wildcard *.c)

# 從.c文件名獲取對應的.o文件名
OBJ_FILES = $(SRC_FILES:.c=.o)

# 預設的目標，即執行`make`命令時會執行的目標
all: hello.exe

# 生成hello.exe目標
hello.exe: $(OBJ_FILES)
	$(CC) $(CFLAGS) hello.exe $(OBJ_FILES)

# 針對每個.c文件生成對應的.o文件
%.o: %.c
	$(CC) -c $< -o $@

# 清理生成的目標文件和可執行文件
clean:
	del $(OBJ_FILES) hello.exe
