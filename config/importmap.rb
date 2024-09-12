pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
pin "popper", to: "https://unpkg.com/@popperjs/core@2.11.6/dist/umd/popper.min.js"
pin "bootstrap.min", to: "js/bootstrap.min.js", preload: true
pin "jquery.magnific-popup", to: "js/jquery.magnific-popup.js", preload: true
pin "owl.carousel.min", to: "js/owl.carousel.min.js", preload: true
pin "jquery.nice-select.min", to: "js/jquery.nice-select.min.js", preload: true
pin "slick.min", to: "js/slick.min.js", preload: true
pin "jquery.counterup.min", to: "js/jquery.counterup.min.js", preload: true
pin "waypoints", to: "https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/noframework.waypoints.min.js"
pin "contact", to: "js/contact.js", preload: true
pin "jquery.ajaxchimp.min", to: "js/jquery.ajaxchimp.min.js", preload: true
pin "jquery.form", to: "js/jquery.form.js", preload: true
pin "jquery.validate.min", to: "js/jquery.validate.min.js", preload: true
pin "mail-script", to: "js/mail-script.js", preload: true
pin "custom", to: "js/custom.js", preload: true




