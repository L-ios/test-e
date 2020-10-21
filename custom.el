(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(beacon-color "#d33682")
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(adwaita))
 '(default-input-method "rime")
 '(fci-rule-color "#323342")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'light)
 '(highlight-changes-colors '("#ff8eff" "#ab7eff"))
 '(highlight-tail-colors
   '(("#323342" . 0)
     ("#63de5d" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#323342" . 100)))
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode t)
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-html-htmlize-output-type 'inline-css)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail org-tempo ol-w3m))
 '(org-plantuml-jar-path "~/.emacs.d/plantuml.jar")
 '(org-publish-project-alist
   `(("default" :base-directory ,(org2jekyll-input-directory)
      :base-extension "org" :publishing-directory ,(org2jekyll-output-directory)
      :publishing-function org-html-publish-to-html :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>" :auto-preamble t :recursive t :html-extension "html" :body-only t)
     ("post" :base-directory ,(org2jekyll-input-directory)
      :base-extension "org" :publishing-directory ,(org2jekyll-output-directory org2jekyll-jekyll-posts-dir)
      :publishing-function org-html-publish-to-html :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>" :auto-preamble t :recursive t :html-extension "html" :body-only t)
     ("images" :base-directory ,(org2jekyll-input-directory "img")
      :base-extension "jpg\\|gif\\|png" :publishing-directory ,(org2jekyll-output-directory "img")
      :publishing-function org-publish-attachment :recursive t)
     ("js" :base-directory ,(org2jekyll-input-directory "js")
      :base-extension "js" :publishing-directory ,(org2jekyll-output-directory "js")
      :publishing-function org-publish-attachment :recursive t)
     ("css" :base-directory ,(org2jekyll-input-directory "css")
      :base-extension "css\\|el" :publishing-directory ,(org2jekyll-output-directory "css")
      :publishing-function org-publish-attachment :recursive t)
     ("assets" :base-directory ,(org2jekyll-input-directory "assets")
      :base-extension "asc\\|txt" :publishing-directory ,(org2jekyll-output-directory "assets")
      :publishing-function org-publish-attachment :recursive t)
     ("web" :components
      ("images" "js" "css" "assets"))))
 '(org2jekyll-jekyll-directory (expand-file-name "~/Documents/org-jekyll/jekyll") nil (org2jekyll))
 '(package-selected-packages
   '(envrc uptimes shfmt dotenv-mode daemons htmlize lua-mode gnuplot sudo-edit flycheck-ledger ledger-mode origami regex-tool info-colors flycheck-clojure cider elein cljsbuild-mode clojure-mode slime-company slime cask-mode flycheck-relint cl-libify flycheck-package highlight-quoted macrostep cl-lib-highlight aggressive-indent immortal-scratch auto-compile ipretty elisp-slime-nav paredit nginx-mode company-terraform terraform-mode docker-compose-mode dockerfile-mode docker yaml-mode flycheck-rust racer rust-mode flycheck-nim nim-mode merlin-eldoc merlin tuareg sqlformat projectile-rails yard-mode bundler yari robe ruby-compilation inf-ruby rspec-mode ruby-hash-syntax psci psc-ide purescript-mode flycheck-elm elm-test-runner elm-mode dhall-mode dante haskell-mode reformatter toml-mode company-anaconda anaconda-mode pip-requirements restclient httprepl haml-mode css-eldoc skewer-less sass-mode rainbow-mode tagedit org-pomodoro writeroom-mode org-cliplink company-php smarty-mode php-mode add-node-modules-path skewer-mode js-comint coffee-mode xref-js2 prettier-js typescript-mode js2-mode json-mode erlang csv-mode markdown-mode textile-mode crontab-mode alert ibuffer-projectile github-review forge github-clone bug-reference-github yagist git-commit magit-todos magit git-timemachine gitconfig-mode gitignore-mode git-blamed vc-darcs browse-at-remote whitespace-cleanup-mode which-key highlight-escape-sequences whole-line-or-region move-dup page-break-lines multiple-cursors avy browse-kill-ring symbol-overlay rainbow-delimiters goto-line-preview beacon mode-line-bell vlf list-unicode-display unfill mmm-mode session windswap switch-window company-quickhelp company ivy-xref swiper projectile counsel ivy-rich ivy smex flycheck-color-mode-line flycheck ibuffer-vc wgrep-ag ag wgrep anzu diff-hl diredfl disable-mouse default-text-scale dimmer color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized command-log-mode scratch diminish exec-path-from-shell gnu-elpa-keyring-update fullframe seq company-nixos-options nixos-options nix-buffer nix-sandbox nixpkgs-fmt nix-mode compact-docstrings zeal-at-point org-preview-html rust-auto-use rust-playground rustic shelldoc sqlite3 darkokai-theme monokai-pro-theme monokai-theme expand-region flycheck-plantuml plantuml-mode org-edit-latex org-download edit-indirect markdown-preview-mode ox-asciidoc ox-bibtex-chinese ox-html5slide ox-jekyll-md org2jekyll orgalist ssh-config-mode systemd rime org org-index))
 '(plantuml-default-exec-mode 'jar)
 '(plantuml-jar-path "/home/lionseun/.emacs.d/plantuml.jar")
 '(pos-tip-background-color "#E6DB74")
 '(pos-tip-foreground-color "#242728")
 '(rime-user-data-dir "~/.config/ibus/rime")
 '(scroll-bar-mode 'right)
 '(session-use-package t nil (session))
 '(tool-bar-mode t)
 '(truncate-lines t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#ff0066")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#63de5d")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#53f2dc")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#06d8ff")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#242728" "#323342" "#F70057" "#ff0066" "#86C30D" "#63de5d" "#BEB244" "#E6DB74" "#40CAE4" "#06d8ff" "#FF61FF" "#ff8eff" "#00b2ac" "#53f2dc" "#f8fbfc" "#ffffff"))
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-table ((t (:foreground "#c397d8" :height 1.05 :width normal :family "UbuntuMono Nerd Font")))))
