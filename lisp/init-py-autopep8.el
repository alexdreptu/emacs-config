(use-package py-autopep8
  :ensure t
  :defer t
  :init (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
  :config (setq py-autopep8-options '("--max-line-length=80")))

(provide 'init-py-autopep8)
