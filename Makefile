app_name=1brc-go
app_version=0.1.0

bin_path=bin
src_path=src
gen_path=gen
data_path=$(gen_path)/data
measurements_file=measurements.txt

green=\033[0;32m
yellow=\033[0;33m
red=\033[0;31m
nc=\033[0m

all: clean test build

clean:
	@echo "$(green)Cleaning up...$(nc)"
	@go clean
	@rm -rf $(bin_path)

build: clean
	@echo "$(green)Building...$(nc)"
	@mkdir -p $(bin_path)
	@go build -o $(bin_path)/$(app_name) ./$(src_path)
	@echo "$(green)Build complete!$(nc)"

run: setup build
	@echo "$(green)Running...$(nc)"
	@./$(bin_path)/$(app_name)

test:
	@echo "$(green)Running tests...$(nc)"
	@go test -v ./...

format:
	@echo "$(green)Running formatter...$(nc)"
	@go fmt ./...
	@goimports -w .

setup:
	@echo "$(green)Checking for $(yellow)$(measurements_file)$(green)...$(nc)"
	@if [ ! -f ./$(data_path)/$(measurements_file) ]; then \
		echo "$(red)Error: $(yellow)$(measurements_file)$(nc) not found."; \
		echo "$(green)Generating $(yellow)$(measurements_file)$(nc)...$(nc)"; \
		cd $(gen_path); \
		python3 create_measurements.py 1_000_000_000; \
		cd ..; \
	fi
