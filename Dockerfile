FROM opensearchproject/opensearch
LABEL authors="Darwin"

ENTRYPOINT ["top", "-b"]

# ENV OPENSEARCH_SETTING=value

# Exemplo de configuração adicional (opcional)
# COPY config/opensearch.yml /usr/share/opensearch/config/opensearch.yml

# Expõe a porta padrão do OpenSearch
EXPOSE 9200
EXPOSE 9600

# Comandos para iniciar o OpenSearch
# ENTRYPOINT do container é definido pela imagem base
# Se necessário, você pode substituí-lo aqui
# ENTRYPOINT ["opensearch-docker-entrypoint.sh"]

# Caso haja necessidade de rodar outros comandos/customizações:
# RUN outros comandos ou copias que você precisa

# Assegure que as permissões estão corretas
# RUN chown -R opensearch:opensearch /usr/share/opensearch

# Indica que a configuração está pronta e usa a configuração base de entrypoint
CMD ["opense