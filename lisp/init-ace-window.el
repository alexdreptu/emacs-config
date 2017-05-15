(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window)
  :config (progn
	    (setq aw-scope 'frame)
	    (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))))

(provide 'init-ace-window)
