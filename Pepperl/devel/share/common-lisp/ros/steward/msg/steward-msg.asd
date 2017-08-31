
(cl:in-package :asdf)

(defsystem "steward-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Camera" :depends-on ("_package_Camera"))
    (:file "_package_Camera" :depends-on ("_package"))
    (:file "Motors" :depends-on ("_package_Motors"))
    (:file "_package_Motors" :depends-on ("_package"))
    (:file "MotorsAction" :depends-on ("_package_MotorsAction"))
    (:file "_package_MotorsAction" :depends-on ("_package"))
    (:file "MotorsActionFeedback" :depends-on ("_package_MotorsActionFeedback"))
    (:file "_package_MotorsActionFeedback" :depends-on ("_package"))
    (:file "MotorsActionGoal" :depends-on ("_package_MotorsActionGoal"))
    (:file "_package_MotorsActionGoal" :depends-on ("_package"))
    (:file "MotorsActionResult" :depends-on ("_package_MotorsActionResult"))
    (:file "_package_MotorsActionResult" :depends-on ("_package"))
    (:file "MotorsFeedback" :depends-on ("_package_MotorsFeedback"))
    (:file "_package_MotorsFeedback" :depends-on ("_package"))
    (:file "MotorsGoal" :depends-on ("_package_MotorsGoal"))
    (:file "_package_MotorsGoal" :depends-on ("_package"))
    (:file "MotorsResult" :depends-on ("_package_MotorsResult"))
    (:file "_package_MotorsResult" :depends-on ("_package"))
    (:file "STMdata" :depends-on ("_package_STMdata"))
    (:file "_package_STMdata" :depends-on ("_package"))
  ))