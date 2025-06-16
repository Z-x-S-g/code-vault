from flask import Flask, request, make_response
import pickle
import base64
import os

app = Flask(__name__)

# Objeto normal (usuario no-admin)
class Usuario:
    def __init__(self, nombre, rol):
        self.nombre = nombre
        self.rol = rol

@app.route('/')
def home():
    cookie = request.cookies.get('usuario')
    if not cookie:
        # Si no hay cookie, generamos una por defecto
        user = Usuario("juan", "user")
        data = base64.b64encode(pickle.dumps(user)).decode()
        resp = make_response("Cookie creada para juan.")
        resp.set_cookie("usuario", data)

        return resp

    try:
        user = pickle.loads(base64.b64decode(cookie))
        if isinstance(user, Usuario):
            if user.rol == "admin":
                return f"🚀 ¡Bienvenido ADMIN {user.nombre}!"
            else:
                return f"👋 Hola {user.nombre}, eres un usuario normal."
        else:
            return "Objeto inválido."
    except Exception as e:
        return f"❌ Error al deserializar: {str(e)}"

if __name__ == '__main__':
    app.run(debug=True)

