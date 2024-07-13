import requests

resp = requests.get("http://localhost:7000/plot")

f = open("sample_plot_png.png", "wb")
f.write(resp.content)
f.close()

