;; increase garbage collection threshold temporarily to speed up startup
(defun restore-gc-cons-threshold ()
  (setq gc-cons-threshold (* 16 1024 1024)
    gc-cons-percentage 0.1))

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)
(add-hook 'emacs-startup-hook #'restore-gc-cons-threshold 105)
