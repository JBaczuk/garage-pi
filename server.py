from flask import Flask, request
from flask_restful import Resource, Api
from json import dumps
import garage as g

app = Flask(__name__)
api = Api(app)

class Garage(Resource):
    def post(self):
        g.pushGarageBtn()
        return "result: success"
    def get(self):
        return "result: error - must send a post request"
        
api.add_resource(Garage, '/garage') # Route_1

if __name__ == '__main__':
     app.run(host='0.0.0.0')