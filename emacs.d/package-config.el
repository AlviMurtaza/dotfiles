;; exec-path-from-shell
(exec-path-from-shell-initialize)

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)

;; Enable helm
(helm-mode 1)
(global-set-key (kbd "C-x C-b") #'helm-buffers-list)
(global-set-key (kbd "C-y") #'helm-show-kill-ring)

;; helm ag
(require 'helm-ag)
(require 'grep)
'(helm-ag-use-agignore)

;; Company mode
(global-company-mode)
(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)

;; Company tern
(add-hook 'js2-mode-hook 'company-tern)
(add-to-list 'company-backends 'company-tern)

;; Flycheck
(require 'flycheck)
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))
(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-add-mode 'javascript-eslint 'js2-mode)

;; js2 mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Yasnippets
(yas-global-mode 1)

;; Emmet mode
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

;; Rainbow mode
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'sgml-mode-hook 'rainbow-mode)
(add-hook 'stylus-mode-hook 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)

;; git gutter fringe +
(require 'git-gutter-fringe+)
(global-git-gutter+-mode)

;; Rainbow delimiter
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'js2-mode-hook 'rainbow-delimiters-mode)

;; Web mode
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(setq web-mode-code-indent-offset 2)

;; Magit
(global-set-key (kbd "C-c C-g") 'magit-status)
