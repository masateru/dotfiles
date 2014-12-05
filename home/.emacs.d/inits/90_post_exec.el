;; 日本語入力の設定
;; ref: http://kawachodev.hatenablog.jp/entry/homebrew-cocoa-emacs-24.3

(when (eq window-system 'ns)
  (setq default-input-method "MacOSX")

  ;; "Convert yen to backslash for JIS keyboard."
  ;; USキーボードなので関係無し
  ;; (mac-translate-from-yen-to-backslash)

  ;; ミニバッファを開いたときに英字にする（閉じてもモードは戻らない）
  (add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)

  ;; Shift キーがシステム・IM に渡るようにする
  (mac-add-key-passed-to-system 'shift)

  ;; 起動したら英字にする
  (add-hook 'after-init-hook 'mac-change-language-to-us)  

  ;; Input Source ごとのカスタマイズ
  ;; - 一覧は (mac-get-input-source-list) で取得できる。
  ;; *scratch*に記述して、Ctrl+jで実行
  ;; - ATOK はバージョンごとに ID が変わる。年に一回なのでとりあえず手動更新で対応。
  (mac-set-input-method-parameter "com.justsystems.inputmethod.atok27.Japanese" `title "あ")
  (mac-set-input-method-parameter "com.justsystems.inputmethod.atok27.Japanese" `cursor-type 'box)
  (mac-set-input-method-parameter "com.justsystems.inputmethod.atok27.Japanese" `cursor-color "magenta")
;;   (mac-set-input-method-parameter "com.justsystems.inputmethod.atok27.Japanese" `cursor-color "darkred")
;;   (mac-set-input-method-parameter "com.justsystems.inputmethod.atok27.Roman" `cursor-color "black")
  )
