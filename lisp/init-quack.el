(use-package quack
  :ensure t
  :defer t
  :init (add-hook 'scheme-mode-hook 'geiser-mode))

(provide 'init-quack)
