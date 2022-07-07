import json
import os


with open('paths.json', 'w') as pathfile:
    paths = {}
    codepath = os.path.dirname(os.path.realpath(__file__))
    codepath = os.path.dirname(codepath+'..')
    paths['codepath'] = codepath
    json.dump(paths, pathfile)
