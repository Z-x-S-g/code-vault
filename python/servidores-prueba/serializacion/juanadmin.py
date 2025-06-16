import pickle
import base64
import os

class Usuario:
    def __init__(self,nombre,rol):
        self.nombre = nombre
        self.rol = rol
        self.command = os.system('echo buenas')

user = Usuario("juan", "admin", )
data = base64.b64encode(pickle.dumps(user))

print(data)
