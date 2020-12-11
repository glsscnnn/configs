;; Melpa (Emacs Package Manager)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Font
(add-to-list 'default-frame-alist '(font . "Fira Mono-14" ))
(set-face-attribute 'default t :font "Fira Mono-14" )

;; Disable Menubar/Toolbar/Scollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Disable Splashscreen
(setq inhibit-startup-screen t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("a1b7ff5791dfc05e0ca4a733dc1d299052d0cd2083084481f232053f1af05013" default)))
 '(package-selected-packages
   (quote
    (magit xwidgete w32-browser vterm auto-complete-clang javap-mode org-bullets org-ac vs-dark-theme js2-mode rust-mode latex-preview-pane haskell-mode evil ein))))


