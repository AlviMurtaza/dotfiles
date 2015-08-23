;; Enable ido mode
(ido-mode t)

;; Disable backup
(setq backup-inhibited t)

;; empty initial scratch buffer
(setq initial-scratch-message nil)

;; Disable auto save
(setq auto-save-default nil)

;; Change yes and no to y and n
(fset 'yes-or-no-p 'y-or-n-p)

;; Charset
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
