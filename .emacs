(set-background-color "#281d1d")
(set-foreground-color "white")
(set-cursor-color "white")

;; Disable all control bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; Fullscreen
(toggle-frame-fullscreen)

;; Enable Ido mode
(ido-mode 1)

;; Set font size
(set-default-font "Inconsolata 16")

;; Show column number
(column-number-mode 1)

;; Remove trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "red3" "green3" "yellow3" "DodgerBlue1" "magenta3" "cyan3" "gray90"])
 '(docker-images-run-arguments (quote ("-i" "-t" "-h")))
 '(electric-pair-mode t)
 '(electric-pair-pairs (quote ((39 . 39) (34 . 34))))
 '(elfeed-feeds
   (quote
    ("https://cheeaun.github.io/hackerweb/" "http://feeds.cyberciti.biz/Nixcraft-LinuxFreebsdSolarisTipsTricks" "http://feeds.howtogeek.com/howtogeek")))
 '(grep-find-command (quote ("find . -type f -exec grep -inH -e  {} +" . 34)))
 '(newsticker-url-list (quote (("Linux tips" "www.howtogeek.com" nil nil nil))))
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(rmail-preserve-inbox t)
 '(search-web-default-browser (quote eww-browse-url))
 '(search-web-external-browser (quote eww-browse-url))
 '(search-web-in-emacs-browser (quote eww-browse-url))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "mail.zilogic.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markup-small-face ((t (:inherit markup-gen-face :height 1.0))))
 '(markup-title-0-face ((t (:inherit markup-gen-face :height 2.4))))
 '(markup-title-1-face ((t (:inherit markup-gen-face :height 1.8))))
 '(markup-title-2-face ((t (:inherit markup-gen-face :height 1.4))))
 '(markup-title-3-face ((t (:inherit markup-gen-face :weight bold :height 1.2))))
 '(markup-title-5-face ((t (:inherit markup-gen-face :underline t :height 1.0))))
 '(term-color-blue ((t (:background "dodger blue" :foreground "dodger blue")))))


;; (setq shell-mode-hook 'my-shell-setup)
;; Recognize colors in shell-mode
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(put 'erase-buffer 'disabled nil)

;;
;; Folding code blocks
(add-hook 'prog-mode-hook         'hs-minor-mode)

;; Disaster - C code disassembly
(add-to-list 'load-path "~/.emacs.d/elpa/disaster-20130509.1055")
(require 'disaster)

;; window switching
(add-to-list 'load-path "~/.emacs.d/elpa/switch-window-0.9")
(require 'switch-window)

;; emacs wiki mode
(add-to-list 'load-path "~/.emacs.d/emacs-wiki-2.72")
(require 'emacs-wiki)

;; auto check spelling for .txt files
(add-hook 'text-mode-hook 'flyspell-mode)

;; Display time
(display-time-mode 1)

;; Move region up/down
(global-set-key (kbd "M-<up>") 'move-text-up)
(global-set-key (kbd "M-<down>") 'move-text-down)

;; M-x prediction
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Mark line
(global-set-key (kbd "M-#") 'mark-end-of-sentence)

;; Change help mapping and set to backspace
(global-set-key (kbd "M-?") 'help-command)
(global-set-key (kbd "C-h") 'delete-backward-char)

;; Start Emacs server
(server-start)

;; Set Default browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "/usr/bin/conkeror")

;; Setup mu4e
(add-to-list 'load-path "~/.emacs.d/mylisp")
(require 'setup-mu4e)

;;org-present mode
(require 'setup-org-present)

;; Emacs ELIM
(add-to-list 'load-path "/home/user/.emacs.d/elim/elisp")
(require 'garak)

;; telepathy
(add-to-list 'load-path "~/.emacs.d/elpa/telepathy-20131209.458")
(require 'telepathy)
