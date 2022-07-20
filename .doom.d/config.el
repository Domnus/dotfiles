(setq user-full-name "Bento Carlos"
      user-mail-address "bcsilva49@gmail.com")

(setq doom-font (font-spec :family "FantasqueSansMono Nerd Font Mono" :size 18))

(setq doom-theme 'doom-xcode)

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

(set-frame-parameter (selected-frame) 'alpha '(95 . 50))
(add-to-list 'default-frame-alist '(alpha . (95 . 50)))

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

(setq exec-path (append exec-path '("C:\\Program Files\\nodejs")))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))
