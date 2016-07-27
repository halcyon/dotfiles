{:user {:plugins [[lein-environ "1.0.0"]]
        :env {:squiggly {:checkers [:eastwood :kibit]}}}
 :humane {:dependencies [[pjstadig/humane-test-output "0.7.1"]]
          :injections [(require 'pjstadig.humane-test-output)
                       (pjstadig.humane-test-output/activate!)]}}
