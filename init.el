;;; Package -- Summary

;;; Commentary:

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(inhibit-startup-screen t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 116 :width normal)))))

(setq user-full-name "Alexandru Dreptu"
      user-mail-address "alexdreptu@gmail.com")

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-verbose t)

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(add-to-list 'load-path "~/.emacs.d/lisp")

(setq-default show-paren-delay 0)
(show-paren-mode)
(electric-pair-mode)

(require 'init-highlight-numbers)
(require 'init-highlight-quoted)
(require 'init-highlight-defined)
(require 'init-rainbow-mode)
(require 'init-evil)
(require 'init-evil-surround)
(require 'init-evil-nerd-commenter)
(require 'init-telephone-line)
(require 'init-nlinum-relative)
(require 'init-ace-window)
(require 'init-ivy)
(require 'init-which-key)
(require 'init-all-the-icons)
(require 'init-neotree)
(require 'init-company)
(require 'init-avy)
(require 'init-evil-mc)
(require 'init-yasnippet)
(require 'init-flycheck)
;; (require 'init-magit)
;; (require 'init-git-gutter)
(require 'init-try)
(require 'init-paredit)
(require 'init-slime-company)
(require 'init-slime)
(require 'init-company-jedi)
(require 'init-py-autopep8)
(require 'init-company-go)
(require 'init-go-mode)
(require 'init-geiser)
(require 'init-quack)
(require 'init-irony)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'happy-coder t)
(setq tab-width 4)
(setq-default truncate-lines -1)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(setq default-line-spacing 3)
(setq nlinum-format " %d ")
(global-set-key (kbd "C-x b") 'switch-to-buffer)
(global-set-key (kbd "C-x w") 'switch-to-buffer-other-window)
(global-set-key (kbd "C-x C-b") 'switch-to-buffer-other-frame)
(global-set-key (kbd "C-x k") 'kill-buffer)
(global-set-key (kbd "C-x C-k") 'kill-buffer-and-window)
(global-set-key (kbd "C-x f") 'find-file)
(global-set-key (kbd "C-x v") 'find-alternate-file)

(add-to-list 'display-buffer-alist
	     `(,(rx bos "*Flycheck errors*" eos)
	       (display-buffer-reuse-window
		display-buffer-in-side-window)
	       (side . bottom)
	       (reusable-frames . visible)
	       (window-height . 0.33)))

(provide 'init)

;;; init.el ends here
