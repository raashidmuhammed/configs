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
    ("http://feeds.cyberciti.biz/Nixcraft-LinuxFreebsdSolarisTipsTricks" "http://feeds.howtogeek.com/howtogeek")))
 '(newsticker-url-list (quote (("Linux tips" "www.howtogeek.com" nil nil nil))))
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
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

;; Add emacs asciidoc-mode
;;(add-to-list 'load-path "~/.emacs.d/markup-faces")
;;(require 'markup-faces)
;;(add-to-list 'load-path "~/.emacs.d/adoc-mode")
;;(require 'adoc-mode)
;;(add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
;;(add-hook 'adoc-mode-hook (lambda() (buffer-face-mode t)))

;; Add marmalade package list for emacs
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; Jenkins
;;(add-to-list 'load-path "~/.emacs.d/elpa/jenkins-watch-1.2")
;;(require 'jenkins-watch)

;; Current directory tracking for shell-mode
;; (defun my-current-directory (text)
;;   (if (string-match "\\w*:\\([^\n]+\\)\n> " text)
;;       (setq cur-dir (substring text (match-beginning 1) (match-end 1)))
;;     (cd cur-dir)
;;     (message "dir tracking %s" cur-dir)))

;; (defun my-shell-setup ()
;;   "Track current directory"
;;   (add-hook 'comint-output-filter-functions 'my-current-directory nil t))

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

;;org-reveal
(use-package ox-reveal :ensure t)
(setq org-reveal-root "/home/user/.emacs.d/reveal.js-master")
