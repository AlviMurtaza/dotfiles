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
(setq js2-basic-offset 2)

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

;; php
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-hook 'php-mode-hook 'drupal-mode)

;; undo tree
(global-undo-tree-mode t)

;; skewer mode
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
(add-hook 'web-mode-hook 'skewer-html-mode)

;; paren mode
(show-paren-mode 1)

;; paredit mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Cider
(add-hook 'cider-mode-hook #'eldoc-mode)

;; Go mode
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

;; Rust mode
(setq racer-cmd "/usr/local/bin/racer")
(setq racer-rust-src-path "/Users/bassam/.rust/src/")
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook
  '(lambda ()
     (racer-activate)
     (racer-turn-on-eldoc)
     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
     (set (make-local-variable 'company-backends) '(company-racer))
     (local-set-key (kbd "M-.") #'racer-find-definition)
     (local-set-key (kbd "TAB") #'racer-complete-or-indent)))

;; Markdown mode
(add-to-list 'auto-mode-alist '("\\.m[k]d\\'" . markdown-mode))
