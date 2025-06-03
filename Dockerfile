FROM apache/nifi

COPY --chown=nifi:nifi flow.json.gz $NIFI_HOME/conf/flow.json.gz
COPY --chown=nifi:nifi nifi-lib/nifi-hadoop-libraries-nar-2.4.0.nar /opt/nifi/nifi-current/lib/nifi-hadoop-libraries-nar-2.4.0.nar
COPY --chown=nifi:nifi nifi-lib/nifi-hadoop-nar-2.4.0.nar /opt/nifi/nifi-current/lib/nifi-hadoop-nar-2.4.0.nar
COPY --chown=nifi:nifi nifi-lib/nifi-parquet-nar-2.4.0.nar /opt/nifi/nifi-current/lib/nifi-parquet-nar-2.4.0.nar
COPY --chown=nifi:nifi hdfs-conf/ /opt/hdfs-conf/
