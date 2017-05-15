(use-package company-jedi
  :ensure t
  :defer t
  :init (progn
	  (add-hook 'python-mode-hook (lambda ()
					(add-to-list 'company-backends
						     'company-jedi)))))

(provide 'init-company-jedi)
