;; Set font family and size
(set-frame-font "Source code pro-14")

;; Disable initial screen
(setq inhibit-startup-screen t)

;; Disable scroll bars
(scroll-bar-mode -1)

;; Disable tool bar
(tool-bar-mode -1)

;; load-theme in terminal
(if window-system nil
    (load-theme 'wombat))

;; line number
(global-linum-mode)

;; line number gutter spacing
(setq linum-format "%2d ")

;; line spacing
(setq-default line-spacing 4)

;; Display cloumn number
(column-number-mode t)

;; Add theme paths
(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/color-theme-sanityinc-solarized-20150803.1420")
(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-sanityinc-solarized-20150803.1420")


;; set themes
(load-theme 'sanityinc-solarized-light t)

;; Font locking for clojure
(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("(\\(fn\\)[\[[:space:]]"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "λ")
                               nil))))))

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("\\(#\\)("
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "ƒ")
                               nil))))))

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `(("\\(#\\){"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "∈")
                               nil))))))

(eval-after-load 'clojure-mode
  '(font-lock-add-keywords
    'clojure-mode `("(\\(partial\\)[\[[:space:]]"
                     (0 (progn (compose-region (match-beginning 1)
                                               (match-end 1) "∈")
                               nil)))))
