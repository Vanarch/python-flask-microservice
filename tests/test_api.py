from api import app


def test_get_users():
    with app.test_client() as c:
        res = c.get('/api/users/')
        assert res.status_code == 200
        data = res.get_json()
        assert isinstance(data, list)


def test_create_user():
    with app.test_client() as c:
        res = c.post('/api/users/', json={"name": "alice", "email": "alice@fakemail.com"})
        assert res.status_code == 201
        data = res.get_json()
        assert data['name'] == "alice"
        assert data['email'] == "alice@fakemail.com"
