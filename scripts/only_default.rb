    DEFAULT_PLUGINS = %w(
logstash-mixin-aws
logstash-mixin-http_client
logstash-mixin-rabbitmq_connection
logstash-mixin-zeromq
logstash-patterns-core
    logstash-input-heartbeat
      logstash-output-zeromq
      logstash-codec-collectd
      logstash-output-xmpp
      logstash-codec-dots
      logstash-codec-edn
      logstash-codec-edn_lines
      logstash-codec-fluent
      logstash-codec-es_bulk
      logstash-codec-graphite
      logstash-codec-json
      logstash-codec-json_lines
      logstash-codec-line
      logstash-codec-msgpack
      logstash-codec-multiline
      logstash-codec-netflow
      logstash-codec-plain
      logstash-codec-rubydebug
      logstash-filter-anonymize
      logstash-filter-checksum
      logstash-filter-clone
      logstash-filter-csv
      logstash-filter-date
      logstash-filter-dns
      logstash-filter-drop
      logstash-filter-fingerprint
      logstash-filter-geoip
      logstash-filter-grok
      logstash-filter-json
      logstash-filter-kv
      logstash-filter-metrics
      logstash-filter-multiline
      logstash-filter-mutate
      logstash-filter-ruby
      logstash-filter-sleep
      logstash-filter-split
      logstash-filter-syslog_pri
      logstash-filter-throttle
      logstash-filter-urldecode
      logstash-filter-useragent
      logstash-filter-uuid
      logstash-filter-xml
      logstash-input-couchdb_changes
      logstash-input-elasticsearch
      logstash-input-eventlog
      logstash-input-exec
      logstash-input-file
      logstash-input-ganglia
      logstash-input-gelf
      logstash-input-generator
      logstash-input-graphite
      logstash-input-http
      logstash-input-http_poller
      logstash-input-imap
      logstash-input-irc
      logstash-input-jdbc
      logstash-input-log4j
      logstash-input-lumberjack
      logstash-input-pipe
      logstash-input-rabbitmq
      logstash-input-redis
      logstash-input-s3
      logstash-input-snmptrap
      logstash-input-sqs
      logstash-input-stdin
      logstash-input-syslog
      logstash-input-tcp
      logstash-input-twitter
      logstash-input-udp
      logstash-input-unix
      logstash-input-xmpp
      logstash-input-zeromq
      logstash-input-kafka
      logstash-input-beats
      logstash-output-cloudwatch
      logstash-output-csv
      logstash-output-elasticsearch
      logstash-output-email
      logstash-output-exec
      logstash-output-file
      logstash-output-ganglia
      logstash-output-gelf
      logstash-output-graphite
      logstash-output-hipchat
      logstash-output-http
      logstash-output-irc
      logstash-output-juggernaut
      logstash-output-lumberjack
      logstash-output-nagios
      logstash-output-nagios_nsca
      logstash-output-null
      logstash-output-opentsdb
      logstash-output-pagerduty
      logstash-output-pipe
      logstash-output-rabbitmq
      logstash-output-redis
      logstash-output-s3
      logstash-output-sns
      logstash-output-sqs
      logstash-output-statsd
      logstash-output-stdout
      logstash-output-tcp
      logstash-output-udp
      logstash-output-kafka
    )


    require "fileutils"

    Dir.entries(File.expand_path('./tmp')).each do |folder|
      if folder != "." && folder != ".."
        if !DEFAULT_PLUGINS.include?(File.basename(folder))
          FileUtils.rm_rf(File.join("./tmp",folder))
        end
      end
    end
