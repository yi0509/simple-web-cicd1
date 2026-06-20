import pytest
from app import app

def test_index_route():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert b'CI/CD' in response.data
    assert b'学号' in response.data
    assert b'姓名' in response.data