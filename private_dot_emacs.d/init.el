;; ensure custom does not modify this file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

(require 'org)
(org-babel-load-file
 (expand-file-name "config/init.org" user-emacs-directory))
