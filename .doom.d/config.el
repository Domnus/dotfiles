(setq user-full-name "Bento Carlos"
      user-mail-address "bcsilva49@gmail.com")

(setq doom-font (font-spec :family "CaskaydiaCove Nerd Font Mono" :size 16))

(setq doom-theme 'modus-vivendi)

(setq org-directory "~/org/")

(setq display-line-numbers-type 'relative)

;; (set-frame-parameter (selected-frame) 'alpha '(95 . 50))
;; (add-to-list 'default-frame-alist '(alpha . (95 . 50)))

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq-default format-all-formatters '(("Dart" dart-format)))

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
 :ensure t
 :hook (company-mode . company-box-mode))

;;(setq exec-path (append exec-path '("C:\\Program Files\\nodejs")))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

(setq lsp-dart-sdk-dir "/home/bentocarlos/snap/flutter/common/flutter/bin/cache/dart-sdk")
(setq lsp-dart-flutter-sdk-dir "/home/bentocarlos/snap/flutter/common/flutter")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq package-selected-packages
  '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company
    ;; Optional packages
    lsp-ui company hover))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(add-hook 'dart-mode-hook 'lsp)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024))
