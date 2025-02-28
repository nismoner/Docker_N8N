FROM n8nio/n8n:1.78.1

USER root
# Alpine Linux-Pakete installieren
RUN apk add --no-cache python3 py3-pip libheif cargo rust build-base
RUN python3 -m venv /venv && \
    . /venv/bin/activate && \
    pip install pillow pillow-heif heic2png
# Python-Pakete installieren
# RUN pip3 install pillow pillow-heif heic2png

# Zurück zum node-Benutzer wechseln
USER node
