{:user {:env {:zookeeper-addr "54.44.229.123:2181,54.44.240.52:2181"}}
 :dev {:dependencies [[cider/cider-nrepl "0.12.0-SNAPSHOT"] 
                      [org.clojure/clojure "1.8.0"]
                      [lein-git-deps "0.0.1-SNAPSHOT"]]
       :repl-options {:nrepl-middleware
                      [cider.nrepl.middleware.classpath/wrap-classpath
                       cider.nrepl.middleware.complete/wrap-complete
                       cider.nrepl.middleware.info/wrap-info
                       cider.nrepl.middleware.inspect/wrap-inspect
                       cider.nrepl.middleware.macroexpand/wrap-macroexpand
                       cider.nrepl.middleware.stacktrace/wrap-stacktrace
                       cider.nrepl.middleware.trace/wrap-trace]}
       :plugins [[cider/cider-nrepl "0.12.0-SNAPSHOT"]
                 [lein-cljsbuild "1.1.3"]
                 [refactor-nrepl "1.1.0-SNAPSHOT"]
                 [lein-git-deps "0.0.1-SNAPSHOT"]]}}
