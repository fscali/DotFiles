(require 'python)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("ipython" . python-mode))

;;(setq python-shell nil)
;;(package-require 'virtualenv)
;;(require 'virtualenv)
;;(setq virtualenv-workon-starts-python nil)

;;(package-require 'pyflakes)
(setq ropemacs-enable-shortcuts nil)
(setq ropemacs-local-prefix "C-c C-p")
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

(setq
  python-shell-interpreter "ipython"
  python-shell-interpreter-args ""
  python-shell-prompt-regexp "In \\[[0-9]+\\]: "
  python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
  python-shell-completion-setup-code
    "from IPython.core.completerlib import module_completion"
  python-shell-completion-module-string-code
    "';'.join(module_completion('''%s'''))\n"
  python-shell-completion-string-code
    "';'.join(get_ipython().Completer.all_completions('''%s'''))\n"
  python-indent-offset 4)

(provide 'config-python)
