(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/bundle/smartparens")
(add-to-list 'load-path "~/.emacs.d/custom")

(load "00-common")
(load "01-ace-jump-mode")
(load "01-ag")
(load "01-auto-complete")
(load "01-dash")
(load "01-expand-region")
(load "01-haml")
(load "01-ido")
(load "01-helm")
(load "01-highlight-indentation")
(load "01-key-chord")
(load "01-magit")
(load "01-powerline")
(load "01-projectile")
(load "01-ruby")
(load "01-smartparens")

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

;; Explicit loading without load-path adjustment because
;; some names could clash with other libraries.

(load "jazen/defuns")
(load "jazen/bindings")
(load "jazen/coffeescript")
(load "jazen/custom")
(load "jazen/osx")
;; (load "jazen/global")
(load "jazen/shell")
;(load "jazen/ruby")
;(load "jazen/rails")
(load "jazen/yaml")
(load "jazen/sass")
;; (load "jazen/icicles") Broken?
(load "jazen/mustache")
(load "jazen/scss")
(load "jazen/textile")
(load "jazen/yasnippet")
;;(load "jazen/nxml")
;;(load "jazen/restclient")
(load "jazen/window-number")

;; Got some issues so will be loaded last so it wont interfere with other stuff.
(load "jazen/theme")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(mode-line-format
   (quote ("%e"
 (:eval
  (let*
      ((active
        (powerline-selected-window-active))
       (mode-line
        (if active 'mode-line 'mode-line-inactive))
       (face1
        (if active 'powerline-active1 'powerline-inactive1))
       (face2
        (if active 'powerline-active2 'powerline-inactive2))
       (separator-left
        (intern
         (format "powerline-%s-%s" powerline-default-separator
                 (car powerline-default-separator-dir))))
       (separator-right
        (intern
         (format "powerline-%s-%s" powerline-default-separator
                 (cdr powerline-default-separator-dir))))
       (lhs
        (list
         (powerline-raw "%l:%c " face1 'l)
         (powerline-raw "%*" nil 'l)
         (powerline-buffer-size nil 'l)
         (powerline-raw mode-line-mule-info nil 'l)
         (powerline-buffer-id nil 'l)
         (when
             (and
              (boundp 'which-func-mode)
              which-func-mode)
           (powerline-raw which-func-format nil 'l))
         (powerline-raw " ")
         (funcall separator-left mode-line face1)
         (when
             (boundp 'erc-modified-channels-object)
           (powerline-raw erc-modified-channels-object face1 'l))
         (powerline-major-mode face1 'l)
         (powerline-process face1)
         (powerline-minor-modes face1 'l)
         (powerline-narrow face1 'l)
         (powerline-raw " " face1)
         (funcall separator-left face1 face2)
         (powerline-vc face2 'r)))
       (rhs
        (list
         (powerline-raw global-mode-string face2 'r)
         (funcall separator-right face2 face1)
         (funcall separator-right face1 mode-line)
         (powerline-raw " ")
         (powerline-raw "%6p" nil 'r)
         (powerline-hud face2 face1))))
    (concat
     (powerline-render lhs)
     (powerline-fill face2
                     (powerline-width rhs))
     (powerline-render rhs)))))))
 '(powerline-default-separator (quote arrow)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )