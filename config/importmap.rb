# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "simple-form", to: "https://ga.jspm.io/npm:simple-form@1.0.0/index.js"
pin "async", to: "https://ga.jspm.io/npm:async@1.5.2/lib/async.js"
pin "depd", to: "https://ga.jspm.io/npm:depd@1.1.0/lib/browser/index.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"
pin "validator", to: "https://ga.jspm.io/npm:validator@4.9.0/validator.js"
