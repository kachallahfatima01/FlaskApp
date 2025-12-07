import pytest
from app import app

def test_index():
    tester = app.test_client()
    response = tester.get('/')
    assert response.status_code == 200
    assert b"Greetings, World from Dockerized Flask App!!!" in response.data

def test_index():
    tester = app.test_client()
    response = tester.get('/')
    assert response.status_code == 200
    assert b"Greetings, World from Dockerized Flask App!!!" in response.data

def test_force_failure():
    assert False, "Intentional failure for email test"