(use-package go-mode
  :ensure t
  :mode ("\\.go$")
  :init (progn
	  (setq gofmt-command "goimports")
	  (add-hook 'before-save-hook 'gofmt-before-save)
	  (add-hook 'go-mode-hook (lambda ()
				    (add-to-list 'company-backends 'company-go)))))

(provide 'init-go-mode)
