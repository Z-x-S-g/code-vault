from flask import Flask, request
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad
import base64

app = Flask(__name__)

# Clave de cifrado fija (mala práctica a propósito)
KEY = b"ESTAESCLAVE12345"

@app.route('/get_token')
def get_token():
    user = request.args.get("usuario", "juan").strip()

    # Texto cifrado (siempre 16 bytes al final con padding)
    plaintext = f"usuario={user}".encode()

    iv = b"1234567890ABCDEF"
    cipher = AES.new(KEY, AES.MODE_CBC, iv)
    ciphertext = cipher.encrypt(pad(plaintext, AES.block_size))
    token = base64.b64encode(iv + ciphertext).decode()
    return f"Token para {user}: {token}"

@app.route('/check_token')
def check_token():
    token = request.args.get("token", "")
    try:
        data = base64.b64decode(token)
        iv = data[:16]
        ciphertext = data[16:]

        cipher = AES.new(KEY, AES.MODE_CBC, iv)
        plaintext = cipher.decrypt(ciphertext)

        unpad(plaintext, AES.block_size)
        return f"Padding válido ✅\nContenido descifrado: {plaintext.decode(errors='ignore')}"
    except ValueError:
        return "Padding inválido ❌", 403
    except Exception as e:
        return f"Error: {str(e)}", 400

if __name__ == "__main__":
    app.run(debug=True)

