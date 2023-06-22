Þ                           )     Ö   G      7  ¹  (   ñ       H  -  8  v  /  ¯    ß
    ï     õ      Ü     ñ   o  ½  a  '     ·   G  o  ÿ    o  '   x        `  µ            "  Õ   +       ù     ê     ×   w   **Source code:** :source:`Lib/mailcap.py` *filename* is the filename to be substituted for ``%s`` in the command line; the default value is ``'/dev/null'`` which is almost certainly not what you want, so usually you'll override it by specifying a filename. *key* is the name of the field desired, which represents the type of activity to be performed; the default value is 'view', since in the  most common case you simply want to view the body of the MIME-typed data.  Other possible values might be 'compose' and 'edit', if you wanted to create a new body of the given MIME type or alter the existing body data.  See :rfc:`1524` for a complete list of these fields. *plist* can be a list containing named parameters; the default value is simply an empty list.  Each entry in the list must be a string containing the parameter name, an equals sign (``'='``), and the parameter's value.  Mailcap entries can contain  named parameters like ``%{foo}``, which will be replaced by the value of the parameter named 'foo'.  For example, if the command line ``showpartial %{id} %{number} %{total}`` was in a mailcap file, and *plist* was set to ``['id=1', 'number=2', 'total=3']``, the resulting command line would be ``'showpartial 1 2 3'``. :mod:`mailcap` --- Mailcap file handling An example usage:: If a disallowed character appears in *filename*, ``findmatch`` will always return ``(None, None)`` as if no entry was found. If such a character appears elsewhere (a value in *plist* or in *MIMEtype*), ``findmatch`` will ignore all mailcap entries which use that value. A :mod:`warning <warnings>` will be raised in either case. In a mailcap file, the "test" field can optionally be specified to test some external condition (such as the machine architecture, or the window system in use) to determine whether or not the mailcap line applies.  :func:`findmatch` will automatically check such conditions and skip the entry if the check fails. Mailcap files are used to configure how MIME-aware applications such as mail readers and web browsers react to files with different MIME types. (The name "mailcap" is derived from the phrase "mail capability".)  For example, a mailcap file might contain a line like ``video/mpeg; xmpeg %s``.  Then, if the user encounters an email message or web document with the MIME type :mimetype:`video/mpeg`, ``%s`` will be replaced by a filename (usually one belonging to a temporary file) and the :program:`xmpeg` program can be automatically started to view the file. Return a 2-tuple; the first element is a string containing the command line to be executed (which can be passed to :func:`os.system`), and the second element is the mailcap entry for a given MIME type.  If no matching MIME type can be found, ``(None, None)`` is returned. Returns a dictionary mapping MIME types to a list of mailcap file entries. This dictionary must be passed to the :func:`findmatch` function.  An entry is stored as a list of dictionaries, but it shouldn't be necessary to know the details of this representation. The :mod:`mailcap` module is deprecated (see :pep:`PEP 594 <594#mailcap>` for details). The :mod:`mimetypes` module provides an alternative. The information is derived from all of the mailcap files found on the system. Settings in the user's mailcap file :file:`$HOME/.mailcap` will override settings in the system mailcap files :file:`/etc/mailcap`, :file:`/usr/etc/mailcap`, and :file:`/usr/local/etc/mailcap`. The mailcap format is documented in :rfc:`1524`, "A User Agent Configuration Mechanism For Multimedia Mail Format Information", but is not an internet standard.  However, mailcap files are supported on most Unix systems. To prevent security issues with shell metacharacters (symbols that have special effects in a shell command line), ``findmatch`` will refuse to inject ASCII characters other than alphanumerics and ``@+=:,./-_`` into the returned command line. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:09+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç :** :source:`Lib/mailcap.py` *filename* æ¯å¨å½ä»¤è¡ä¸­ç¨æ¥æ¿æ¢ ``%s`` çæä»¶åï¼é»è®¤å¼ ``'/dev/null'`` å ä¹è¯å®ä¸æ¯ä½ æ³è¦çï¼å æ­¤éå¸¸ä½ è¦éè¿æå®ä¸ä¸ªæä»¶åæ¥éè½½å®ã *key* æ¯æéå­æ®µçåç§°ï¼å®ä»£è¡¨è¦æ§è¡çæ´»å¨ç±»åï¼é»è®¤å¼æ¯ 'view'ï¼å ä¸ºå¨æéå¸¸çæåµä¸ä½ åªæ¯æ³è¦æ¥ç MIME ç±»åæ°æ®çæ­£æã å¶ä»å¯è½çå¼è¿æ 'compose' å 'edit'ï¼åå«ç¨äºæ³è¦åå»ºç»å® MIME ç±»åæ­£ææä¿®æ¹ç°ææ­£ææ°æ®çæåµã è¯·åé :rfc:`1524` è·åè¿äºå­æ®µçå®æ´åè¡¨ã *plist* å¯ä»¥æ¯ä¸ä¸ªåå«å½åå½¢åçåè¡¨ï¼é»è®¤å¼åªæ¯ä¸ä¸ªç©ºåè¡¨ã åè¡¨ä¸­çæ¯ä¸ªæ¡ç®å¿é¡»ä¸ºåå«å½¢ååç§°çå­ç¬¦ä¸²ãç­äºå· (``'='``) ä»¥åå½¢åçå¼ã Mailcap æ¡ç®å¯ä»¥åå«å½¢å¦ ``%{foo}`` çå½åå½¢åï¼å®å°ç±åä¸º 'foo' çå½¢åçå¼ææ¿æ¢ã ä¾å¦ï¼å¦æå½ä»¤è¡ ``showpartial %{id} %{number} %{total}`` æ¯å¨ä¸ä¸ª mailcap æä»¶ä¸­ï¼å¹¶ä¸ *plist* è¢«è®¾ä¸º ``['id=1', 'number=2', 'total=3']``ï¼åç»æå½ä»¤è¡å°ä¸º ``'showpartial 1 2 3'``ã :mod:`mailcap` --- Mailcap æä»¶å¤ç ä¸ä¸ªç¨æ³ç¤ºä¾:: å¦ææä¸è¢«åè®¸çå­ç¬¦åºç°å¨ *filename* ä¸­ï¼``findmatch`` å°æ»æ¯è¿å ``(None, None)`` å°±å¦åæªæ¾å°ä»»ä½æ¡ç®ä¸æ ·ã å¦æè¿æ ·çå­ç¬¦åºç°å¨å¶ä»å°æ¹ï¼å¨ *plist* æ *MIMEtype* ä¸­çå¼ï¼``findmatch`` å°å¿½ç¥ææä½¿ç¨è¿äºå¼ç mailcap æ¡ç®ã å¨ä¸¤ç§æåµä¸é½å°å¼å :mod:`è­¦å <warnings>`ã å¨ mailcap æä»¶ä¸­ï¼å¯ä»¥æå®å¯éç "test" å­æ®µæ¥æ£æµæäºå¤é¨æ¡ä»¶ï¼ä¾å¦æä½¿ç¨çæºå¨æ¶ææçªå£ç³»ç»ï¼æ¥ç¡®å®æ¯å¦è¦åºç¨ mailcap è¡ã :func:`findmatch` å°èªå¨æ£æ¥æ­¤ç±»æ¡ä»¶å¹¶å¨æ£æ¥æªéè¿æ¶è·³è¿æ¡ç®ã Mailcap æä»¶å¯ç¨æ¥éç½®æ¯æ MIME çåºç¨ç¨åºä¾å¦é®ä»¶éè¯»å¨å Web æµè§å¨å¦ä½ååºå·æä¸å MIME ç±»åçæä»¶ã ("mailcap" è¿ä¸ªåç§°æºèªç­è¯­ "mail capability"ã) ä¾å¦ï¼ä¸ä¸ª mailcap æä»¶å¯è½åå« ``video/mpeg; xmpeg %s`` è¿æ ·çè¡ã ç¶åï¼å¦æç¨æ·éå° MIME ç±»åä¸º :mimetype:`video/mpeg` çé®ä»¶æ¶æ¯æ Web ææ¡£æ¶ï¼``%s`` å°è¢«æ¿æ¢ä¸ºä¸ä¸ªæä»¶å (éå¸¸å±äºä¸´æ¶æä»¶) å¹¶ä¸ä¼èªå¨å¯å¨ :program:`xmpeg` ç¨åºæ¥æ¥çè¯¥æä»¶ã è¿åä¸ä¸ª 2 åç»ï¼å¶ä¸­ç¬¬ä¸ä¸ªåç´ æ¯åå«æè¦æ§è¡å½ä»¤çå­ç¬¦ä¸² (å®å¯è¢«ä¼ éç» :func:`os.system`)ï¼ç¬¬äºä¸ªåç´ æ¯å¯¹åºäºç»å® MIME ç±»åç mailcap æ¡ç®ã å¦ææ¾ä¸å°å¹éç MIME ç±»åï¼åå°è¿å ``(None, None)``ã è¿åä¸ä¸ªå° MIME ç±»åæ å°å° mailcap æä»¶æ¡ç®åè¡¨çå­å¸ã æ­¤å­å¸å¿é¡»è¢«ä¼ ç» :func:`findmatch` å½æ°ã æ¡ç®ä¼è¢«å­å¨ä¸ºå­å¸åè¡¨ï¼ä½å¹¶ä¸éè¦äºè§£æ­¤è¡¨ç¤ºå½¢å¼çç»èã :mod:`mailcap` æ¨¡åå·²è¢«å¼ç¨ï¼è¯·åé :pep:`PEP 594 <594#mailcap>` äºè§£è¯¦æï¼ã :mod:`mimetypes` æ¨¡åæä¾äºä¸ä¸ªæ¿ä»£åã æ­¤ä¿¡æ¯æ¥èªå¨ç³»ç»ä¸­æ¾å°çææ mailcap æä»¶ã ç¨æ·ç mailcap æä»¶ :file:`$HOME/.mailcap` ä¸­çè®¾ç½®å°è¦çç³»ç» mailcap æä»¶ :file:`/etc/mailcap`, :file:`/usr/etc/mailcap` å :file:`/usr/local/etc/mailcap` ä¸­çè®¾ç½®ã mailcap æ ¼å¼çè¯´æææ¡£è§ :rfc:`1524`, "A User Agent Configuration Mechanism For Multimedia Mail Format Information"ï¼ä½å®å¹¶ä¸æ¯ä¸ä¸ªäºèç½æ åã ä¸è¿ï¼mailcap æä»¶å¨å¤§å¤æ° Unix ç³»ç»ä¸é½åå°æ¯æã ä¸ºäºé²æ­¢ä½¿ç¨ shell åå­ç¬¦ï¼å¨ shell å½ä»¤è¡ä¸­å·æç¹æ®ææçç¬¦å·ï¼çå®å¨é®é¢ï¼``findmatch`` ä¼æç»æå­æ¯æ°å­å ``@+=:,./-_`` ä»¥å¤ç ASCII å­ç¬¦æ³¨å¥è¢«è¿åçå½ä»¤è¡ã 