(use-package company
  :ensure t
  :defer t
  :init (global-company-mode)
  :config (progn
	    (setq company-tooltip-align-annotations t)
	    (define-key company-mode-map (kbd "M-j") 'company-select-next)
	    (define-key company-mode-map (kbd "M-k") 'company-select-previous)))

(provide 'init-company)
