
(cl:in-package :asdf)

(defsystem "adding_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "adding" :depends-on ("_package_adding"))
    (:file "_package_adding" :depends-on ("_package"))
  ))