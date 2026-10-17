from pathlib import Path

from streamlit.testing.v1 import AppTest

APP_PATH = Path(__file__).parents[1] / "src" / "portfolio_project" / "streamlit_app.py"


def test_streamlit_app_loads() -> None:
    app = AppTest.from_file(str(APP_PATH)).run()
    assert not app.exception
    assert app.title[0].value == "Portfolio Project"
