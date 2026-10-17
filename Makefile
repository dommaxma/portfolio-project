# Install project dependencies
install:
	poetry install

# Format Python files
format:
	poetry run black src tests

# Check formatting without changing files
format-check:
	poetry run black --check src tests

# Check code quality
lint:
	poetry run ruff check src tests

# Check type annotations
type-check:
	poetry run mypy src tests

# Run tests
test:
	poetry run pytest

# Run all checks
check: format-check lint type-check test

# Start Streamlit app
run:
	poetry run streamlit run src/portfolio_project/streamlit_app.py