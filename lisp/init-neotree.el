(use-package neotree
  :ensure t
  :bind ("M-f" . neotree-toggle)
  :defer t
  :config (progn
	    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
	    (evil-set-initial-state 'neotree-mode 'normal)
	    (evil-define-key 'normal neotree-mode-map
	      (kbd "RET") 'neotree-enter
	      (kbd "C") 'neotree-create-node
	      (kbd "r") 'neotree-rename-node
	      (kbd "d") 'neotree-delete-node
	      (kbd "j") 'neotree-next-line
	      (kbd "k") 'neotree-previous-line
	      (kbd "R") 'neotree-refresh
	      (kbd "f") 'neotree-find
	      (kbd "c") 'neotree-change-root
	      (kbd "u") 'neotree-select-up-node
	      (kbd "I") 'neotree-hidden-file-toggle
	      (kbd "H") 'neotree-hidden-file-toggle
	      (kbd "q") 'neotree-hide
	      (kbd "o") 'neotree-enter
	      (kbd "s") 'neotree-enter-vertical-split
	      (kbd "x") 'neotree-enter-horizontal-split)))

(provide 'init-neotree)
