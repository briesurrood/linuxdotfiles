;;;README

;;1.Byte Compile emacs -batch -f batch-byte-compile ~/.emacs.d/**/*.el

;;Requires External Programs: emms

;;#TODO: Cache these packages and link them to Git
;;Requires External Plugins: Emms,Elisp-Format,Key-Chord,Recentf
;;                           https://github.com/winterTTr/ace-jump-mode.git
;;                           https://github.com/magnars/dash.el.git
;;                           https://github.com/jwiegley/emacs-async.git
;;                           https://github.com/emacsmirror/evil.git
;;                           https://github.com/cofi/evil-leader.git
;;                           https://github.com/redguardtoo/evil-matchit.git
;;                           https://github.com/timcharper/evil-surround.git
;;                           https://github.com/gridaphobe/evil-god-state
;;                           https://github.com/syl20bnr/evil-escape.git
;;                           https://github.com/chrisdone/god-mode.git
;;                           https://github.com/DarwinAwardWinner/ido-ubiquitous.git
;;                           https://github.com/nonsequitur/smex.git
;;                           https://github.com/magit/magit.git
;;                           https://github.com/magit/git-modes.git
;;                           https://github.com/jorgenschaefer/circe.git
;;                           https://github.com/Fanael/rainbow-delimiters.git
;;                           https://github.com/creichert/ido-vertical-mode.el.git

;;;General
;;#TODO Checkout Guile Emacs for better implementation of elisp
;;#TODO Check https://github.com/wasamasa/dotemacs/blob/master/init.org
;;#TODO Check http://scottmcpeak.com/elisp/scott.emacs.el
;;#TODO Check https://github.com/davvil/.emacs.d/blob/master/init.el
;;#TODO Check https://github.com/syl20bnr/spacemacs/blob/master/spacemacs/extensions/holy-mode/
;;#TODO Check http://pawelbx.github.io/emacs-theme-gallery/
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(blink-cursor-mode 0)
(show-paren-mode 0)
(column-number-mode)
(ido-mode)
(setq inhibit-splash-screen t)
(setq use-dialog-box nil)
(setq-default indent-tabs-mode nil)
(setq windmove-wrap-around t)
(setq redisplay-dont-pause t scroll-margin 1 scroll-step 1 scroll-conservatively 10000)
(setq make-backup-files nil)
(setq-default cursor-in-non-selected-windows nil)
(setq custom-safe-themes t)
(define-key minibuffer-inactive-mode-map (kbd "<mouse-1>") 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'molokai t)
(set-face-attribute 'default nil :font "DejaVu Sans Mono-9")
(set-frame-font "DejaVu Sans Mono-9" nil t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (package-initialize))

;;;Plugins

;;Ace Jump
(add-to-list 'load-path "~/.emacs.d/elisp/ace-jump-mode")
(require 'ace-jump-mode)

;;Circe
(add-to-list 'load-path "~/.emacs.d/elisp/circe")
(require 'circe)
(setq circe-default-nick "thegladiator"
      circe-default-user "thegladiator"
      circe-default-realname "Nishant Varma"
      circe-default-part-message "Bye"
      circe-default-quit-message "Bye"
      circe-reduce-lurker-spam t
      circe-use-cycle-completion t
      circe-format-self-say "|{nick}| {body}"
      circe-format-say "|{nick}| {body}"
      circe-server-buffer-name "{network}"
      circe-format-server-message "{body}"
      circe-prompt-string (propertize "=> " 'face 'circe-prompt-face)
      circe-format-server-join "Join: {nick}"
      circe-format-server-join-in-channel "Join: {nick} joined {channel}"
      circe-format-server-lurker-activity "First activity: {nick} joined {joindelta} ago."
      circe-format-server-mode-change "Mode change: {change} on {target} by {setter}"
      circe-format-server-nick-change "Nick change: {old-nick} is now known as {new-nick}"
      circe-format-server-nick-change-self "Nick change: You are now known as {new-nick}"
      circe-format-server-nick-regain "Nick regain: {old-nick} is now known as {new-nick}"
      circe-format-server-part "Part: {nick} left {channel}: {reason}"
      circe-format-server-quit "Quit: {nick} left IRC: {reason}"
      circe-format-server-quit-channel "Quit: {nick} left {channel}: {reason}")
(circe-set-display-handler "QUIT" 'circe-display-ignore)
(circe-set-display-handler "PART" 'circe-display-ignore)
(circe-set-display-handler "JOIN" 'circe-display-ignore)
(circe-set-display-handler "NICK" 'circe-display-ignore)

;;Comint
(require 'comint)
(setq comint-prompt-read-only t)
(defun comint-preoutput-turn-buffer-read-only (text)
  (propertize text 'read-only t))
(add-hook 'comint-preoutput-filter-functions 'comint-preoutput-turn-buffer-read-only)

;;Dash
(add-to-list 'load-path "~/.emacs.d/elisp/dash.el")
(require 'dash)

;;Emms
(add-to-list 'load-path "~/.emacs.d/elisp/emms/lisp")
(require 'emms-setup)
(emms-all)
(emms-default-players)

;;Elisp Format
(add-to-list 'load-path "~/.emacs.d/elisp/elisp-format")
(require 'elisp-format)

;;Evil
(add-to-list 'load-path "~/.emacs.d/elisp/evil")
(require 'evil)
(add-to-list 'load-path "~/.emacs.d/elisp/evil-leader")
(require 'evil-leader)
(add-to-list 'load-path "~/.emacs.d/elisp/evil-surround")
(require 'evil-surround)
(add-to-list 'load-path "~/.emacs.d/elisp/evil-matchit")
(require 'evil-matchit)
(add-to-list 'load-path "~/.emacs.d/elisp/evil-escape")
(require 'evil-escape)
(define-key evil-normal-state-map "s" 'save-buffer)
(define-key evil-normal-state-map "S" 'evil-substitute)
(setq evil-default-state 'emacs
      evil-emacs-state-modes '(messages-buffer-mode)
      evil-insert-state-modes '()
      evil-motion-state-modes '()
      evil-normal-state-modes '(conf-space-mode conf-xdefaults-mode c-mode emacs-lisp-mode
                                fundamental-mode perl-mode python-mode ruby-mode
                                scheme-mode text-mode))
(setq evil-cross-lines t
      evil-move-cursor-back nil
      evil-want-fine-undo t
      evil-symbol-word-search t)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "m" 'buffer-menu
  "k" 'kill-buffer-and-window
  "K" 'kill-buffer
  "j" 'bookmark-jump
  "d" 'dired
  "v" 'magit-status
  "r" 'windmove-right
  "l" 'windmove-right
  "x" 'smex
  "j" 'evil-ace-jump-char-mode)
(global-evil-surround-mode 1)
(global-evil-matchit-mode 1)
(global-evil-leader-mode)
(evil-mode 1)
(defun minibuffer-keyboard-quit ()
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;;God-Mode
(add-to-list 'load-path "~/.emacs.d/elisp/god-mode")
(require 'god-mode)
(setq god-exempt-major-modes nil)
(setq god-exempt-predicates nil)
(define-key god-local-mode-map (kbd ".") 'repeat)

;;Evil-God-Mode
(add-to-list 'load-path "~/.emacs.d/elisp/evil-god-state")
(require 'evil-god-state)

;;Ido
(ido-mode 1)
(ido-everywhere 1)

;;Ido-Vertical-Mode
(add-to-list 'load-path "~/.emacs.d/elisp/ido-vertical-mode.el")
(require 'ido-vertical-mode)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

;;Ido-Ubiquitous
;;#FIXME: Check if its required
(defvar ido-ubiquitous-debug-mode nil)
(add-to-list 'load-path "~/.emacs.d/elisp/ido-ubiquitous")
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

;;Key-Chord
;;#TODO: Check if package is required
(add-to-list 'load-path "~/.emacs.d/elisp/key-chord")
(require 'key-chord)

;;Magit
(add-to-list 'load-path "~/.emacs.d/elisp/git-modes")
(add-to-list 'load-path "~/.emacs.d/elisp/magit/lisp")
(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list "~/.emacs.d/elisp/magit")))
(require 'magit)

;;Rainbow-Parenthesis
(add-to-list 'load-path "~/.emacs.d/elisp/rainbow-delimiters")
(require 'rainbow-delimiters)

;;Recentf
(recentf-mode 1)
(setq recentf-save-file "~/.emacs.d/etc/recentf" recentf-max-saved-items 50)

;;Smex
(add-to-list 'load-path "~/.emacs.d/elisp/smex")
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;Uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
