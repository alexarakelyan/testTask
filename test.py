import requests

def integration_test():
    expected_response = "Hello World!"
    r = requests.get('http://localhost:8088/')
    print("Response OK")
    assert r.text == expected_response, "Wrong Response"

if __name__ == '__main__':
    integration_test()
