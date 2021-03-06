
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark-high-contrast)))
 '(custom-safe-themes
   (quote
    ("7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" default)))
 '(package-selected-packages (quote (twittering-mode web-mode solarized-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(evil-mode t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(defun set-bidi-env ()
  "interactive"
  (setq bidi-paragraph-direction 'nil))
;; binding f2 to toggle input method to farsi-isiri-9147
(defun set-layout ()
  (interactive)
  (activate-input-method 'farsi-isiri-9147))

(global-set-key (kbd "<f2>") 'set-layout)
(add-hook 'org-mode-hook 'set-bidi-env)
