(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)

(global-set-key (kbd "C-c d") 'dash-at-point)
(global-set-key (kbd "C-c e") 'dash-at-point-with-docset)
