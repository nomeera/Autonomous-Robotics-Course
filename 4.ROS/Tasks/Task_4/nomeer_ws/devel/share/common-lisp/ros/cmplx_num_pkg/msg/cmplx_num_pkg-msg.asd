
(cl:in-package :asdf)

(defsystem "cmplx_num_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cmplx" :depends-on ("_package_cmplx"))
    (:file "_package_cmplx" :depends-on ("_package"))
  ))