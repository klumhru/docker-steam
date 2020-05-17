FROM 900405128730.dkr.ecr.ca-central-1.amazonaws.com/steam/base

RUN ./steamcmd.sh +force_install_dir /var/steam/arma3 +login klumhru Atv15kolibri.is +app_update 233780 +quit
RUN apt install  lib32stdc++6 lib32gcc1 -yq
WORKDIR /var/steam/arma3
ENV PATH=$PATH:/var/steam/arma3

EXPOSE 2302
EXPOSE 2303

ENTRYPOINT ["arma3server"]
