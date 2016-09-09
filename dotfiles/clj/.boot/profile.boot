(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
       concat '[[cider/cider-nrepl "0.12.0-SNAPSHOT"]
                [refactor-nrepl "1.1.0-SNAPSHOT"]])

(swap! boot.repl/*default-middleware*
       conj 'cider.nrepl/cider-middleware)
(swap! boot.repl/*default-middleware*
       conj 'refactor-nrepl.middleware/wrap-refactor)

