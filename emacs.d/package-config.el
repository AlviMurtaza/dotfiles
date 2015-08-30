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
(add-to-list 'auto-mode-alist '("\\.blade\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(setq web-mode-code-indent-style 4)
(setq web-mode-code-indent-offset 4)

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
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'subword-mode)

;; Cider
(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)
(add-hook 'cider-mode-hook #'company-mode)
(setq cider-repl-wrap-history t)

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
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'rust-mode-hook
  '(lambda ()
     (local-set-key (kbd "M-.") #'racer-find-definition)
     (local-set-key (kbd "TAB") #'racer-complete-or-indent)))

;; Markdown mode
(add-to-list 'auto-mode-alist '("\\.m[k]d\\'" . markdown-mode))

;; Hightline indent line
(highlight-indentation-current-column-mode)

;; Rspec mode
(add-hook 'ruby-mode 'rspec-mode)
(eval-after-load 'rspec-mode
  '(rspec-install-snippets))

;; Ruby refactor
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

;; Projectil rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; Discover mode
(global-discover-mode 1)

;; Comint
(add-to-list 'comint-preoutput-filter-functions
             (lambda (output)
               (replace-regexp-in-string "\033\\[[0-9]+[A-Z]" "" output)))

;; js2 refactor
(add-hook 'js2-mode-hook #'js2-refactor-mode)

;; Clojure mode
; (add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojure-mode))
; (add-to-list 'clojure-mode-hook (lambda()
; 				  (clj-refactor-mode 1)
; 				  (cljr-add-keybindings-with-prefix "C-c C-m")))

;; Ace jump mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Evil mode
(evil-mode 1)
(global-evil-surround-mode 1)
