(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/"))

;; tab to space http://stackoverflow.com/questions/69934/set-4-space-indent-in-emacs-in-text-mode
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)

;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; バックアップファイルを作成させない
(setq make-backup-files nil)

;; 終了時にオートセーブファイルを削除する
(setq delete-auto-save-files t)

;; 対応する括弧を光らせる
(show-paren-mode 1)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
