;; Enable ido mode
(ido-mode t)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Change yes and no to y and n
(fset 'yes-or-no-p 'y-or-n-p)
