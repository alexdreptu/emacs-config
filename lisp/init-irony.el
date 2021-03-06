(use-package irony
  :ensure t
  :init (progn
	  (add-hook 'c++-mode-hook 'irony-mode)
	  (add-hook 'c-mode-hook 'irony-mode)
	  (add-hook 'objc-mode-hook 'irony-mode)
	  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)))

(provide 'init-irony)
