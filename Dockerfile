FROM python:3.12.0a5-alpine3.17

ADD acme-dns-server.py /acme-dns-server.py


VOLUME /opt/record

EXPOSE 53/udp

CMD ["python3", "/acme-dns-server.py", "53", "/opt/record"]
