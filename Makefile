# Name: Makefile

EXECUTOR	= yasl_linux
EX00		= yasl_hw
EX01		= yasl_aff_param
EX02		= yasl_do
EX03		= yasl_repeat
EX04		= yasl_fact
EX05		= yasl_split
EX06		= yasl_interactive

begin		:
	@echo "chmod +x successfully applied"
	@chmod +x $(EXECUTOR)
	@chmod +x $(EX00)
	@chmod +x $(EX01)
	@chmod +x $(EX02)
	@chmod +x $(EX03)

all			: begin ex00 ex01 ex02

ex00		:
	@echo "Executing ex00:"
	@chmod +x $(EX00)
	./$(EX00)

ex01		:
	@echo "Executing ex01:"
	@chmod +x $(EX01)
	./$(EX01) Hello world 42 Be cool

ex02		:
	@echo "Executing ex02:"
	@chmod +x $(EX02)
	./$(EX02) 2 + 2

ex03		:
	@echo "Executing ex03:"
	@chmod +x $(EX03)
	./$(EX03) 1 "************" "******" "****" "---"

ex04		:
	@echo "Executing ex04:"
	@chmod +x $(EX04)
	./$(EX04) 5

ex05		:
	@echo "Executing ex05:"
	@chmod +x $(EX05)
	./$(EX05)  " " " Lorem ipsum dolor sit amet, consectetur adipiscing elit. "

ex06		:
	@echo "Executing ex06:"
	@chmod +x $(EX06)
	./$(EX06)

.PHONY		: begin all ex00 ex01 ex02 ex03 ex04 ex05 ex06
