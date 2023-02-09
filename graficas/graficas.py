import matplotlib.pyplot as pylot

def crear_grafica():
    etiquetas = ["A", "B", "C"]
    valores = [10, 200, 300]
    
    #! Creando una grafica, a partir de los valores creados
    
    fig, ax = pylot.subplots()
    ax.pie(valores, etiquetas=etiquetas)
    pylot.savefig("pie.png")
    pylot.close()
    
    
    