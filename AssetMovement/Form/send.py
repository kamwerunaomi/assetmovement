import requests
headers={}
headers['Authorization'] = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjE2MDQ5NzE1LCJqdGkiOiI1MzY0ZDVmZmQ5NDU0MGViOTZhMGE3MDNjNjk5MjEzYyIsInVzZXJfaWQiOjF9.whI9D46c0ZKsV22CnllBFTlUGREh1N0yIGIQmR_zjks'
r=requests.get('http://127.0.0.1:8000/paradigms', headers=headers)

print(r.text)