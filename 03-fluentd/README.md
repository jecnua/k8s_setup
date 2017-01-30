2017-01-30 18:01:09 +0000 [info]: reading config file path="/fluentd/etc/fluentd.conf"
/usr/lib/ruby/gems/2.3.0/gems/fluentd-0.12.31/lib/fluent/supervisor.rb:474:in `read': No such file or directory @ rb_sysopen - /fluentd/etc/fluentd.conf (Errno::ENOENT)
     from /usr/lib/ruby/gems/2.3.0/gems/fluentd-0.12.31/lib/fluent/supervisor.rb:474:in `read_config'
     from /usr/lib/ruby/gems/2.3.0/gems/fluentd-0.12.31/lib/fluent/supervisor.rb:144:in `start'
     from /usr/lib/ruby/gems/2.3.0/gems/fluentd-0.12.31/lib/fluent/command/fluentd.rb:173:in `<top (required)>'
     from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
     from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
     from /usr/lib/ruby/gems/2.3.0/gems/fluentd-0.12.31/bin/fluentd:5:in `<top (required)>'
     from /usr/bin/fluentd:23:in `load'
     from /usr/bin/fluentd:23:in `<main>'



http://docs.fluentd.org/v0.12/articles/in_tail#posfile-highly-recommended



based on this
https://raw.githubusercontent.com/fluent/fluentd-kubernetes-daemonset/master/fluentd-daemonset.yaml
and using config map form here
https://github.com/inovex/kubernetes-logging



not this
https://raw.githubusercontent.com/inovex/kubernetes-logging/master/kubernetes_config/fluentd-daemonset.yaml
