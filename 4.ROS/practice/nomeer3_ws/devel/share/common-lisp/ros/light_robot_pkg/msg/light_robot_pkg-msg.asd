
(cl:in-package :asdf)

(defsystem "light_robot_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "age" :depends-on ("_package_age"))
    (:file "_package_age" :depends-on ("_package"))
    (:file "light_robot" :depends-on ("_package_light_robot"))
    (:file "_package_light_robot" :depends-on ("_package"))
  ))