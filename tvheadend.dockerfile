# Základní obraz
FROM linuxserver/tvheadend:arm32v7-version-02987438

# Instalace vsftpd
RUN apt-get update && \
    apt-get install -y vsftpd && \
    apt-get clean

# Povolení portů v vsftpd
EXPOSE 20 21 30000-30009

# Vytvoření uživatele s heslem
RUN echo 'ftpuser:password' | chpasswd
