Þ    F      L              |  (   }     ¦  %   ¾  U   ä  2   :  %   m  =       Ñ  b   Ù  Y  <    	  %   6  f   \  ±   Ã  t   u  t   ê  F   _     ¦     ª     ¶  :   Æ  8       :  ð   ½  F   ®  Z  õ    P  :  W  M       à  §   ô  ¹    j   V  _   Á  3   !  Â   U  1       J  $  Q  ,  v!  ñ   £#    $  ;   ('  ¶   d'  ©   (  N  Å(  Ï   *  J   ä*  (   /+    X+  |   Ù,  "   V-     y-  ç   -  ü  .  k  }0  4   é1  D   2  A   c2     ¥2  5   .3  E   d3     ª3  '   44  !  \4  ª  ~5  ¤   )7     Î7     ç7  ½  ð7  (   ®9     ×9  $   ò9  N   :  &   f:  %   :  =   ³:  ã  ñ:  T   Õ<  >  *=  "  i>  '   @  u   ´@  n   *A  m   A  j   B  9   rB     ¬B  
   °B     »B  5   ÊB  5    C  t  6C  å   «E  U   F  m  çF  î   UH  ü  DI    AK     ]M     qM  ­  þM  m   ¬O  b   P  2   }P  Í   °P  <   ~Q  Ø   »Q  ö  R    T  à   V  ;  rW  *   ®Y     ÙY     jZ  >   [  Ù   ?\  Q   ]  $   k]  9  ]  |   Ê^     G_     c_  í   _  0  m`     b  /   ?d  9   od  E   ©d     ïd  -   e  ;   ±e     íe  $   f  þ   ¦f  z  ¥g      i     ¹i     Ïi   **Source code:** :source:`Lib/ftplib.py` *rest* parameter added. *source_address* parameter was added. :class:`FTP_TLS` class inherits from :class:`FTP`, defining these additional objects: :class:`FTP` instances have the following methods: :mod:`ftplib` --- FTP protocol client :ref:`Availability <availability>`: not Emscripten, not WASI. A :class:`FTP` subclass which adds TLS support to FTP as described in :rfc:`4217`. Connect as usual to port 21 implicitly securing the FTP control connection before authenticating. Securing the data connection requires the user to explicitly ask for it by calling the :meth:`prot_p` method.  *context* is a :class:`ssl.SSLContext` object which allows bundling SSL configuration options, certificates and private keys into a single (potentially long-lived) structure.  Please read :ref:`ssl-security` for best practices. Abort a file transfer that is in progress.  Using this does not always work, but it's worth a try. Close the connection unilaterally.  This should not be applied to an already closed connection such as after a successful call to :meth:`~FTP.quit`. After this call the :class:`FTP` instance should not be used any more (after a call to :meth:`close` or :meth:`~FTP.quit` you cannot reopen the connection by issuing another :meth:`login` method). Connect to the given host and port.  The default port number is ``21``, as specified by the FTP protocol specification.  It is rarely needed to specify a different port number.  This function should be called only once for each instance; it should not be called at all if a host was given when the instance was created.  All other methods can only be used after a connection has been made. The optional *timeout* parameter specifies a timeout in seconds for the connection attempt. If no *timeout* is passed, the global default timeout setting will be used. *source_address* is a 2-tuple ``(host, port)`` for the socket to bind to as its source address before connecting. Create a new directory on the server. Enable "passive" mode if *val* is true, otherwise disable passive mode. Passive mode is on by default. Exception raised when a reply is received from the server that does not fit the response specifications of the File Transfer Protocol, i.e. begin with a digit in the range 1--5. Exception raised when an error code signifying a permanent error (response codes in the range 500--599) is received. Exception raised when an error code signifying a temporary error (response codes in the range 400--499) is received. Exception raised when an unexpected reply is received from the server. FTP FTP Objects FTP_TLS Objects Here's a sample session using the :class:`FTP_TLS` class:: Here's a sample session using the :mod:`ftplib` module:: If optional *rest* is given, a ``REST`` command is sent to the server, passing *rest* as an argument.  *rest* is usually a byte offset into the requested file, telling the server to restart sending the file's bytes at the requested offset, skipping over the initial bytes.  Note however that the :meth:`transfercmd` method converts *rest* to a string with the *encoding* parameter specified at initialization, but no check is performed on the string's contents.  If the server does not recognize the ``REST`` command, an :exc:`error_reply` exception will be raised.  If this happens, simply call :meth:`transfercmd` without a *rest* argument. If the *timeout* parameter is set to be zero, it will raise a :class:`ValueError` to prevent the creation of a non-blocking socket. The *encoding* parameter was added, and the default was changed from Latin-1 to UTF-8 to follow :rfc:`2640`. If your server supports the command, :meth:`mlsd` offers a better API. Initiate a transfer over the data connection.  If the transfer is active, send an ``EPRT`` or  ``PORT`` command and the transfer command specified by *cmd*, and accept the connection.  If the server is passive, send an ``EPSV`` or ``PASV`` command, connect to it, and start the transfer command.  Either way, return the socket for the connection. Like :meth:`transfercmd`, but returns a tuple of the data connection and the expected size of the data.  If the expected size could not be computed, ``None`` will be returned as the expected size.  *cmd* and *rest* means the same thing as in :meth:`transfercmd`. List a directory in a standardized format by using ``MLSD`` command (:rfc:`3659`).  If *path* is omitted the current directory is assumed. *facts* is a list of strings representing the type of information desired (e.g. ``["type", "size", "perm"]``).  Return a generator object yielding a tuple of two elements for every file found in path.  First element is the file name, the second one is a dictionary containing facts about the file name.  Content of this dictionary might be limited by the *facts* argument but server is not guaranteed to return all requested facts. Log in as the given *user*.  The *passwd* and *acct* parameters are optional and default to the empty string.  If no *user* is specified, it defaults to ``'anonymous'``.  If *user* is ``'anonymous'``, the default *passwd* is ``'anonymous@'``.  This function should be called only once for each instance, after a connection has been established; it should not be called at all if a host and user were given when the instance was created.  Most FTP commands are only allowed after the client has logged in.  The *acct* parameter supplies "accounting information"; few systems implement this. Module :mod:`netrc` Parser for the :file:`.netrc` file format.  The file :file:`.netrc` is typically used by FTP clients to load user authentication information before prompting the user. Produce a directory listing as returned by the ``LIST`` command, printing it to standard output.  The optional *argument* is a directory to list (default is the current server directory).  Multiple arguments can be used to pass non-standard options to the ``LIST`` command.  If the last argument is a function, it is used as a *callback* function as for :meth:`retrlines`; the default prints to ``sys.stdout``.  This method returns ``None``. Raises an :ref:`auditing event <auditing>` ``ftplib.connect`` with arguments ``self``, ``host``, ``port``. Raises an :ref:`auditing event <auditing>` ``ftplib.sendcmd`` with arguments ``self``, ``cmd``. Remove the directory named *dirname* on the server. Remove the file named *filename* from the server.  If successful, returns the text of the response, otherwise raises :exc:`error_perm` on permission errors or :exc:`error_reply` on other errors. Rename file *fromname* on the server to *toname*. Request the size of the file named *filename* on the server.  On success, the size of the file is returned as an integer, otherwise ``None`` is returned. Note that the ``SIZE`` command is not  standardized, but is supported by many common server implementations. Retrieve a file in binary transfer mode.  *cmd* should be an appropriate ``RETR`` command: ``'RETR filename'``. The *callback* function is called for each block of data received, with a single bytes argument giving the data block. The optional *blocksize* argument specifies the maximum chunk size to read on the low-level socket object created to do the actual transfer (which will also be the largest size of the data blocks passed to *callback*).  A reasonable default is chosen. *rest* means the same thing as in the :meth:`transfercmd` method. Retrieve a file or directory listing in the encoding specified by the *encoding* parameter at initialization. *cmd* should be an appropriate ``RETR`` command (see :meth:`retrbinary`) or a command such as ``LIST`` or ``NLST`` (usually just the string ``'LIST'``). ``LIST`` retrieves a list of files and information about those files. ``NLST`` retrieves a list of file names. The *callback* function is called for each line with a string argument containing the line with the trailing CRLF stripped.  The default *callback* prints the line to ``sys.stdout``. Return a list of file names as returned by the ``NLST`` command.  The optional *argument* is a directory to list (default is the current server directory).  Multiple arguments can be used to pass non-standard options to the ``NLST`` command. Return a new instance of the :class:`FTP` class.  When *host* is given, the method call ``connect(host)`` is made.  When *user* is given, additionally the method call ``login(user, passwd, acct)`` is made (where *passwd* and *acct* default to the empty string when not given).  The optional *timeout* parameter specifies a timeout in seconds for blocking operations like the connection attempt (if is not specified, the global default timeout setting will be used). *source_address* is a 2-tuple ``(host, port)`` for the socket to bind to as its source address before connecting. The *encoding* parameter specifies the encoding for directories and filenames. Return the pathname of the current directory on the server. Return the welcome message sent by the server in reply to the initial connection.  (This message sometimes contains disclaimers or help information that may be relevant to the user.) Revert control channel back to plaintext.  This can be useful to take advantage of firewalls that know how to handle NAT with non-secure FTP without opening fixed ports. Send a ``QUIT`` command to the server and close the connection. This is the "polite" way to close a connection, but it may raise an exception if the server responds with an error to the ``QUIT`` command.  This implies a call to the :meth:`close` method which renders the :class:`FTP` instance useless for subsequent calls (see below). Send a simple command string to the server and handle the response.  Return nothing if a response code corresponding to success (codes in the range 200--299) is received.  Raise :exc:`error_reply` otherwise. Send a simple command string to the server and return the response string. Set the current directory on the server. Set the instance's debugging level.  This controls the amount of debugging output printed.  The default, ``0``, produces no debugging output.  A value of ``1`` produces a moderate amount of debugging output, generally a single line per request.  A value of ``2`` or higher produces the maximum amount of debugging output, logging each line sent and received on the control connection. Set up a secure control connection by using TLS or SSL, depending on what is specified in the :attr:`ssl_version` attribute. Set up clear text data connection. Set up secure data connection. Several methods are available in two flavors: one for handling text files and another for binary files.  These are named for the command which is used followed by ``lines`` for the text version or ``binary`` for the binary version. Store a file in binary transfer mode.  *cmd* should be an appropriate ``STOR`` command: ``"STOR filename"``. *fp* is a :term:`file object` (opened in binary mode) which is read until EOF using its :meth:`~io.IOBase.read` method in blocks of size *blocksize* to provide the data to be stored. The *blocksize* argument defaults to 8192.  *callback* is an optional single parameter callable that is called on each block of data after it is sent. *rest* means the same thing as in the :meth:`transfercmd` method. Store a file in line mode.  *cmd* should be an appropriate ``STOR`` command (see :meth:`storbinary`).  Lines are read until EOF from the :term:`file object` *fp* (opened in binary mode) using its :meth:`~io.IOBase.readline` method to provide the data to be stored.  *callback* is an optional single parameter callable that is called on each line after it is sent. Support for the :keyword:`with` statement was added. The :class:`FTP` class supports the :keyword:`with` statement, e.g.: The SSL version to use (defaults to :attr:`ssl.PROTOCOL_SSLv23`). The class now supports hostname check with :attr:`ssl.SSLContext.check_hostname` and *Server Name Indication* (see :data:`ssl.HAS_SNI`). The default encoding is UTF-8, following :rfc:`2640`. The deprecated *keyfile* and *certfile* parameters have been removed. The method now supports hostname check with :attr:`ssl.SSLContext.check_hostname` and *Server Name Indication* (see :data:`ssl.HAS_SNI`). The module defines the following items: The set of all exceptions (as a tuple) that methods of :class:`FTP` instances may raise as a result of problems with the FTP connection (as opposed to programming errors made by the caller).  This set includes the four exceptions listed above as well as :exc:`OSError` and :exc:`EOFError`. This module defines the class :class:`FTP` and a few related items. The :class:`FTP` class implements the client side of the FTP protocol.  You can use this to write Python programs that perform a variety of automated FTP jobs, such as mirroring other FTP servers.  It is also used by the module :mod:`urllib.request` to handle URLs that use FTP.  For more information on FTP (File Transfer Protocol), see internet :rfc:`959`. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. ftplib (standard module) protocol Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2021-06-28 01:06+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç ï¼** :source:`Lib/ftplib.py` æ·»å äº *rest* åæ°ã æ·»å äº *source_address* åæ°ã :class:`FTP_TLS` ç±»ç»§æ¿èª :class:`FTP`ï¼å®å®ä¹äºä¸è¿°å¶ä»å¯¹è±¡ï¼ :class:`FTP` å®ä¾å·æä¸åæ¹æ³: :mod:`ftplib` --- FTP åè®®å®¢æ·ç«¯ :ref:`å¯ç¨æ§ <availability>`: é Emscriptenï¼é WASIã ä¸ä¸ª :class:`FTP` çå­ç±»ï¼å®ä¸º FTP æ·»å äº TLS æ¯æï¼å¦ :rfc:`4217` æè¿°ãå®å°åéå¸¸ä¸æ ·è¿æ¥å° 21 ç«¯å£ï¼æä¸­ä¿æ¤å¨èº«ä»½éªè¯åç FTP æ§å¶è¿æ¥ãèä¿æ¤æ°æ®è¿æ¥éè¦ç¨æ·æç¡®è°ç¨ :meth:`prot_p` æ¹æ³ã*context* æ¯ä¸ä¸ª :class:`ssl.SSLContext` å¯¹è±¡ï¼è¯¥å¯¹è±¡å¯ä»¥å° SSL éç½®éé¡¹ãè¯ä¹¦åç§é¥æåæ¾å¥ä¸ä¸ªåç¬çï¼å¯ä»¥é¿ä¹å­å¨çï¼ç»æä¸­ãè¯·éè¯» :ref:`ssl-security` ä»¥è·åæä½³å®è·µã ä¸­æ­¢æ­£å¨è¿è¡çæä»¶ä¼ è¾ãæ¬æ¹æ³å¹¶ä¸æ»æ¯ææï¼ä½å¼å¾ä¸è¯ã åæ¹é¢å³é­è¿æ¥ã è¿ä¸è¯¥è¢«åºç¨äºå·²ç»å³é­çè¿æ¥ï¼ä¾å¦æåè°ç¨ :meth:`~FTP.quit` ä¹åçè¿æ¥ã å¨æ­¤è°ç¨ä¹å :class:`FTP` å®ä¾ä¸åºè¢«ç»§ç»­ä½¿ç¨ï¼å¨è°ç¨ :meth:`close` æ :meth:`~FTP.quit` ä¹åä½ ä¸è½éè¿åæ¬¡åèµ·è°ç¨ :meth:`login` æ¹æ³éæ°æå¼è¿æ¥ï¼ã è¿æ¥å°ç»å®çä¸»æºåç«¯å£ãé»è®¤ç«¯å£å·ç± FTP åè®®è§èè§å®ï¼ä¸º ``21``ãå¶å°æéè¦æå®å¶ä»ç«¯å£å·ãæ¯ä¸ªå®ä¾åªåºè°ç¨ä¸æ¬¡æ¬å½æ°ï¼å¦æå¨åå»ºå®ä¾æ¶å°±ä¼ å¥äº hostï¼åæ ¹æ¬ä¸åºè°ç¨å®ãææå¶ä»æ¹æ³åªè½å¨å»ºç«è¿æ¥åä½¿ç¨ãå¯éåæ° *timeout* æå®è¿æ¥å°è¯çè¶æ¶ï¼ä»¥ç§ä¸ºåä½ï¼ãå¦ææ²¡æä¼ å¥ *timeout*ï¼å°ä½¿ç¨å¨å±é»è®¤è¶æ¶è®¾ç½®ã*source_address* æ¯ä¸ä¸ª 2 åç» ``(host, port)``ï¼å¥æ¥å­å¨è¿æ¥åç»å®å®ï¼ä½ä¸ºå¶æºå°åã å¨æå¡å¨ä¸åå»ºä¸ä¸ªæ°ç®å½ã å¦æ *val* ä¸º trueï¼åæå¼âè¢«å¨âæ¨¡å¼ï¼å¦åç¦ç¨è¢«å¨æ¨¡å¼ãé»è®¤ä¸è¢«å¨æ¨¡å¼æ¯æå¼çã ä»æå¡å¨æ¶å°ä¸ç¬¦å FTP ååºè§èçç­å¤ï¼æ¯å¦ä»¥æ°å­ 1--5 å¼å¤´æ¶ï¼å°å¼åæ¬å¼å¸¸ã æ¶å°è¡¨ç¤ºæ°¸ä¹æ§éè¯¯çéè¯¯ä»£ç ï¼ååºä»£ç å¨ 500--599 èå´åï¼æ¶ï¼å°å¼åæ¬å¼å¸¸ã æ¶å°è¡¨ç¤ºä¸´æ¶éè¯¯çéè¯¯ä»£ç ï¼ååºä»£ç å¨ 400--499 èå´åï¼æ¶ï¼å°å¼åæ¬å¼å¸¸ã ä»æå¡å¨æ¶å°æå¤ç­å¤æ¶ï¼å°å¼åæ¬å¼å¸¸ã FTP FTP å¯¹è±¡ FTP_TLS å¯¹è±¡ ä»¥ä¸æ¯ä½¿ç¨ :class:`FTP_TLS` ç±»çä¼è¯ç¤ºä¾:: ä»¥ä¸æ¯ä½¿ç¨ :mod:`ftplib` æ¨¡åçä¼è¯ç¤ºä¾:: å¦æä¼ å¥äºå¯éåæ° *rest*ï¼åä¸æ¡ ``REST`` å½ä»¤ä¼è¢«åéå°æå¡å¨ï¼å¹¶ä»¥ *rest* ä½ä¸ºåæ°ã*rest* éå¸¸è¡¨ç¤ºè¯·æ±æä»¶ä¸­çå­èåç§»éï¼å®åè¯æå¡å¨éæ°å¼å§åéæä»¶çå­èï¼ä»è¯·æ±çåç§»éå¤å¼å§ï¼è·³è¿èµ·å§å­èãä½æ¯è¯·æ³¨æï¼:meth:`transfercmd` æ¹æ³ä¼å° *rest* è½¬æ¢ä¸ºå­ç¬¦ä¸²ï¼ä½æ¯ä¸æ£æ¥å­ç¬¦ä¸²çåå®¹ï¼è½¬æ¢ç¨çç¼ç æ¯å¨åå§åæ¶æå®ç *encoding* åæ°ãå¦ææå¡å¨æ æ³è¯å« ``REST`` å½ä»¤ï¼å°å¼å :exc:`error_reply` å¼å¸¸ãå¦æåçè¿ç§æåµï¼åªéä¸å¸¦ *rest* åæ°è°ç¨ :meth:`transfercmd`ã å¦æ *timeout* åæ°è®¾ç½®ä¸º 0ï¼åå»ºéé»å¡å¥æ¥å­æ¶ï¼å®å°å¼å :class:`ValueError` æ¥é»æ­¢è¯¥æä½ãæ·»å äº *encoding* åæ°ï¼ä¸ä¸ºäºéµå¾ª :rfc:`2640`ï¼è¯¥åæ°é»è®¤å¼ä» Latin-1 æ¹ä¸ºäº UTF-8ã å¦æç®æ æå¡å¨æ¯æç¸å³å½ä»¤ï¼é£ä¹ :meth:`mlsd` æä¾ç API æ´å¥½ã å¨ FTP æ°æ®è¿æ¥ä¸å¼å§ä¼ è¾æ°æ®ãå¦æä¼ è¾å¤äºæ´»å¨ç¶æï¼ä¼ è¾å½ä»¤ç± *cmd* æå®ï¼éåé ``EPRT`` æ ``PORT`` å½ä»¤ï¼ç¶åæ¥åè¿æ¥ (accept)ãå¦ææå¡å¨æ¯è¢«å¨æå¡å¨ï¼éåé ``EPSV`` æ ``PASV`` å½ä»¤ï¼è¿æ¥å°æå¡å¨ (connect)ï¼ç¶åå¯å¨ä¼ è¾å½ä»¤ãä¸¤ç§æ¹å¼é½å°è¿åç¨äºè¿æ¥çå¥æ¥å­ã ç±»ä¼¼äº :meth:`transfercmd`ï¼ä½è¿åä¸ä¸ªåç»ï¼åæ¬æ°æ®è¿æ¥åæ°æ®çé¢è®¡å¤§å°ãå¦æé¢è®¡å¤§å°æ æ³è®¡ç®ï¼åè¿åçé¢è®¡å¤§å°ä¸º ``None``ã*cmd* å *rest* çå«ä¹ä¸ :meth:`transfercmd` ä¸­çç¸åã ä½¿ç¨ ``MLSD`` å½ä»¤ä»¥æ åæ ¼å¼ååºç®å½åå®¹ (:rfc:`3659`)ãå¦æçç¥ *path* åä½¿ç¨å½åç®å½ã*facts* æ¯å­ç¬¦ä¸²åè¡¨ï¼è¡¨ç¤ºæéçä¿¡æ¯ç±»åï¼å¦ ``["type", "size", "perm"]``ï¼ãè¿åä¸ä¸ªçæå¨å¯¹è±¡ï¼æ¯ä¸ªå¨ path ä¸­æ¾å°çæä»¶é½å°å¨è¯¥å¯¹è±¡ä¸­çæä¸¤ä¸ªåç´ çåç»ãç¬¬ä¸ä¸ªåç´ æ¯æä»¶åï¼ç¬¬äºä¸ªåç´ æ¯è¯¥æä»¶ç facts çå­å¸ãè¯¥å­å¸çåå®¹å *facts* åæ°éå¶ï¼ä½ä¸è½ä¿è¯æå¡å¨ä¼è¿åææè¯·æ±ç factsã ä»¥ *user* çèº«ä»½ç»å½ã*passwd* å *acct* æ¯å¯éåæ°ï¼é»è®¤ä¸ºç©ºå­ç¬¦ä¸²ãå¦ææ²¡ææå® *user*ï¼åé»è®¤ä¸º ``'anonymous'``ãå¦æ *user* ä¸º ``'anonymous'``ï¼é£ä¹é»è®¤ç *passwd* æ¯ ``'anonymous@'``ãè¿æ¥å»ºç«åï¼æ¯ä¸ªå®ä¾åªåºè°ç¨ä¸æ¬¡æ¬å½æ°ï¼å¦æå¨åå»ºå®ä¾æ¶ä¼ å¥äº host å userï¼åå®å¨ä¸åºè¯¥è°ç¨æ¬å½æ°ãå¨å®¢æ·ç«¯ç»å½åï¼æåè®¸æ§è¡å¤§å¤æ° FTP å½ä»¤ã*acct* åæ°æä¾è®°è´¦ä¿¡æ¯ ("accounting information")ï¼ä»å°æ°ç³»ç»å®ç°äºè¯¥ç¹æ§ã :mod:`netrc` æ¨¡å :file:`.netrc` æä»¶æ ¼å¼è§£æå¨ãFTP å®¢æ·ç«¯å¨ååºç¨æ·ä¹åï¼éå¸¸ä½¿ç¨ :file:`.netrc` æä»¶æ¥å è½½ç¨æ·è®¤è¯ä¿¡æ¯ã çæç®å½åè¡¨ï¼å³ ``LIST`` å½ä»¤æè¿åçç»æï¼å¹¶å°å¶æå°å°æ åè¾åºãå¯éåæ° *argument* æ¯å¾ååºçç®å½ï¼é»è®¤ä¸ºå½åæå¡å¨ç®å½ï¼ãå¯ä»¥ä½¿ç¨å¤ä¸ªåæ°ï¼å°éæ åéé¡¹ä¼ éç» ``LIST`` å½ä»¤ãå¦ææåä¸ä¸ªåæ°æ¯ä¸ä¸ªå½æ°ï¼å®å°è¢«ç¨ä½ *callback* å½æ°ï¼ä¸ :meth:`retrlines` ä¸­çç¸åï¼é»è®¤å°æå°å° ``sys.stdout``ãæ¬æ¹æ³è¿å ``None``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``ftplib.connect``ï¼éå¸¦åæ° ``self``, ``host``, ``port``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``ftplib.sendcmd``ï¼éå¸¦åæ° ``self``, ``cmd``ã å°æå¡å¨ä¸åä¸º *dirname* çç®å½å é¤ã å°æå¡å¨ä¸åä¸º *filename* çæä»¶å é¤ãå¦æå é¤æåï¼è¿åååºææ¬ï¼å¦æå é¤å¤±è´¥ï¼å¨æééè¯¯æ¶å¼å :exc:`error_perm`ï¼å¨å¶ä»éè¯¯æ¶å¼å :exc:`error_reply`ã å°æå¡å¨ä¸çæä»¶ *fromname* éå½åä¸º *toname*ã è¯·æ±æå¡å¨ä¸åä¸º *filename* çæä»¶å¤§å°ãæååä»¥æ´æ°è¿åæä»¶å¤§å°ï¼æªæååè¿å ``None``ãæ³¨æï¼``SIZE`` ä¸æ¯æ åå½ä»¤ï¼ä½éå¸¸è®¸å¤æå¡å¨çå®ç°é½æ¯æè¯¥å½ä»¤ã ä»¥äºè¿å¶ä¼ è¾æ¨¡å¼ä¸è½½æä»¶ã*cmd* åºä¸ºæ°å½ç ``RETR`` å½ä»¤ï¼``'RETR æä»¶å'``ã*callback* å½æ°ä¼å¨æ¶å°æ¯ä¸ªæ°æ®åæ¶è°ç¨ï¼ä¼ å¥çåæ°æ¯è¡¨ç¤ºæ°æ®åçä¸ä¸ªå­èãä¸ºæ§è¡å®éä¼ è¾ï¼åå»ºäºåºå±å¥æ¥å­å¯¹è±¡ï¼å¯éåæ° *blocksize* æå®äºè¯»åè¯¥å¯¹è±¡æ¶çæå¤§åå¤§å°ï¼è¿ä¹æ¯ä¼ å¥ *callback* çæ°æ®åçæå¤§å¤§å°ï¼ãå·²ç»éæ©äºåççé»è®¤å¼ã*rest* çå«ä¹ä¸ :meth:`transfercmd` æ¹æ³ä¸­çå«ä¹ç¸åã æç§åå§åæ¶ç *encoding* åæ°æå®çç¼ç ï¼è·åæä»¶æç®å½åè¡¨ã*cmd* åºæ¯æ°å½ç ``RETR`` å½ä»¤ï¼åé :meth:`retrbinary`ï¼ï¼ä¹å¯ä»¥æ¯è¯¸å¦ ``LIST`` æ ``NLST`` ä¹ç±»çå½ä»¤ï¼éå¸¸å°±åªæ¯å­ç¬¦ä¸² ``'LIST'``ï¼ã``LIST`` è·åæä»¶åè¡¨ä»¥åé£äºæä»¶çä¿¡æ¯ã``NLST`` è·åæä»¶åç§°åè¡¨ã*callback* å½æ°ä¼å¨æ¯ä¸è¡é½è°ç¨ï¼åæ°å°±æ¯åå«ä¸è¡çå­ç¬¦ä¸²ï¼å é¤äºå°¾é¨ç CRLFãé»è®¤ç *callback* ä¼æè¡æå°å° ``sys.stdout``ã è¿åä¸ä¸ªæä»¶ååè¡¨ï¼æä»¶åç± ``NLST`` å½ä»¤è¿åãå¯éåæ° *argument* æ¯å¾ååºçç®å½ï¼é»è®¤ä¸ºå½åæå¡å¨ç®å½ï¼ãå¯ä»¥ä½¿ç¨å¤ä¸ªåæ°ï¼å°éæ åéé¡¹ä¼ éç» ``NLST`` å½ä»¤ã è¿åä¸ä¸ª :class:`FTP` ç±»çæ°å®ä¾ãå½ä¼ å¥ *host* æ¶ï¼å°è°ç¨ ``connect(host)`` æ¹æ³ãå½ä¼ å¥ *user* æ¶ï¼å°é¢å¤è°ç¨ ``login(user, passwd, acct)`` æ¹æ³ï¼å¶ä¸­ *passwd* å *acct* è¥æ²¡æä¼ å¥åé»è®¤ä¸ºç©ºå­ç¬¦ä¸²ï¼ãå¯éåæ° *timeout* æå®é»å¡æä½ï¼å¦è¿æ¥å°è¯ï¼çè¶æ¶ï¼ä»¥ç§ä¸ºåä½ï¼å¦ææªæå®è¶æ¶ï¼å°ä½¿ç¨å¨å±é»è®¤è¶æ¶è®¾ç½®ï¼ã*source_address* æ¯ä¸ä¸ª 2 åç» ``(host, port)``ï¼å¥æ¥å­å¨è¿æ¥åç»å®å®ï¼ä½ä¸ºå¶æºå°åã*encoding* åæ°æå®ç®å½åæä»¶åçç¼ç ã è¿åæå¡å¨ä¸å½åç®å½çè·¯å¾ã è¿åæå¡å¨åéçæ¬¢è¿æ¶æ¯ï¼ä½ä¸ºè¿æ¥å¼å§çåå¤ãï¼è¯¥æ¶æ¯ææ¶åå«ä¸ç¨æ·æå³çåè´£å£°ææå¸®å©ä¿¡æ¯ãï¼ å°æ§å¶ééåå¤ä¸ºçº¯ææ¬ã è¿éç¨äºåæ¥ç¥éå¦ä½ä½¿ç¨éå®å¨ FTP å¤ç NAT èæ éæå¼åºå®ç«¯å£çé²ç«å¢çä¼å¿ã åæå¡å¨åé ``QUIT`` å½ä»¤å¹¶å³é­è¿æ¥ã è¿æ¯å³é­ä¸ä¸ªè¿æ¥çâç¤¼è²âæ¹å¼ï¼ä½æ¯å¦ææå¡å¨å¯¹ ``QUIT`` å½ä»¤çååºå¸¦æéè¯¯æ¶æ¯åè¿ä¼å¼åä¸ä¸ªå¼å¸¸ã è¿æå³çå¯¹ :meth:`close` æ¹æ³çè°ç¨ï¼å®å°ä½¿å¾ :class:`FTP` å®ä¾å¯¹åç»§è°ç¨æ æï¼è§ä¸æï¼ã å°ä¸æ¡ç®åçå½ä»¤å­ç¬¦ä¸²åéå°æå¡å¨ï¼å¹¶å¤çååºåå®¹ãå¦ææ¶å°çååºä»£ç è¡¨ç¤ºçæ¯æåï¼ä»£ç èå´ 200--299ï¼ï¼åä¸è¿åä»»ä½åå®¹ãå¦åå°å¼å :exc:`error_reply`ã å°ä¸æ¡ç®åçå½ä»¤å­ç¬¦ä¸²åéå°æå¡å¨ï¼è¿åååºçå­ç¬¦ä¸²ã è®¾ç½®æå¡å¨ç«¯çå½åç®å½ã è®¾ç½®å®ä¾çè°è¯çº§å«ï¼å®æ§å¶çè°è¯ä¿¡æ¯çæ°éãé»è®¤å¼ ``0`` ä¸äº§çè°è¯ä¿¡æ¯ãå¼ ``1`` äº§çä¸­ç­æ°éçè°è¯ä¿¡æ¯ï¼éå¸¸æ¯ä¸ªè¯·æ±äº§çä¸è¡ãå¤§äºæç­äº ``2`` çå¼äº§ççè°è¯ä¿¡æ¯æå¤ï¼FTP æ§å¶è¿æ¥ä¸åéåæ¥æ¶çæ¯ä¸è¡é½å°è¢«è®°å½ä¸æ¥ã éè¿ä½¿ç¨ TLS æ SSL æ¥è®¾ç½®ä¸ä¸ªå®å¨æ§å¶è¿æ¥ï¼å·ä½åå³äº :attr:`ssl_version` å±æ§æ¯å¦ä½è®¾ç½®çã è®¾ç½®æææ°æ®è¿æ¥ã è®¾ç½®å å¯æ°æ®è¿æ¥ã ä¸äºæ¹æ³å¯ä»¥æç§ä¸¤ç§æ¹å¼æ¥ä½¿ç¨ï¼ä¸ç§å¤çææ¬æä»¶ï¼å¦ä¸ç§å¤çäºè¿å¶æä»¶ãæ¹æ³åç§°ä¸ç¸åºçå½ä»¤ç¸åï¼ææ¬çä¸­å½ä»¤åé¢è·ç ``lines``ï¼äºè¿å¶çä¸­å½ä»¤åé¢è·ç ``binary``ã ä»¥äºè¿å¶ä¼ è¾æ¨¡å¼å­å¨æä»¶ã *cmd* åºä¸ºæ°å½ç ``STOR`` å½ä»¤: ``"STOR filename"``ã*fp* æ¯ä¸ä¸ª :term:`æä»¶å¯¹è±¡ <file object>` (ä»¥äºè¿å¶æ¨¡å¼æå¼)ï¼å°ä½¿ç¨å®ç :meth:`~io.IOBase.read` æ¹æ³è¯»åå®ï¼ç¨äºæä¾è¦å­å¨çæ°æ®ï¼ç´å°éå° EOFï¼è¯»åæ¶çåå¤§å°ä¸º *blocksize*ã åæ° *blocksize* çé»è®¤å¼ä¸º 8192ã å¯éåæ° *callback* æ¯ååæ°å½æ°ï¼å¨æ¯ä¸ªæ°æ®ååéåé½ä¼ä»¥è¯¥æ°æ®åä½ä¸ºåæ°æ¥è°ç¨å®ã*rest* çå«ä¹ä¸ :meth:`transfercmd` æ¹æ³ä¸­çå«ä¹ç¸åã ä»¥ææ¬è¡æ¨¡å¼å­å¨æä»¶ã*cmd* åºä¸ºæ°å½ç ``STOR`` å½ä»¤ (è¯·åé :meth:`storbinary`)ã *fp* æ¯ä¸ä¸ª :term:`æä»¶å¯¹è±¡ <file object>` (ä»¥äºè¿å¶æ¨¡å¼æå¼)ï¼å°ä½¿ç¨å®ç :meth:`~io.IOBase.readline` æ¹æ³è¯»åå®çæ¯ä¸è¡ï¼ç¨äºæä¾è¦å­å¨çæ°æ®ï¼ç´å°éå° EOFã å¯éåæ° *callback* æ¯ååæ°å½æ°ï¼å¨æ¯è¡åéåé½ä¼ä»¥è¯¥è¡ä½ä¸ºåæ°æ¥è°ç¨å®ã æ·»å äºå¯¹ :keyword:`with` è¯­å¥çæ¯æã :class:`FTP` ç±»æ¯æ :keyword:`with` è¯­å¥ï¼ä¾å¦ï¼ æ¬²éç¨ç SSL çæ¬ï¼é»è®¤ä¸º :attr:`ssl.PROTOCOL_SSLv23`ï¼ã æ¬ç±»ç°å¨æ¯æä½¿ç¨ :attr:`ssl.SSLContext.check_hostname` å *æå¡å¨åç§°æç¤º* ï¼åé :data:`ssl.HAS_SNI`ï¼è¿è¡ä¸»æºåæ£æ¥ã é»è®¤ç¼ç ä¸º UTF-8ï¼éµå¾ª :rfc:`2640`ã å·²å¼ç¨ç *keyfile* å *certfile* å½¢åå·²è¢«ç§»é¤ã æ­¤æ¹æ³ç°å¨æ¯æä½¿ç¨ :attr:`ssl.SSLContext.check_hostname` å *æå¡å¨åç§°æç¤º* (åè§ :data:`ssl.HAS_SNI`) è¿è¡ä¸»æºåæ£æ¥ã è¿ä¸ªæ¨¡åå®ä¹äºä»¥ä¸åå®¹ï¼ ææå¼å¸¸çéåï¼ä¸ä¸ªåç»ï¼ï¼ç±äº FTP è¿æ¥åºç°é®é¢ï¼å¹¶éè°ç¨èçç¼ç éè¯¯ï¼ï¼:class:`FTP` å®ä¾çæ¹æ³å¯è½ä¼å¼åè¿äºå¼å¸¸ãè¯¥éååæ¬ä¸é¢ååºçåä¸ªå¼å¸¸ä»¥å :exc:`OSError` å :exc:`EOFError`ã æ¬æ¨¡åå®ä¹äº :class:`FTP` ç±»åä¸äºç¸å³é¡¹ç®ã :class:`FTP` ç±»å®ç°äº FTP åè®®çå®¢æ·ç«¯ã ä½ å¯ä»¥ç¨è¿ä¸ªç±»æ¥ç¼åæ§è¡åç§èªå¨å FTP ä»»å¡ç Python ç¨åºï¼ä¾å¦éåå¶ä» FTP æå¡å¨ç­ã å®è¿è¢« :mod:`urllib.request` æ¨¡åç¨æ¥å¤çä½¿ç¨ FTP ç URLã æå³ FTP (æä»¶ä¼ è¾åè®®) çæ´å¤ä¿¡æ¯ï¼è¯·åé :rfc:`959`ã æ­¤æ¨¡åå¨ WebAssembly å¹³å° ``wasm32-emscripten`` å ``wasm32-wasi`` ä¸ä¸éç¨æä¸å¯ç¨ã è¯·åé :ref:`wasm-availability` äºè§£è¯¦æã ftplib (æ åæ¨¡å) åè®® 