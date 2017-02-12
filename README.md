# cityhawk/mrtg

It's a simple docker image to run your mrtg. 

# How to use

you will need a mrtg.cfg file (hint, run docker exec and play with `cfgmaker`)

The collected data goes to `/mrtg_data` in the container and you probably want to preserve is between restarts

So run it like:

    $ docker run -d -t -v /path/to/my/data:/mrtg_data/ -v /path/to/cfg/mrtg.cfg:/etc/mrtg.cfg cityhawk/mrtg

Then serve the `/path/to/my/data` with the webserver of your choice. I'm running nginx:alpine like:

    $ docker run -d -t -p 9080:80 -v /path/to/my/data:/usr/share/nginx/html nginx:alpine