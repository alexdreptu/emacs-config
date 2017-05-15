(use-package slime
  :ensure t
  :config (progn
	    (setq inferior-lisp-program "/usr/bin/sbcl")
	    (setq slime-contribs '(slime-fancy))))

(provide 'init-slime)
