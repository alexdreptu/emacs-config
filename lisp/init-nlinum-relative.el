(use-package nlinum-relative
  :ensure t
  :init (add-hook 'prog-mode-hook 'nlinum-relative-mode) ; show only for file buffers
  :config (progn
	    (setq nlinum-relative-redisplay-delay 0)
	    (setq nlinum-relative-offset 0)))

(provide 'init-nlinum-relative)
