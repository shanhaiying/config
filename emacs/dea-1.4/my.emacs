;; -*- Emacs-Lisp -*-

;; Time-stamp: <2010-11-03 17:45:59 Wednesday by taoshanwen>

(defconst my-emacs-path "/home/work/config/dea-1.4/" "my emacs config path")
(defconst my-emacs-my-lisps-path  (concat my-emacs-path "my-lisps/") "���Լ�д��emacs lisp����·��")
(defconst my-emacs-lisps-path     (concat my-emacs-path "lisps/") "�����ص�emacs lisp����·��")
(defconst my-emacs-templates-path (concat my-emacs-path "templates/") "Path for templates")

;; ��`my-emacs-lisps-path'��������Ŀ¼���ӵ�`load-path'����
(load (concat my-emacs-my-lisps-path "my-subdirs"))
(my-add-subdirs-to-load-path my-emacs-lisps-path)
(my-add-subdirs-to-load-path my-emacs-my-lisps-path)

;; һЩ������С����
(require 'ahei-misc)

;; ����`eval-after-load'�ӿ������ٶȵĿ�
;; ��eval-after-load���ⲻ��Ҫ��elisp���ļ���
;; http://emacser.com/eval-after-load.htm
(require 'eval-after-load)

(require 'util)

;; һЩEmacs��С����
(require 'misc-settings)

;; ��������
;;(require 'coding-settings)

;; CUA�ľ�����������ر𷽱�
(require 'cua-settings)

;; �����������
(require 'rect-mark-settings)

;; �������
(require 'mouse-settings)

;; ����mark��һЩ���ã�ʹ��ǳ������ѡ��region
(require 'mark-settings)

;; `mode-line'��ʾ��ʽ
(require 'mode-line-settings)

;; ffap,�򿪵�ǰpoint���ļ�
(require 'ffap-settings)

;; �������Կ������������
(require 'dev-settings)

;; ��Ҫmenu-bar��tool-bar
;; (unless window-system
;;   (menu-bar-mode -1))
(menu-bar-mode -1)
;; GUI����ʾtoolbar�Ļ�select-buffer�������
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

;; ��ѹ���ļ�ʱ�Զ���ѹ��
;; �������sessionǰ��
(auto-compression-mode 1)

;; ���й���buffer���������
(require 'all-buffer-settings)

;; frame-cmds.el�������multi-termǰ��,����ediff�˳�ʱ����ִ���
;; ��icicles soft-requires frame-cmds.el, ����iciclesҲ�������multi-termǰ��
;; emacs22��Ҳ�������kde-emacsǰ��, �����˵shell-command��void-function
;; http://emacser.com/icicles-doremi-palette.htm
(require 'icicles-settings)
(require 'doremi-settings)
(require 'palette-settings)

;; edit-settings�ж�M-w���¶���,����kde-emacs��Ҳ���䶨����
;; ���Ա���Ҫ����kde-emacs����
(require 'edit-settings)

;; ��M-xִ��ĳ�������ʱ���������ͬʱ������ѡ����������ʾ
(require 'icomplete-settings)

;; minibuffer�����벿������Ϳ���ʹ�ò�ȫ
(unless is-after-emacs-23
  (partial-completion-mode 1))

;; ͼƬmode
(require 'image-mode-settings)

;; ��һ���ܴ��kill ring. ������ֹ�Ҳ�С��ɾ����Ҫ�Ķ���
(setq kill-ring-max 200)

;; �������kill-ring��Ѱ����Ҫ�Ķ���
(require 'browse-kill-ring-settings)

;; ��ʾ�к�
(require 'linum-settings)

;; color theme Emacs����
(require 'color-theme-settings)

(require 'ahei-face)
(require 'color-theme-ahei)
(require 'face-settings)

;; ������ǰ��
(require 'hl-line-settings)

;; ��������
(require 'font-settings)

;; diff
(require 'diff-settings)

;; Emacs��diff: ediff
(require 'ediff-settings)

;; ����򿪵��ļ�
(require 'recentf-settings)

;; ��buffer�з���Ĳ����ַ���: color-moccur
(require 'moccur-settings)

;; Emacs��ǿ����������Isearch����
(require 'isearch-settings)

;; �ǳ����һ����չ�����ԡ����������á��ı༭һ���ı�ģʽ�ı��
(if is-before-emacs-21 (require 'table "table-for-21"))

;; ���ļ���buffer��ɫ�����html
(require 'htmlize)

;; time-stamp, ���ļ�ͷ��¼�޸�ʱ��, ����̬����
(require 'time-stamp-settings)

;; Emacs������Ϊһ��server, Ȼ����emacsclient�������server,
;; �����ٴ�����Emacs
(require 'emacs-server-settings)

(require 'apropos-settings)
(require 'completion-list-mode-settings)

;; ��ʾascii��
(require 'ascii)

;; ���й��ڲ鿴�������������
(require 'all-help-settings)

;; ����һЩemacs 21û�еĺ���
(if is-before-emacs-21 (require 'for-emacs-21))

;; ��дģʽ
(setq-default abbrev-mode t)
(setq save-abbrevs nil)

;; ����Ϊ������buffer��ǰ������丸Ŀ¼����������buffer���������ֿ����������ǵ����ļ�һ��û��̫����������
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; ��Ŀ¼��ʽ��ʾlinkd�ĵ�
(require 'linkd-settings)

;; Emacs�ĳ�ǿ�ļ�������
(require 'dired-settings)

;; ������л�major mode
(defvar switch-major-mode-last-mode nil)

(defun major-mode-heuristic (symbol)
  (and (fboundp symbol)
       (string-match ".*-mode$" (symbol-name symbol))))

(defun switch-major-mode (mode)
  "�л�major mode"
  (interactive
   (let ((fn switch-major-mode-last-mode) val)
     (setq val
           (completing-read
            (if fn (format "�л�major-modeΪ(ȱʡΪ%s): " fn) "�л�major modeΪ: ")
            obarray 'major-mode-heuristic t nil nil (symbol-name fn)))
     (list (intern val))))
  (let ((last-mode major-mode))
    (funcall mode)
    (setq switch-major-mode-last-mode last-mode)))
(global-set-key (kbd "C-x q") 'switch-major-mode)

(defun get-mode-name ()
  "��ʾ`major-mode'��`mode-name'"
  (interactive)
  (message "major-modeΪ%s, mode-nameΪ%s" major-mode mode-name))
(global-set-key (kbd "C-x m") 'get-mode-name)

;; �鿴Emacs�ڽ���
(autoload 'list-processes+ "list-processes+" "��ǿ��`list-processes'����" t)

(require 'view-mode-settings)

(defun revert-buffer-no-confirm ()
  "ִ��`revert-buffer'ʱ����Ҫȷ��"
  (interactive)
  (when (buffer-file-name)
    (let ((emaci emaci-mode))
      (revert-buffer buffer-file-name t)
      (emaci-mode (if emaci 1 -1)))))
(eal-define-keys-commonly
 global-map
 `(("C-x u"   revert-buffer-no-confirm)
   ("C-x M-K" revert-buffer-with-gbk)
   ("C-x U"   revert-buffer-with-coding-system-no-confirm-sb)))

(defun count-brf-lines (&optional is-fun)
  "��ʾ��ǰbuffer��region�������������ַ���"
  (interactive "P")
  (let (min max)
    (if is-fun
        (save-excursion
          (beginning-of-defun) (setq min (point))
          (end-of-defun) (setq max (point))
          (message "��ǰ����%s�ڹ���%d��, %d���ַ�" (which-function) (count-lines min max) (- max min)))
      (if mark-active
          (progn
            (setq min (min (point) (mark)))
            (setq max (max (point) (mark))))
        (setq min (point-min))
        (setq max (point-max)))
      (if (or (= 1 (point-min)) mark-active)
          (if mark-active
              (message "��ǰregion�ڹ���%d��, %d���ַ�" (count-lines min max) (- max min))
            (message "��ǰbuffer�ڹ���%d��, %d���ַ�" (count-lines min max) (- max min)))
        (let ((nmin min) (nmax max))
          (save-excursion
            (save-restriction
              (widen)
              (setq min (point-min))
              (setq max (point-max))))
          (message "narrow��buffer�ڹ���%d��, %d���ַ�, ��narrow��buffer�ڹ���%d��, %d���ַ�"
                   (count-lines nmin nmax) (- nmax nmin) (count-lines min max) (- max min)))))))
(eal-define-keys-commonly
 global-map
 `(("C-x l" count-brf-lines)
   ("C-x L" (lambda () (interactive) (count-brf-lines t)))))

;; ���Ӹ��ḻ�ĸ���
(require 'generic-x)

(defun switch-to-scratch ()
  "�л���*scratch*"
  (interactive)
  (let ((buffer (get-buffer-create "*scratch*")))
    (switch-to-buffer buffer)
    (unless (equal major-mode 'lisp-interaction-mode)
      (lisp-interaction-mode))))
(global-set-key (kbd "C-x s") 'switch-to-scratch)

(defun visit-.emacs ()
  "����.emacs�ļ�"
  (interactive)
  (find-file (concat my-emacs-path ".emacs")))
(global-set-key (kbd "C-x E") 'visit-.emacs)

;; grep
(require 'grep-settings)

;; ack-grep, grep��perl�Ĵ���Ʒ
(require 'full-ack-settings)

(eal-define-keys-commonly
 global-map
 `(("M-r"     query-replace-sb)
   ("M-%"     query-replace-sb)
   ("ESC M-%" query-replace-regexp-sb)
   ("ESC M-r" query-replace-regexp-sb)
   ("C-x M-r" query-replace-regexp-sb)
   ("M-z"     zap-to-char-sb)
   ("C-j"     goto-line)
   ("C-x C-s" save-buffer-sb)))

(am-add-hooks
 `(find-file-hook)
 (lambda ()
   (local-set-key (kbd "C-M-j") 'goto-line)))

;; ���ص����ȥ���ĵط�
(require 'recent-jump-settings)

;; ͳ������ʹ��Ƶ��
(require 'command-frequence)

;; Emacs�е��ı������w3m
;; http://emacser.com/w3m.htm
;;(require 'w3m-settings)

;; ����һ�û��༭�ļ�, ���߱༭Զ�������ļ�
(require 'tramp-settings)

;; erc: Emacs�е�IRC
;; ERCʹ�ü�� emacser.com/erc.htm
(require 'erc-settings)

;; spell check
(setq-default ispell-program-name "aspell")

(define-key global-map (kbd "C-q") 'quoted-insert-sb)

;; Emacs�еİ�������
(require 'package)
(package-initialize)

(require 'auto-install)
(setq auto-install-directory (concat my-emacs-lisps-path "auto-install"))

(unless mswin
  (defun install-.emacs ()
    (interactive)
    (shell-command (concat my-emacs-path "install.emacs.sh")))

  (add-hook 'kill-emacs-hook 'install-.emacs))

;; ��pdf,ps,dvi�ļ�ת��Ϊpng��ʽ, ��Emacs�������
(if is-after-emacs-23
  (require 'doc-view)
  (setq doc-view-conversion-refresh-interval 3))

;; ��Emacs����ʹ��shell
(require 'term-settings)
(require 'multi-term-settings)

;; (require 'anything-settings)

(require 'ioccur)

;; ��ѯ����Ԥ��
(require 'weather-settings)

;; ���԰ѹ���ɷ�����һ��С����
(require 'bar-cursor)

(defun goto-my-emacs-lisps-dir ()
  "Goto `my-emacs-lisps-path'."
  (interactive)
  (dired my-emacs-lisps-path))
(defun goto-my-emacs-my-lisps-dir ()
  "Goto `my-emacs-my-lisps-path'."
  (interactive)
  (dired my-emacs-my-lisps-path))
(defun goto-my-emacs-dir ()
  "Goto `my-emacs-path'."
  (interactive)
  (dired my-emacs-path))
(defun goto-my-home-dir ()
  "Goto my home directory."
  (interactive)
  (dired "~"))
(define-key-list
 global-map
 `(("C-x G l" goto-my-emacs-lisps-dir)
   ("C-x G m" goto-my-emacs-my-lisps-dir)
   ("C-x G e" goto-my-emacs-dir)
   ("C-x M-H" goto-my-home-dir)))

(define-key global-map (kbd "C-x M-c") 'describe-char)

;; ����Emacs��ʱ�����Emacs
(require 'maxframe-settings)

(defun dos2unix ()
  "dos2unix on current buffer."
  (interactive)
  (set-buffer-file-coding-system 'unix))

(defun unix2dos ()
  "unix2dos on current buffer."
  (interactive)
  (set-buffer-file-coding-system 'dos))

(define-key global-map (kbd "C-x M-D") 'dos2unix)

(define-key-list
 global-map
 `(("C-x M-k" Info-goto-emacs-key-command-node)
   ("C-x ESC ESC" repeat-complex-command-sb)))

;; Emacs������������ǿ���IDE �� ���ܵĸı�����״
;; http://emacser.com/cursor-change.htm
(require 'cursor-change)
(cursor-change-mode 1)

(defun copy-file-name (&optional full)
  "Copy file name of current-buffer.
If FULL is t, copy full file name."
  (interactive "P")
  (let ((file (buffer-name)))
    (if full
        (setq file (expand-file-name file)))
    (kill-new file)
    (message "File `%s' copied." file)))
(eal-define-keys
 `(emacs-lisp-mode-map lisp-interaction-mode-map java-mode-map sh-mode-map
                       c-mode-base-map text-mode-map ruby-mode-map html-mode-map
                       java-mode-map conf-javaprop-mode-map conf-space-mode-map
                       python-mode-map)
 `(("C-c M-C" copy-file-name)))

;; notification tool
(require 'todochiku-settings)

;; twitter client
(require 'eagle-settings)
(require 'twit-settings)

;; ģ��vi�ĵ�(.)����
(require 'dot-mode)

;; �ý�����ɫ��ʾ��������޸�
;; http://emacser.com/highlight-tail.htm
;; ��semantic��ͻ�����������󣬴򿪴��ļ���ʱ�򣬻ᷢ��buffer��Χ��ˢ��
;; (require 'highlight-tail-settings)

;; Emacs������������ǿ���IDE �� ��Emaci�Ķ��ļ�
;; http://emacser.com/emaci.htm
(require 'emaci-settings)

;;;###autoload
(defun update-current-file-autoloads (file &optional save-after)
  "`update-file-autoloads' for current file."
  (interactive "fUpdate autoloads for file: \np")
  (let* ((load-file (expand-file-name "loaddefs.el"))
         (generated-autoload-file load-file))
    (unless (file-exists-p load-file)
      (shell-command (concat "touch " load-file)))
    (update-file-autoloads file save-after)))

;; ���mode
(require 'outline-settings)

;; org��һ���ǳ�ǿ���GTD����
(require 'org-settings)

;; ǿ��ķ�������
(require 'muse-settings)

;; ��webloggerдWordPress����
;; http://emacser.com/weblogger.htm
(require 'weblogger-settings)

;; �ǳ�ǿ����ı���ͼ�Ĺ���
(require 'artist-settings)

;; google-maps-el �C Emacs�еĹȸ��ͼ
;; http://emacser.com/emacs-google-map.htm
(require 'google-maps-settings)

;; �ر�buffer��ʱ��, �����buffer�ж�Ӧ�Ľ��̴���, ����ʾ, ��
(delq 'process-kill-buffer-query-function kill-buffer-query-functions)

;; session,���Ա���ܶණ��������������ʷ(�����������ļ��ȵ�����)��
;; register�����ݡ�buffer��local variables�Լ�kill-ring������޸ĵ��ļ��б�ȡ��ǳ����á�
(require 'session-settings)

;; ����ҵ��desktop, ��desktop�����
(require 'wcy-desktop-settings)

;; HACK: Ҫ�������,��û���ֱȽ���ֵ�����
;; ����ͻָ���������
;; desktop,��������Emacs�����滷�� �� buffers���Լ�buffer���ļ�����major modes��λ�õȵ�
;; (require 'desktop-settings)

(sb-update)
