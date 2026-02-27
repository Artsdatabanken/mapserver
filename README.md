# mapserver

Healthchecks:
    WMS-services:
        These adresses will return a image/png of the requested data:

        Artskart(rødlista):
        "https://mapserver.artsdatabanken.no/?map=docker_artskart&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=288314.0912515863311%2C7034394.704750952311%2C293014.2320352158276%2C7043623.220375952311&CRS=EPSG%3A25833&WIDTH=603&HEIGHT=1182&LAYERS=Artskart&STYLES=&FORMAT=image%2Fpng&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi%3A96&TRANSPARENT=TRUE"

        Artskartfa(fremmedartslista):
        "https://mapserver.artsdatabanken.no/?map=docker_artskartfa&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=288314.0912515863311%2C7034394.704750952311%2C293014.2320352158276%2C7043623.220375952311&CRS=EPSG%3A25833&WIDTH=603&HEIGHT=1182&LAYERS=Artskartfa&STYLES=&FORMAT=image%2Fpng&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi%3A96&TRANSPARENT=TRUE"

        LA (NIN-Landskap):
        "https://mapserver.artsdatabanken.no/?map=docker_ls&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=288314.0912515863311%2C7034394.704750952311%2C293014.2320352158276%2C7043623.220375952311&CRS=EPSG%3A25833&WIDTH=603&HEIGHT=1182&LAYERS=ls&STYLES=&FORMAT=image%2Fpng&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi%3A96&TRANSPARENT=TRUE"

        LKM (Bioklimatiske soner og seksjoner):
        "https://mapserver.artsdatabanken.no/?map=docker_lkm&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetMap&BBOX=288314.0912515863311%2C7034394.704750952311%2C293014.2320352158276%2C7043623.220375952311&CRS=EPSG%3A25833&WIDTH=603&HEIGHT=1182&LAYERS=lkm&STYLES=&FORMAT=image%2Fpng&DPI=96&MAP_RESOLUTION=96&FORMAT_OPTIONS=dpi%3A96&TRANSPARENT=TRUE"


        This adress will return metadata for docker_artskart:
        "https://mapserver.artsdatabanken.no/?map=docker_artskart&SERVICE=WMS&VERSION=1.3.0&REQUEST=GetCapabilities"

        Replace "docker_artskart" with "docker_artskartfa", "docker_la" or "docker_lkm" to fetch metadata from the other wms-services.



    OGC API Feature-services:
        Artskart:
        "https://mapserver.artsdatabanken.no/docker_artskartogc/ogcapi/"

        Artskartfa:
        "https://mapserver.artsdatabanken.no/docker_artskartfaogc/ogcapi/"




    Testserver:
        add "test" to the addresses "...mapserver.test.artsdatabanken..."



TEST/Development:
    One way to set up an environment for local tests/development is to run Mapserver via Docker-compose. You can use the Docker-compose.yaml in the project to set it up. This requires Docker or Docker Desktop installed on your machine.

    CMD: Go to the catalog you have your project-files. Run "Docker compose up -d". To take the server down run "Docker compose down".

    VS-Code: Install the Docker extention. Right click the docker-compose.yaml-file --> "Compose up". To take it down right click the docker-compose.yaml-file --> "Compose down".

    Dependencies:
        Mapserver is set to run from "C:/Mapserver/" if you have it in a different folder the docker-compose.yaml have to be edited to reflect this. Under volumes the correct path have to be mounted to "/etc/mapserver/".

        If the file-structure is changed the relative paths set in docker_mapserver.conf and all the .map files have to be changed.


        The ' "ows_onlineresource" "https://mapserver.test.artsdatabanken.no/?map=docker_artskart" ' lines in docker_artskart, docker_artskartfa, docker_la and docker_lkm have to be edited to your local address. By default "localhost:8080/?map=docker_artskart" for docker_artskart.

        The ' "oga_onlineresource" "https://mapserver.test.artsdatabanken.no/docker_artskartogc/ogcapi/" ' lines in docker_artskartOGC and docker_artskartfaOGC have to be edited to your local address. By default "localhost:8080/docker_artskartOGC/ogcapi/" for docker_artskartOGC.