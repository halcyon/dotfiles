{:user {:plugins [[refactor-nrepl "2.0.0"]
                  [cider/cider-nrepl "0.11.0"]
                  [lein-environ "1.0.0"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [acyclic/squiggly-clojure "0.1.4"]
                       [pjstadig/humane-test-output "0.7.1"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]
        :env {:squiggly {:checkers [:eastwood :kibit :typed]}}}}
