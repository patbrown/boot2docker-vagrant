(load-file "/usr/local/bin/prime.clj")

(add-deps '[[org.clojure/tools.nrepl "0.2.11"]
            [cider/cider-nrepl "0.10.0-SNAPSHOT"]])
(use '[clojure.tools.nrepl.server :only (start-server stop-server)])
(use '[cider.nrepl :only (cider-nrepl-handler)])
(defonce server (start-server :port 7888 :handler cider-nrepl-handler))
