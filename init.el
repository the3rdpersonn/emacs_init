(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))



(package-initialize)

;; Refresh package contents if the local cache is empty
(unless package-archive-contents
  (package-refresh-contents))

;; Add your theme folder to load-path
(add-to-list 'custom-theme-load-path "C:/emacs_misc/")

;; Load the theme by name
(load-theme 'aanila t)



(menu-bar-mode -1)   ;; hide menu bar
(tool-bar-mode -1)   ;; hide toolbar
(scroll-bar-mode -1) ;; hide scroll bar





;;TRANSLUCENT BG
;; Transparency (90% visible, 10% transparent)
(set-frame-parameter (selected-frame) 'alpha '(88 .88))
(add-to-list 'default-frame-alist '(alpha . (88 . 88)))

  





;; Increase GC threshold during startup (for faster startup)

(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)

;; Restore after startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 16777216) ;; 16mb
            (setq gc-cons-percentage 0.1)))

;;delay timers after startup
(add-hook 'emacs-startup-hook
          (lambda ()
            (run-with-idle-timer 1 nil
              (lambda ()
                ;; delayed stuff here
              ))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages '(doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
