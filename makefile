EJECUTABLE = .\cgi-bin\funciones.exe
ARCHIVOS = .\cgi-bin\funciones.cpp 
LIBRERIAS = -L. -lsqlite3
PUERTO = 8000

all: elimina compila ejecuta

elimina:
	del $(EJECUTABLE)

compila: $(ARCHIVOS)
	g++ -o $(EJECUTABLE) $(ARCHIVOS) $(LIBRERIAS)

ejecuta:
	$(EJECUTABLE)


# de momento no uso lo siguiente
abre_servidor:
	python -m http.server --cgi $(PUERTO)

# de momento no uso lo siguiente
abre_navegador:
	cmd /c start http://localhost:$(PUERTO)
