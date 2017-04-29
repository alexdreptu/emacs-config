(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package avy
  :ensure t
  :config (global-set-key (kbd "C-'") 'avy-goto-char-timer))

(use-package slime
  :ensure t
  :config (setq inferior-lisp-program "/usr/bin/sbcl")
	   (setq slime-contribs '(slime-fancy)))

(custom-set-variables
 '(inhibit-startup-screen t)
 '(nil nil t)
 '(package-selected-packages (quote (slime which-key avy ##))))

(custom-set-faces
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 116 :width normal)))))

(add-to-list 'default-frame-alist '(foreground-color . "#ffffff"))
(add-to-list 'default-frame-alist '(background-color . "#272822"))
(add-to-list 'default-frame-alist '(cursor-color . "#999954"))
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
