
;; �﷨����
(global-font-lock-mode t)


;; �����Զ���ؼ���
(dolist (mode '(c-mode c++-mode java-mode lisp-mode emacs-lisp-mode
                       lisp-interaction-mode sh-mode sgml-mode perl-mode))
  (font-lock-add-keywords
   mode
   '(("\\<\\(FIXME\\|TODO\\|Todo\\|HACK\\):" 1 font-lock-warning-face prepend)
     ("\\<\\(and\\|or\\|not\\)\\>" . font-lock-keyword-face)
     ("(\\|)" . beautiful-blue-face)
     ("\\[\\|]" . yellow-face)
     ("<\\|>" . cyan-face)
     ("{\\|}" . green-face))))



;; hs-minor-mode,�۵�����
(require 'hs-minor-mode-settings)

;; ���й������ŵ�����
(require 'all-paren-settings)

;; ������ʾ��ǰ������ĸ�����
(require 'which-func-settings)

;; cedet ǿ��Ŀ�������, �����������, ��ȫ, ��ͼ����
;; ��CEDET����ͱ༭C++���� http://emacser.com/cedet.htm
;; Emacs������������ǿ���IDE �� cedet�İ�װ http://emacser.com/install-cedet.htm
(require 'cedet-settings)

;; ecb ���������
(require 'ecb-settings)

;; ��Eclipse����������괦����
(require 'highlight-symbol-settings)

;; `gdb'
(require 'gud-settings)

;; subversion
(require 'svn-settings)


;; ���е��Զ���ȫ������
(require 'all-auto-complete-settings)

;; ���й���lisp���������
(require 'all-lisp-settings)

;; ����shell�����mode����
(require 'sh-mode-settings)

;; xml mode����
(require 'sgml-mode-settings)

(require 'html-mode-settings)

;; ruby
(require 'ruby-settings)

;; rails
(require 'rails-settings)

(require 'php-mode)

(require 'sql-settings)

;; R
(require 'my-R-settings)

;; perl
(require 'my-perl-settings)

;; ��ʾ����, ����������
(require 'eldoc-settings)

;; �Զ������������
(require 'autopair-settings)

;; ��Eclipse�Ĺ��ܴ���Emacs
(require 'eclim-settings)

;; ���㿪��c/c++������
(require 'c-settings)

;; ����kde-emacs����
(require 'compile-settings)


;; �س���indent
(eal-define-keys
 `(lisp-mode-map emacs-lisp-mode-map lisp-interaction-mode-map sh-mode-map
                 ,(if (not is-before-emacs-21) 'awk-mode-map) java-mode-map
                 ruby-mode-map c-mode-base-map tcl-mode-map org-mode-map
                 python-mode-map perl-mode-map)
 `(("RET" newline-and-indent)))

(defun copy-current-fun-name ()
  "Copy current function name."
  (interactive)
  (kill-new (which-function)))

(mapc 'require '(;; hide region
                 hide-region-settings
                 ;; hide lines
                 hide-lines
                 ;; ��imenu��tree����ʽ��ʾ����
                 imenu-tree-settings
                 ;; �������õĺ����ͱ���
                 zjl-hl-settings
                 ;; ��speedbar�ŵ���ǰframe����
                 sr-speedbar-settings
                 codepilot-settings
;;                 perl-settings
                 ;; ʵ�ֳ���������Զ�����
                 align-settings))


;; ������������Զ������Ҵ�����
;; (eal-define-keys
;;  `(c-mode-base-map awk-mode-map)
;;  `(("{" skeleton-c-mode-left-brace)))

;; ��̬����﷨����
(require 'flymake-settings)



(provide 'my-development-settings)