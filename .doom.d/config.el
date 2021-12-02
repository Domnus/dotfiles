(setq user-full-name "Bento Carlos"
      user-mail-address "bcsilva49@gmail.com")

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font Mono" :size 16))

(setq doom-theme 'doom-outrun-electric)

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

(set-frame-parameter (selected-frame) 'alpha '(90 . 50))
(add-to-list 'default-frame-alist '(alpha . (90 . 50)))

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
  :hook (company-mode . company-box-mode))
