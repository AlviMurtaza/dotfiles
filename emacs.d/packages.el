(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(cider
    clj-refactor
    clojure-mode
    company
    company-go
    company-racer
    company-tern
    drupal-mode
    editorconfig
    emmet-mode
    exec-path-from-shell
    flycheck
    flycheck-rust
    git-gutter-fringe+
    go-mode
    helm
    helm-ag
    helm-projectile
    highlight-indentation
    js2-mode
    json-mode
    magit
    markdown-mode
    multiple-cursors
    paredit
    projectile
    php-mode
    racer
    rainbow-mode
    rainbow-delimiters
    rust-mode
    skewer-mode
    stylus-mode
    toml-mode
    undo-tree
    web-mode
    yasnippet))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
