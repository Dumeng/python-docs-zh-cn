Þ    4      ¼              \  (   ]       í   ¡  &     =   ¶  3   ô  ¡   (  ~   Ê  µ   I  b   ÿ  +   b  ©     á   8  \   	  o   w	     ç	  u   k
     á
  !  ÷
  E        _     d     q  y   ~  j   ø  `   c  *   Ä     ï  v   {  ¥   ò  Ý     4   v     «  H   <      :     y   A  .   »  Ë   ê    ¶  E   Ð        H  7  Ì      M  ¤   Ü       M     D   U  e           ½  	  (   Ç     ð  è     &   ÷  =      '   \            !  µ   !  K   P"  3   "  ¨   Ð"  Ó   y#  `   M$  n   ®$  y   %  W   %     ï%    &  N   	'     X'     ]'     i'     u'  m   ü'  c   j(  *   Î(     ù(     )     *  ñ   ¯*  3   ¡+     Õ+  E   b,  9  ¨,  <   â-  r   .  )   .  Ê   ¼.    /  ;   0     Ù0    ù0  Û  2  X  í3     F5     ß5  P   p6  ?   Á6  [   7     ]7   **Source code:** :source:`Lib/poplib.py` *context* parameter added. *context* parameter is a :class:`ssl.SSLContext` object which allows bundling SSL configuration options, certificates and private keys into a single (potentially long-lived) structure.  Please read :ref:`ssl-security` for best practices. :mod:`poplib` --- POP3 protocol client :ref:`Availability <availability>`: not Emscripten, not WASI. A :class:`POP3` instance has the following methods: Additionally, this module provides a class :class:`POP3_SSL`, which provides support for connecting to POP3 servers that use SSL as an underlying protocol layer. All POP3 commands are represented by methods of the same name, in lowercase; most return the response text sent by the server. All commands will raise an :ref:`auditing event <auditing>` ``poplib.putline`` with arguments ``self`` and ``line``, where ``line`` is the bytes about to be sent to the remote host. At the end of the module, there is a test section that contains a more extensive example of usage. Do nothing.  Might be used as a keep-alive. Exception raised on any errors from this module (errors from :mod:`socket` module are not caught). The reason for the exception is passed to the constructor as a string. Flag message number *which* for deletion.  On most servers deletions are not actually performed until QUIT (the major exception is Eudora QPOP, which deliberately violates the RFCs by doing pending deletes on any disconnect). Get mailbox status.  The result is a tuple of 2 integers: ``(message count, mailbox size)``. Here is a minimal example (without error checking) that opens a mailbox and retrieves and prints all messages:: If the *timeout* parameter is set to be zero, it will raise a :class:`ValueError` to prevent the creation of a non-blocking socket. Instances of :class:`POP3_SSL` have no additional methods. The interface of this subclass is identical to its parent. Module :mod:`imaplib` Note that POP3, though widely supported, is obsolescent.  The implementation quality of POP3 servers varies widely, and too many are quite poor. If your mailserver supports IMAP, you would be better off using the :class:`imaplib.IMAP4` class, as IMAP servers tend to be better implemented. One exception is defined as an attribute of the :mod:`poplib` module: POP3 POP3 Example POP3 Objects Query the server's capabilities as specified in :rfc:`2449`. Returns a dictionary in the form ``{'name': ['param'...]}``. Raises an :ref:`auditing event <auditing>` ``poplib.connect`` with arguments ``self``, ``host``, ``port``. Raises an :ref:`auditing event <auditing>` ``poplib.putline`` with arguments ``self``, ``line``. Remove any deletion marks for the mailbox. Request message list, result is in the form ``(response, ['mesg_num octets', ...], octets)``. If *which* is set, it is the message to list. Retrieve whole message number *which*, and set its seen flag. Result is in form ``(response, ['line', ...], octets)``. Retrieves the message header plus *howmuch* lines of the message after the header of message number *which*. Result is in form ``(response, ['line', ...], octets)``. Return message digest (unique id) list. If *which* is specified, result contains the unique id for that message in the form ``'response mesgnum uid``, otherwise result is list ``(response, ['mesgnum uid', ...], octets)``. Returns the greeting string sent by the POP3 server. Send password, response includes message count and mailbox size. Note: the mailbox on the server is locked until :meth:`~poplib.quit` is called. Send user command, response should indicate that a password is required. Set the instance's debugging level.  This controls the amount of debugging output printed.  The default, ``0``, produces no debugging output.  A value of ``1`` produces a moderate amount of debugging output, generally a single line per request.  A value of ``2`` or higher produces the maximum amount of debugging output, logging each line sent and received on the control connection. Signoff:  commit changes, unlock mailbox, drop connection. Start a TLS session on the active connection as specified in :rfc:`2595`. This is only allowed before user authentication The :mod:`poplib` module provides two classes: The FAQ for the :program:`fetchmail` POP/IMAP client collects information on POP3 server variations and RFC noncompliance that may be useful if you need to write an application based on the POP protocol. The POP3 TOP command this method uses, unlike the RETR command, doesn't set the message's seen flag; unfortunately, TOP is poorly specified in the RFCs and is frequently broken in off-brand servers. Test this method by hand against the POP3 servers you will use before trusting it. The deprecated *keyfile* and *certfile* parameters have been removed. The standard Python IMAP module. This class implements the actual POP3 protocol.  The connection is created when the instance is initialized. If *port* is omitted, the standard POP3 port (110) is used. The optional *timeout* parameter specifies a timeout in seconds for the connection attempt (if not specified, the global default timeout setting will be used). This is a subclass of :class:`POP3` that connects to the server over an SSL encrypted socket.  If *port* is not specified, 995, the standard POP3-over-SSL port is used.  *timeout* works as in the :class:`POP3` constructor. *context* is an optional :class:`ssl.SSLContext` object which allows bundling SSL configuration options, certificates and private keys into a single (potentially long-lived) structure.  Please read :ref:`ssl-security` for best practices. This module defines a class, :class:`POP3`, which encapsulates a connection to a POP3 server and implements the protocol as defined in :rfc:`1939`. The :class:`POP3` class supports both the minimal and optional command sets from :rfc:`1939`. The :class:`POP3` class also supports the ``STLS`` command introduced in :rfc:`2595` to enable encrypted communication on an already established connection. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. Try to switch to UTF-8 mode. Returns the server response if successful, raises :class:`error_proto` if not. Specified in :RFC:`6856`. Use RPOP authentication (similar to UNIX r-commands) to log into POP3 server. Use the more secure APOP authentication to log into the POP3 server. `Frequently Asked Questions About Fetchmail <http://www.catb.org/~esr/fetchmail/fetchmail-FAQ.html>`_ protocol Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç ï¼** :source:`Lib/poplib.py` æ·»å äº *context* åæ°ã *context* åæ°æ¯ä¸ä¸ª :class:`ssl.SSLContext` å¯¹è±¡ï¼è¯¥å¯¹è±¡å¯ä»¥å° SSL éç½®éé¡¹ãè¯ä¹¦åç§é¥æåæ¾å¥ä¸ä¸ªåç¬çï¼å¯ä»¥é¿ä¹å­å¨çï¼ç»æä¸­ãè¯·éè¯» :ref:`ssl-security` ä»¥è·åæä½³å®è·µã :mod:`poplib` --- POP3 åè®®å®¢æ·ç«¯ :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã :class:`POP3` å®ä¾å·æä¸åæ¹æ³: æ¬æ¨¡åé¢å¤æä¾ä¸ä¸ª :class:`POP3_SSL` ç±»ï¼å¨è¿æ¥å° POP3 æå¡å¨æ¶ï¼è¯¥ç±»ä¸ºä½¿ç¨ SSL ä½ä¸ºåºå±åè®®å±æä¾äºæ¯æã ææ POP3 å½ä»¤åä»¥ååçæ¹æ³è¡¨ç¤ºï¼ä½¿ç¨å°åå½¢å¼ï¼å¤§å¤æ°æ¹æ³è¿åçæ¯æå¡å¨æåéçååºææ¬ã ææå½ä»¤é½ä¼å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``poplib.putline``ï¼éå¸¦åæ° ``self`` å ``line``ï¼å¶ä¸­ ``line`` æ¯å³å°åéå°è¿ç¨ä¸»æºçå­èä¸²ã æ¨¡åçæåæä¸æ®µæµè¯ï¼å¶ä¸­åå«çç¨æ³ç¤ºä¾æ´å å¹¿æ³ã ä»ä¹é½ä¸åãå¯ä»¥ç¨äºä¿ææ´»å¨ç¶æã æ­¤æ¨¡åçææéè¯¯é½å°å¼åæ¬å¼å¸¸ï¼æ¥èª :mod:`socket` æ¨¡åçéè¯¯ä¸ä¼è¢«æè·ï¼ãå¼å¸¸çåå å°ä»¥å­ç¬¦ä¸²çå½¢å¼ä¼ éç»æé å½æ°ã å°ç¼å·ä¸º *which* çæ¶æ¯æ è®°ä¸ºå¾å é¤ãå¨å¤æ°æå¡å¨ä¸ï¼å é¤æä½ç´å° QUIT æä¼å®éæ§è¡ï¼ä¸»è¦ä¾å¤æ¯ Eudora QPOPï¼å®å¨æ­å¼è¿æ¥æ¶æ§è¡å é¤ï¼ææè¿åäº RFCï¼ã è·åé®ç®±ç¶æãç»æä¸º 2 ä¸ªæ´æ°ç»æçåç»ï¼``(message count, mailbox size)``ã ä»¥ä¸æ¯ä¸ä¸ªæç­ç¤ºä¾ï¼ä¸å¸¦éè¯¯æ£æ¥ï¼ï¼è¯¥ç¤ºä¾å°æå¼é®ç®±ï¼æ£ç´¢å¹¶æå°æææ¶æ¯:: å¦æ *timeout* åæ°è®¾ç½®ä¸º 0ï¼åå»ºéé»å¡å¥æ¥å­æ¶ï¼å®å°å¼å :class:`ValueError` æ¥é»æ­¢è¯¥æä½ã :class:`POP3_SSL` å®ä¾æ²¡æé¢å¤æ¹æ³ãè¯¥å­ç±»çæ¥å£ä¸å¶ç¶ç±»çç¸åã :mod:`imaplib` æ¨¡å æ³¨æï¼å°½ç®¡ POP3 å·æå¹¿æ³çæ¯æï¼ä½å®å·²ç»è¿æ¶ãPOP3 æå¡å¨çå®ç°è´¨éå·®å¼å¾å¤§ï¼èä¸å¤§å¤å¾ç³ç³ãå¦æé®ä»¶æå¡å¨æ¯æ IMAPï¼åæå¥½ä½¿ç¨ :class:`imaplib.IMAP4` ç±»ï¼å ä¸º IMAP æå¡å¨ä¸è¬å®ç°å¾æ´å¥½ã å®ä¹äºä¸ä¸ªå¼å¸¸ï¼å®æ¯ä½ä¸º :mod:`poplib` æ¨¡åçå±æ§å®ä¹çï¼ POP3 POP3 ç¤ºä¾ POP3 å¯¹è±¡ æ¥è¯¢æå¡å¨æ¯æçåè½ï¼è¿äºåè½å¨ :rfc:`2449` ä¸­æè¯´æãè¿åä¸ä¸ª ``{'name': ['param'...]}`` å½¢å¼çå­å¸ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``poplib.connect``ï¼éå¸¦åæ° ``self``, ``host``, ``port``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``poplib.putline``ï¼éå¸¦åæ° ``self``, ``line``ã ç§»é¤é®ç®±ä¸­çææå¾å é¤æ è®°ã è¯·æ±æ¶æ¯åè¡¨ï¼ç»æçå½¢å¼ä¸º ``(response, ['mesg_num octets', ...], octets)``ãå¦æè®¾ç½®äº *which*ï¼å®è¡¨ç¤ºéè¦ååºçæ¶æ¯ã æ£ç´¢ç¼å·ä¸º *which* çæ´æ¡æ¶æ¯ï¼å¹¶è®¾ç½®å¶å·²è¯»æ å¿ä½ãç»æçå½¢å¼ä¸º ``(response, ['line', ...], octets)``ã æ£ç´¢ç¼å·ä¸º *which* çæ¶æ¯ï¼èå´æ¯æ¶æ¯å¤´å ä¸æ¶æ¯å¤´å¾åæ° *howmuch* è¡ãç»æçå½¢å¼ä¸º ``(response, ['line', ...], octets)``ã è¿åæ¶æ¯æè¦ï¼å¯ä¸ IDï¼åè¡¨ãå¦ææå®äº *which*ï¼é£ä¹ç»æå°åå«é£æ¡æ¶æ¯çå¯ä¸ IDï¼å½¢å¼ä¸º ``'response mesgnum uid``ï¼å¦ææªæå®ï¼é£ä¹ç»æä¸ºåè¡¨ ``(response, ['mesgnum uid', ...], octets)``ã è¿å POP3 æå¡å¨åéçé®åè¯­å­ç¬¦ä¸²ã åéå¯ç ï¼ååºåæ¬é®ä»¶æ°åé®ç®±å¤§å°ãæ³¨æï¼å¨è°ç¨ :meth:`~poplib.quit`Â åï¼æå¡å¨ä¸çé®ç®±é½æ¯éå®çã åé user å½ä»¤ï¼è¿åçååºåºè¯¥æç¤ºéè¦ä¸ä¸ªå¯ç ã è®¾ç½®å®ä¾çè°è¯çº§å«ï¼å®æ§å¶çè°è¯ä¿¡æ¯çæ°éãé»è®¤å¼ ``0`` ä¸äº§çè°è¯ä¿¡æ¯ãå¼ ``1`` äº§çä¸­ç­æ°éçè°è¯ä¿¡æ¯ï¼éå¸¸æ¯ä¸ªè¯·æ±äº§çä¸è¡ãå¤§äºæç­äº ``2`` çå¼äº§ççè°è¯ä¿¡æ¯æå¤ï¼FTP æ§å¶è¿æ¥ä¸åéåæ¥æ¶çæ¯ä¸è¡é½å°è¢«è®°å½ä¸æ¥ã ç»åºï¼æäº¤æ´æ¹ï¼è§£é¤é®ç®±éå®ï¼æ­å¼è¿æ¥ã å¨æ´»å¨è¿æ¥ä¸å¼å¯ TLS ä¼è¯ï¼å¨ :rfc:`2595` ä¸­æè¯´æãä»å¨ç¨æ·èº«ä»½éªè¯ååè®¸è¿æ ·åã :mod:`poplib` æ¨¡åæä¾äºä¸¤ä¸ªç±»ï¼ :program:`fetchmail` POP/IMAP å®¢æ·ç«¯çâå¸¸è§é®é¢âæ¶éäº POP3 æå¡å¨ä¹é´çå·®å¼å RFC ä¸å¼å®¹çä¿¡æ¯ï¼å¦æè¦ç¼ååºäº POP åè®®çåºç¨ç¨åºï¼è¿å¯è½ä¼å¾æç¨ã æ¬æ¹æ³ä½¿ç¨ POP3 TOP å½ä»¤ï¼ä¸åäº RETR å½ä»¤ï¼å®ä¸è®¾ç½®é®ä»¶çå·²è¯»æ å¿ä½ãä¸å¹¸çæ¯ï¼TOP å¨ RFC ä¸­è¯´æä¸æ¸æ°ï¼ä¸å¨å°ä¼çæå¡å¨è½¯ä»¶ä¸­å¾å¾ä¸å¯ç¨ãä¿¡ä»»å¹¶ä½¿ç¨å®ä¹åï¼è¯·åæå¨å¯¹ç®æ  POP3 æå¡å¨æµè¯æ¬æ¹æ³ã å·²å¼ç¨ç *keyfile* å *certfile* å½¢åå·²è¢«ç§»é¤ã æ åç Python IMAP æ¨¡åã æ¬ç±»å®ç°å®éç POP3 åè®®ãå®ä¾åå§åæ¶ï¼è¿æ¥å°±ä¼å»ºç«ãå¦æçç¥ *port*ï¼åä½¿ç¨æ å POP3 ç«¯å£ï¼110ï¼ãå¯éåæ° *timeout* æå®è¿æ¥å°è¯çè¶æ¶æ¶é´ï¼ä»¥ç§ä¸ºåä½ï¼å¦ææªæå®è¶æ¶ï¼å°ä½¿ç¨å¨å±é»è®¤è¶æ¶è®¾ç½®ï¼ã ä¸ä¸ª :class:`POP3` çå­ç±»ï¼å®ä½¿ç¨ç» SSL å å¯çå¥æ¥å­è¿æ¥å°æå¡å¨ãå¦æç«¯å£ *port* æªæå®ï¼åä½¿ç¨ 995ï¼å®æ¯æ åç POP3-over-SSL ç«¯å£ã*timeout* çä½ç¨ä¸ :class:`POP3` æé å½æ°ä¸­çç¸åã*context* æ¯ä¸ä¸ªå¯éç :class:`ssl.SSLContext` å¯¹è±¡ï¼è¯¥å¯¹è±¡å¯ä»¥å° SSL éç½®éé¡¹ãè¯ä¹¦åç§é¥æåæ¾å¥ä¸ä¸ªåç¬çï¼å¯ä»¥é¿ä¹å­å¨çï¼ç»æä¸­ãè¯·éè¯» :ref:`ssl-security` ä»¥è·åæä½³å®è·µã æ¬æ¨¡åå®ä¹äºä¸ä¸ª :class:`POP3` ç±»ï¼è¯¥ç±»å°è£äºå° POP3 æå¡å¨çè¿æ¥è¿ç¨ï¼å¹¶å®ç°äº :rfc:`1939` ä¸­å®ä¹çåè®®ã:class:`POP3` ç±»åæ¶æ¯æ :rfc:`1939` ä¸­æå°çåå¯éçå½ä»¤éã:class:`POP3` ç±»è¿æ¯æå¨ :rfc:`2595` ä¸­å¼å¥ç ``STLS`` å½ä»¤ï¼ç¨äºå¨å·²å»ºç«çè¿æ¥ä¸å¯ç¨å å¯éä¿¡ã æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã å°è¯åæ¢è³ UTF-8 æ¨¡å¼ãæååè¿åæå¡å¨çååºï¼å¤±è´¥åå¼å :class:`error_proto` å¼å¸¸ãå¨ :RFC:`6856` ä¸­æè¯´æã ä½¿ç¨ RPOP èº«ä»½éªè¯ï¼ç±»ä¼¼äº Unix r-å½ä»¤ï¼ç»å½å° POP3 æå¡å¨ã ä½¿ç¨æ´å®å¨ç APOP èº«ä»½éªè¯ç»å½å° POP3 æå¡å¨ã `æå³ Fetchmail çå¸¸è§é®é¢ <http://www.catb.org/~esr/fetchmail/fetchmail-FAQ.html>`_ åè®® 