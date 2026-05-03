'''import json

def read_json():
    with open("data.json") as f:
        return json.load(f)
    # first = data[0]
    # return first["name"], first["age"], first["profession"], first["location"]
'''


'''import json
def get_user_status(file_path,user_key):
    with open(file_path) as f:
        data = json.load(f)
    return data[user_key]["status"]'''

def divide(a, b):
    try:
        return int(a) / int(b)
    except ZeroDivisionError:
        return "Cannot divide by zero"
