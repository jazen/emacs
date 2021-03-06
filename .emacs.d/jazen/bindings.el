; More convenient command cycling
(eval-after-load 'shell
  '(progn
     (define-key shell-mode-map [up] 'comint-previous-input)
     (define-key shell-mode-map [down] 'comint-next-input)
     (define-key shell-mode-map "\C-p" 'comint-previous-input)
     (define-key shell-mode-map "\C-n" 'comint-next-input)))

; Prefer backward-kill-word over Backspace
(global-set-key "\C-w" 'backward-kill-word) ; was kill-region
(global-set-key "\C-x\C-k" 'kill-region)

; Duplicate line at point
(global-set-key (kbd "C-x y") 'jzn/duplicate-line)

; Duplicate line at point and comment original.
(global-set-key (kbd "C-x c") (lambda()(interactive)(jzn/duplicate-line t)))

; M-x query-replace
(global-set-key (kbd "<f6>") 'query-replace)

; M-g g (goto line)
(global-set-key (kbd "C-x g") 'goto-line)

; Delete buffer AND file (you will be prompted)
(global-set-key (kbd "C-c k") 'delete-this-buffer-and-file)
