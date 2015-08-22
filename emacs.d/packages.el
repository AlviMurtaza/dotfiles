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
    clojure-mode
    company
    company-tern
    editorconfig
    emmet-mode
    exec-path-from-shell
    flycheck
    git-gutter-fringe+
    helm
    helm-ag
    helm-projectile
    js2-mode
    json-mode
    magit
    multiple-cursors
    paredit
    projectile
    rainbow-mode
    rainbow-delimiters
    stylus-mode
    undo-tree
    web-mode
    yasnippet))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
