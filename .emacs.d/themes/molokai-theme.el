;;; molokai-theme.el --- molokai theme with Emacs theme engine

;; Copyright (C) 2013 by Adam Lloyd
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/alloy-d/color-theme-molokai
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(deftheme molokai
  "molokai theme")

(custom-theme-set-faces
 'molokai

 '(default ((t (:background "#080808" :foreground "#EEEEEE"))))
 '(cursor ((t (:foregound "#F8F8F0"))))
 '(minibuffer-prompt ((t (:foreground "#00FFFF"))))
 '(mode-line ((t (:foreground "#F8F8F2" :background "#1C1C1C"
                  :box (:line-width 1 :color "#1C1C1C" :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground nil :background "#1C1C1C" :weight semi-bold))))
 '(mode-line-inactive ((t (:foreground "#F8F8F2" :background "#1C1C1C"
                           :box (:line-width 1 :color "#1C1C1C" :style released-button)))))
 '(mode-line-mousable ((t (:foreground "#BCBCBC" :background "#1C1C1C"))))
 '(mode-line-mousable-minor-mode ((t (:foreground "#BCBCBC" :background "#1C1C1C"))))
 '(bold ((t (:weight bold))))
 '(bold-italic ((t (:weight bold))))
 '(custom-face-tag ((t (:foreground "#00FFFF" :weight bold))))
 '(custom-state ((t (:foreground "#EEEE00"))))
 '(italic ((t (:slant italic))))
 '(region ((t (:background "#403D3D"))))
 '(underline ((t (:underline t))))
 '(css-selector ((t (:foreground "#FF0DFF"))))
 '(css-property ((t (:foreground "#00FFFF"))))
 '(diff-added ((t (:foreground "#EEEE00" :weight bold))))
 '(diff-context ((t (:foreground "#F8F8F2"))))
 '(diff-file-header ((t (:foreground "#00FFFF" :background nil))))
 '(diff-indicator-added ((t (:foreground "#EEEE00"))))
 '(diff-indicator-removed ((t (:foreground "#FF0DFF"))))
 '(diff-header ((t (:foreground "#F8F8F2" :background "#232526"))))
 '(diff-hunk-header ((t (:foreground "#AE81FF" :background "#232526"))))
 '(diff-removed ((t (:foreground "#FF0DFF" :weight bold))))
 '(escape-glyph ((t (:foreground "#E6DB74"))))
 '(font-lock-builtin-face ((t (:foreground "#FFFF00"))))
 '(font-lock-comment-face ((t (:foreground "#333333"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#465457"))))
 '(font-lock-constant-face ((t (:foreground "#AE81FF"))))
 '(font-lock-doc-face ((t (:foreground "#333333"))))
 '(font-lock-function-name-face ((t (:foreground "#FFA500"))))
 '(font-lock-keyword-face ((t (:foreground "#00FFFF"))))
 '(font-lock-negation-char-face ((t (:weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "#FFFF00"))))
 '(font-lock-regexp-grouping-backslash ((t (:weight bold))))
 '(font-lock-regexp-grouping-construct ((t (:weight bold))))
 '(font-lock-string-face ((t (:foreground "#00FF00"))))
 '(font-lock-type-face ((t (:foreground "#00FFFF"))))
 '(font-lock-variable-name-face ((t (:foreground "#FF00FF"))))
 '(font-lock-warning-face ((t (:foreground "#FFFFFF" ':background "#333333"))))
 '(fringe ((t (:background "#080808"))))
 '(highlight ((t (:foreground "#000000" :background "#C4BE89"))))
 '(hl-line ((t (:background "#293739"))))
 '(icompletep-choices ((t (:foreground "#FF0DFF"))))
 '(icompletep-determined ((t (:foreground "#EEEE00"))))
 '(icompletep-keys ((t (:foreground "#FF0DFF"))))
 '(icompletep-nb-candidates ((t (:foreground "#AE81FF"))))
 '(isearch ((t (:foreground "#C4BE89" :background "#000000"))))
 '(isearch-fail ((t (:foreground "#FFFFFF" :background "#333333"))))
 '(lazy-highlight ((t (:foreground "#465457" :background "#000000"))))
 '(markdown-italic-face ((t (:slant italic))))
 '(markdown-bold-face ((t (:weight bold))))
 '(markdown-header-face ((t (:weight normal))))
 '(markdown-header-face-1 ((t (:foreground "#00FFFF"))))
 '(markdown-header-face-2 ((t (:foreground "#ff34b3"))))
 '(markdown-header-face-3 ((t (:foreground "#EEEE00"))))
 '(markdown-header-face-4 ((t (:foreground "#AE81FF"))))
 '(markdown-header-face-5 ((t (:foreground "#E6DB74"))))
 '(markdown-header-face-6 ((t (:foreground "#00FFFF"))))
 '(markdown-inline-code-face ((t (:foreground "#00FFFF"))))
 '(markdown-list-face ((t (:foreground "#EEEE00"))))
 '(markdown-blockquote-face ((t (:slant italic))))
 '(markdown-pre-face ((t (:foreground "#AE81FF"))))
 '(markdown-link-face ((t (:foreground "#00FFFF"))))
 '(markdown-reference-face ((t (:foreground "#00FFFF"))))
 '(markdown-url-face ((t (:foreground "#E6DB74"))))
 '(markdown-link-title-face ((t (:foreground "#FF0DFF"))))
 '(markdown-comment-face ((t (:foreground "#465457"))))
 '(markdown-math-face ((t (:foreground "#AE81FF"))))
 '(mumamo-background-chunk-major ((t (:background "#272822"))))
 '(mumamo-background-chunk-submode ((t (:background "#1B1D1E"))))
 '(outline-1 ((t (:foreground "#00FFFF"))))
 '(outline-2 ((t (:foreground "#FF0DFF"))))
 '(outline-3 ((t (:foreground "#EEEE00"))))
 '(outline-4 ((t (:foreground "#AE81FF"))))
 '(outline-5 ((t (:foreground "#E6DB74"))))
 '(outline-6 ((t (:foreground "#00FFFF"))))
 '(outline-7 ((t (:foreground "#FF0DFF"))))
 '(outline-8 ((t (:foreground "#EEEE00"))))
 '(secondary-selection ((t (:background "#272822"))))
 '(show-paren-match-face ((t (:foreground "#000000" :background "#FD971F"))))
 '(show-paren-mismatch-face ((t (:foreground "#960050" :background "#1E0010"))))
 '(widget-inactive-face ((t (:background "#ff0000"))))
 '(woman-addition ((t (:foreground "#AE81FF"))))
 '(woman-bold ((t (:foreground "#FF0DFF"))))
 '(woman-italic ((t (:foreground "#EEEE00"))))
 '(woman-unknown ((t (:foreground "#00FFFF"))))
 '(circe-server-face ((t (:foreground "#444444" :underline nil))))
 '(circe-prompt-face ((t (:foreground "#EEEEEF"))))
 '(circe-originator-face ((t (:background "#080808" :foreground "#FFFFFF"
                              :box (:line-width 1 :color "#080808")))))
 '(circe-highlight-nick-face ((t (:background "#080808" :foreground "#00FFFF"
                                  :box (:line-width 1 :color "#080808")))))
 '(lui-time-stamp-face ((t (:foreground "#444444" :underline nil))))
 '(ido-subdir ((t (:foreground "#EEEE00"))))
 '(ido-only-match ((t (:foreground "#32CD32"))))
 ;;TODO: Change To Hex Color
 '(rainbow-delimiters-depth-1-face ((t (:foreground "white"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "orange red"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "gold"))))
 '(ace-jump-face-background ((t (:foreground "gray20")))))

;;;###AUTOLOAD
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'molokai)

;;; molokai-theme.el ends here
