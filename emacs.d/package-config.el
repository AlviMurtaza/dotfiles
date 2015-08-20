;; exec-path-from-shell
(exec-path-from-shell-initialize)

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'helm)

;; Enable helm
(helm-mode 1)

;; Company mode
(global-company-mode)
(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)

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
