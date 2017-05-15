(use-package ivy
  :ensure t
  :defer t
  :init (ivy-mode 1) (counsel-mode)
  :config (progn
	    (define-key ivy-mode-map (kbd "M-j") 'ivy-next-line)
	    (define-key ivy-mode-map (kbd "M-k") 'ivy-previous-line)
	    (define-key ivy-mode-map (kbd "M-l") 'swiper)
	    (define-key ivy-mode-map (kbd "C-x r") 'ivy-resume)
	    (define-key ivy-mode-map (kbd "C-x h") 'counsel-command-history)
	    (define-key ivy-mode-map (kbd "C-x p") 'counsel-package)
	    (define-key ivy-mode-map (kbd "C-x C-l") 'counsel-find-library)
	    (define-key ivy-mode-map (kbd "C-x C-v") 'counsel-describe-variable)
	    (define-key ivy-mode-map (kbd "C-x C-f") 'counsel-describe-function)
	    (define-key ivy-mode-map (kbd "C-x F") 'counsel-faces)
	    (define-key ivy-mode-map (kbd "C-x B") 'counsel-descbinds)))

(provide 'init-ivy)
