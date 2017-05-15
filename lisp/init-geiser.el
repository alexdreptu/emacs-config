(use-package geiser
  :ensure t
  :defer t
  :init (add-hook 'scheme-mode 'geiser-mode)
  :config (setq geiser-repl-use-other-window nil))

(provide 'init-geiser)
