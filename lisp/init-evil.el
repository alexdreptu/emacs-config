(use-package evil
  :ensure t
  :init (progn
	  (setq-default evil-want-C-u-scroll t)
	  (evil-mode 1))
  :config (progn
	    (setq evil-insert-state-message nil)
	    (setq evil-visual-state-message nil)
	    (evil-global-set-key 'normal (kbd "C-w s") 'evil-window-vsplit)
	    (evil-global-set-key 'normal (kbd "C-w x") 'evil-window-split)))

(provide 'init-evil)
