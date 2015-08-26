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
