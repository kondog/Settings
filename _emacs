
(add-to-list 'load-path "~/.emacs.d/lib")

;ruby setting
(autoload 'ruby-mode "ruby-mode"                                                        
  "Mode for editing ruby source files" t)                                               
(setq auto-mode-alist                                                                   
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))                               
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))                            
                                     interpreter-mode-alist))                           
(autoload 'run-ruby "inf-ruby"                                                          
  "Run an inferior Ruby process")                                                       
(autoload 'inf-ruby-keys "inf-ruby"                                                     
  "Set local key defs for inf-ruby in ruby-mode")                                       
(add-hook 'ruby-mode-hook                                                               
          '(lambda ()                                                                   
            (inf-ruby-keys)))                                                           
(global-font-lock-mode 1)                                                               
(setq default-frame-alist                                                               
      (append                                                                           
       '((foreground-color . "gray")  ;                                                 
         (background-color . "black") ;                                                 
         (cursor-color     . "blue")  ;                                                                                                 
        )                                                                               
 default-frame-alist))              

;php setting
(add-to-list 'load-path "~/.emacs.d/lib/php-mode")
;(load-library "php-mode-1.5.0")
(require 'php-mode)

;javascript setting
(add-to-list 'auto-mode-alist (cons "\\.\\js'" 'javascript-mode) )
(autoload 'javascript-mode "javascript" nil t)
(setq js-indent-level 2)
;(setq-default c-basic-offset 4)
;(add-to-list 'load-path "~/.emacs.d/lib/js2-mode")
;(autoload 'js2-mode "js2-mode" nil t)
;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


;other
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                      64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
(setq make-backup-files nil)
(setq auto-save-default nil)
(show-paren-mode t)
;; system-type predicates
;; from http://d.hatena.ne.jp/tomoya/20090807/1249601308
(setq darwin-p   (eq system-type 'darwin)
      linux-p    (eq system-type 'gnu/linux)
      carbon-p   (eq system-type 'mac)
      meadow-p   (featurep 'meadow))
 
; Emacs と Mac のクリップボード共有
; from http://hakurei-shain.blogspot.com/2010/05/mac.html
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))
 
(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
 
(if (or darwin-p carbon-p)
  (setq interprogram-cut-function 'paste-to-osx)
  (setq interprogram-paste-function 'copy-from-osx))
 
; 矩形選択
(cua-mode t)
(setq cua-enable-cua-keys nil)
(define-key global-map "\C-xr" 'cua-set-rectangle-mark)