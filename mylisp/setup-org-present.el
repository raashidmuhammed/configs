(add-to-list 'load-path "/home/user/.emacs.d/elpa/org-present-20141109.1756")
(autoload 'org-present "org-present" nil t)

(add-hook 'org-present-mode-hook
	  (lambda ()
	    (org-present-big)
	    (org-display-inline-images)))

(add-hook 'org-present-mode-quit-hook
	  (lambda ()
	    (org-present-small)
	    (org-remove-inline-images)))

(provide 'setup-org-present)
