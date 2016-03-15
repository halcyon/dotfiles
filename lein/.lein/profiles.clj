{:user {:plugins [[refactor-nrepl "2.0.0"]
                  [lein-environ "1.0.0"]]
        :dependencies [[pjstadig/humane-test-output "0.7.1"]]
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]
        :env {:squiggly {:checkers [:eastwood :kibit :typed]}}}}
