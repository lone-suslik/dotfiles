(require 'package)
(package-initialize)


;; ensure custom does not modify this file
(setq custom-file "~/.emacs-custom.el")
(load custom-file 'noerror)

;; load package repositories
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)

;; load the actual config
(require 'org)
(org-babel-load-file
 (expand-file-name "config/init.org" user-emacs-directory))
