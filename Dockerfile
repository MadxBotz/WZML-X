FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .

# Upgrade setuptools before installing requirements
RUN pip3 install --upgrade pip setuptools wheel setuptools-scm

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
