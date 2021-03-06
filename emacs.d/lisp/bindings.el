;; http://xahlee.org/emacs/keyboard_shortcuts.html
;; Window manipulation
;;; Code:
;; Find stuff
(global-set-key (kbd "C-c k")              'counsel-ag)
;;(global-set-key [(control f2)]      'helm-ag-project-root)

(global-set-key (kbd "C-c r")       'query-replace)
(global-set-key (kbd "M-s")     'rgrep)
(global-set-key (kbd "C-s")     'swiper)
(global-set-key (kbd "C-r")     'swiper)
;; Keyboard macros
(global-set-key [(shift f4)] 'kmacro-start-macro-or-insert-counter)
;; (global-set-key [(f4)]    'kmacro-end-or-call-macro)  ;; already defined

;; Refresh-like
(global-set-key [(f5)]         'revert-buffer)
(global-set-key [(control f5)] 'revbufs)
(global-set-key [(f6)] 'counsel-register)
;; Indenting and alignment
;; (global-set-key [(f8)]         'indent-region)
;; (global-set-key [(control f8)] 'align)
;; (global-set-key [(shift f8)]   'align-current)
;; (global-set-key [(meta f8)]    'align-regexp)
(global-set-key [(f8)] 'neotree-toggle)
(global-set-key [(control f8)] 'neotree-find)


;; Version control and change related
(global-set-key [(control f9)] 'magit-push)
(global-set-key [(f9)]         'magit-status)
(global-set-key [(meta f9)]    'magit-pull)

;; map the window manipulation keys to meta 0, 1, 2, o
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
;;(global-setq-key (kbd "M-o") 'other-window) ; was facemenu-keymap
(global-set-key (kbd "M-o") 'ace-window)
;;(global-set-key (kbd "M-O") 'rotate-windows)



;; Replace dired's M-o
(add-hook 'dired-mode-hook (lambda () (define-key dired-mode-map (kbd "M-o") 'other-window))) ; was dired-omit-mode
;; Replace ibuffer's M-o
(add-hook 'ibuffer-mode-hook (lambda () (define-key ibuffer-mode-map (kbd "M-o") 'other-window))) ; was ibuffer-visit-buffer-1-window
;; To help Unlearn C-x 0, 1, 2, o
(global-unset-key (kbd "C-x 3")) ; was split-window-horizontally
(global-unset-key (kbd "C-x 2")) ; was split-window-vertically
(global-unset-key (kbd "C-x 1")) ; was delete-other-windows
(global-unset-key (kbd "C-x 0")) ; was delete-window
(global-unset-key (kbd "C-x o")) ; was other-window

;; Repeat
(global-set-key [(control z)] 'repeat) ; was suspend-frame

;; Window navigation
(windmove-default-keybindings 'meta)

;; Mac OS X conventions
(global-set-key (kbd "M-a") 'mark-whole-buffer) ; was backward-sentence.

;; Find matching parens
(global-set-key (kbd "C-'") 'match-paren)

;; ibuffer > list-buffers
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-b") 'helm-mini)
;;(global-set-key (kbd "C-x f") 'fiplr-find-file)
(global-set-key (kbd "C-c C-i") 'helm-imenu)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;; Easier buffer killing
(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-K") 'kill-this-buffer)
(global-set-key (kbd "M-x") 'helm-M-x)

;; Improved navigation and editing (assumes misc.el)
(global-set-key (kbd "M-Z") 'zap-up-to-char)
(global-set-key (kbd "M-F") 'forward-to-word)
(global-set-key (kbd "M-B") 'backward-to-word)

;; Tags
(global-set-key (kbd "M-,") 'pop-tag-mark) ; was tags-loop-continue

;; Goto Line
;; (global-set-key [remap goto-line] 'goto-line-with-feedback)

;; Whitespace management
(global-set-key (kbd "s-\\") 'fixup-whitespace)

(global-set-key (kbd "C-?") 'help-command)
(global-set-key (kbd "M-?") 'mark-paragraph)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-x C-r") 'helm-recentf)

(global-set-key (kbd "C-c C-d s") 'my-desktop-save) ; was digit-argument
(global-set-key (kbd "C-c C-d r") 'my-desktop-read) ; was digit-argument

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-;") 'ace-jump-mode)
;;; bindings.el ends here
(global-set-key (kbd "C-c C-r")  'rename-file-and-buffer)
(global-set-key (kbd "C-c p h") 'helm-projectile)

(setq tab-command (lookup-key (current-global-map) (kbd "TAB")))
;;Dev's ergonomic keybindings
(global-unset-key (kbd "C-t")) ; was transpose char
(global-unset-key (kbd "M-t")) ; was transpose word

;; (global-unset-key (kbd "C-n")) ; was move next line
;; (global-unset-key (kbd "C-p")) ; was move previous line
;; (global-unset-key (kbd "C-f")) ; was forward one char
;; (global-unset-key (kbd "C-b")) ; was backward one char
;; (global-unset-key (kbd "C-k")) ; was kill the line
;; (global-unset-key (kbd "C-w")) ; was cut the line
;; (global-unset-key (kbd "C-y")) ; was yank the line
;; (global-unset-key (kbd "C-i")) ;
;; (global-unset-key (kbd "M-i")) ;


(global-set-key (kbd "C-t") 'helm-mini)
(global-set-key (kbd "M-t") 'fiplr-find-file)

;; (global-set-key (kbd "C-i") 'previous-line)
;; (global-set-key (kbd "C-k") 'next-line)
;; (global-set-key (kbd "M-j") 'backward-word)
;; (global-set-key (kbd "M-l") 'forward-word)
;; (global-set-key (kbd "C-j") 'backward-char)
;; (global-set-key (kbd "C-l") 'forward-char)
;; (global-set-key (kbd "M-i") 'scroll-down-command)
;; (global-set-key (kbd "M-k") 'scroll-up-command)
;; (global-set-key (kbd "C-S-d") 'kill-line)
;; (global-set-key [tab] tab-command)

(provide 'bindings)
