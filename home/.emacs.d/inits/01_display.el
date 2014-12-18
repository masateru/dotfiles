;; -*- coding: utf-8 -*-

;;; Display Setting
(setq initial-scratch-message "")
;;; font setting
;;; http://d.hatena.ne.jp/tunefs/20091002/p1(2010-11-09削除)
;;; http://sakito.jp/emacs/emacs23.html#emacs22-emacs23(2010-11-09に変更)（2011-02-21削除）
;;; ref: http://d.hatena.ne.jp/setoryohei/20110117/1295336454(2011-02-21変更）
(set-face-attribute 'default nil
		    :family "Ricty"
		    :height 150)
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Ricty"))

;;tool-bar関連
(when window-system
  ;; tool-bar を非表示
  (tool-bar-mode 0)
  ;; scroll-bar を非表示
  (scroll-bar-mode 0))

;; カーソルを点滅
(blink-cursor-mode t)

;; menu-bar を非表示
(menu-bar-mode 0)

;; メニューバーにファイルのフルパスを表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;; Watch
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)

;; 括弧をハイライト
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)                    ; カッコ内の色も変更
(set-face-background 'show-paren-match-face nil)       ; カッコ内のフェイス
(set-face-underline-p 'show-paren-match-face "yellow") ; カッコ内のフェイス

;; 選択されたリージョンを色付きにする
(transient-mark-mode t)
;; region の色
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "black")
(if (boundp 'window-system)
    (setq initial-frame-alist
	  (append (list
		   '(foreground-color . "azure3") ;; 文字が白
		   '(background-color . "black")  ;; 背景は黒
                   '(border-color     . "black")
                   '(mouse-color      . "white")
		   '(cursor-color     . "white")
                   '(cursor-type      . box)
                   '(menu-bar-lines . 1)
                   '(vertical-scroll-bars . nil) ;;スクロールバーはいらない
                   '(width . 120)		 ;;ウィンドウ幅
                   '(height . 45)		 ;;ウィンドウの高さ
                   '(top . 30)			 ;;表示位置
                   '(left . 10)			 ;;表示位置
                   )
                  initial-frame-alist)))
(setq default-frame-alist initial-frame-alist)
(set-frame-parameter (selected-frame) 'alpha '(85 30))

;; アクティブ行の色を変える
;;(setq hlline-face 'underline)
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "navy" :foreground "white"))
    (((class color)
      (background light))
     (:background "ForestGreen"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)
(hl-line-mode 1)

;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; タブ, 全角スペース、改行直前の半角スペースを表示する
;;; http://openlab.dino.co.jp/2008/08/29/230500336.html
(when (require 'jaspace nil t)
  (when (boundp 'jaspace-modes)
    (setq jaspace-modes (append jaspace-modes
                                (list 'php-mode
                                      'yaml-mode
                                      'javascript-mode
                                      'ruby-mode
                                      'text-mode
                                      'fundamental-mode))))
  (when (boundp 'jaspace-alternate-jaspace-string)
    (setq jaspace-alternate-jaspace-string "□"))
  (when (boundp 'jaspace-highlight-tabs)
    (setq jaspace-highlight-tabs ?^))
  (add-hook 'jaspace-mode-off-hook
            (lambda()
              (when (boundp 'show-trailing-whitespace)
                (setq show-trailing-whitespace nil))))
  (add-hook 'jaspace-mode-hook
            (lambda()
              (progn
                (when (boundp 'show-trailing-whitespace)
                  (setq show-trailing-whitespace t))
                (face-spec-set 'jaspace-highlight-jaspace-face
                               '((((class color) (background light))
                                  (:foreground "blue"))
                                 (t (:foreground "green"))))
                (face-spec-set 'jaspace-highlight-tab-face
                               '((((class color) (background light))
                                  (:foreground "red"
					       :background "unspecified"
					       :strike-through nil
					       :underline t))
                                 (t (:foreground "purple"
						 :background "unspecified"
						 :strike-through nil
						 :underline t))))
                (face-spec-set 'trailing-whitespace
                               '((((class color) (background light))
                                  (:foreground "red"
					       :background "unspecified"
					       :strike-through nil
					       :underline t))
                                 (t (:foreground "purple"
						 :background "unspecified"
						 :strike-through nil
						 :underline t))))))))

;; EOB を表示
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries 'left)

;; ref:http://d.hatena.ne.jp/sandai/20120304/p2
;; 行番号表示
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#800"
                    :height 0.8)
;; 行番号フォーマット
(setq linum-format "%4d")

;; 分割
;; ref: http://d.hatena.ne.jp/rubikitch/20100210/emacs
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))
(global-set-key (kbd "C-t") 'other-window-or-split)
