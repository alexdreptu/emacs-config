(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :config (progn
	    (setq flycheck-highlighting-mode 'symbols)
	    (setq flycheck-check-syntax-automatically '(save
							;; idle-change
							mode-enabled))))

(provide 'init-flycheck)
