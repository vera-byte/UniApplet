# 默认目标
all: clean build

# 清理项目
clean:
	@echo "Cleaning project..."
	./scripts/clean_flutter_project.sh

podlint:
	@echo "Pod lint..."
	./scripts/build_log.sh

# 构建项目
build:
	@echo "Building project..."
	flutter build ./example

# 添加其他您可能需要的目标，例如运行或测试
run:
	@echo "Running project..."
	cd example 
	@echo pwd
	flutter run

test:
	@echo "Running tests..."
	flutter test ./example
