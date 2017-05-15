(use-package paredit
  :ensure t
  :defer t
  :init (progn
	  (add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
	  (add-hook 'lisp-mode-hook 'enable-paredit-mode)
	  (add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
	  (add-hook 'scheme-mode-hook 'enable-paredit-mode)
	  (add-hook 'racket-mode-hook 'enable-paredit-mode)))

(provide 'init-paredit)
