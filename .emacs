;; Remove useless UI
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Fonts
(set-face-attribute 'default nil :height 150 :font "Fira Mono")

;; Melpa setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

;; Remove backup and lock files
(setq make-backup-files nil)
(setq create-lockfiles nil)

;;;;;;;;;;;;;;
;; Packages ;;
;;;;;;;;;;;;;;

;; Evil
(unless (package-installed-p 'evil)
         (package-install 'evil))

(setq evil-want-keybinding nil)
(require 'evil)
(evil-mode 1)

;; Evil collection
(unless (package-installed-p 'evil-collection)
         (package-install 'evil-collection))

(evil-collection-init)

;; Doom modeline
(unless (package-installed-p 'doom-modeline)
         (package-install 'doom-modeline))

(require 'doom-modeline)
(doom-modeline-mode 1)

;; Doom theme
(unless (package-installed-p 'doom-themes)
         (package-install 'doom-themes))

(load-theme 'doom-one t)

;; Counsel/ivy
(unless (package-installed-p 'counsel)
         (package-install 'counsel))

(ivy-mode)

;; Projectile
(unless (package-installed-p 'projectile)
         (package-install 'projectile))

(projectile-mode 1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Magit
(unless (package-installed-p 'magit)
         (package-install 'magit))
