(use-package slime-company
  :ensure t
  :init (progn
	  (add-hook 'slime-lisp-mode-hook (lambda ()
					    (add-to-list 'company-backends
							 'slime-company)))))
(provide 'init-slime-company)
