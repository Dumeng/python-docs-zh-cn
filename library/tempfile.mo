Þ    Q      ¤              ,  *   -     X  ô   j  O   _  C   ¯  ®   ó  <   ¢    ß     ã	     
  (   
     D
  »  b
  ~     0       Î  Î   c  ¿  2  "   ò            G   »  §    Û  «  Ñ     è   Y  }   B  º   À  ø   {     t  -   ø  R   &  p   y  l   ê  a   W  U   ¹  t     [     [   à  /  <    l  j   n      Ù   <   k!  ?   ¨!  ;   è!  g   $"  9  "  P   Æ#  :   $  |   R$    Ï$    Û&  ?   ï'  A   /(  >   q(  5   °(  ¡  æ(  R   *     Û*  Í   i+  q  7,  ­   ©-  Ï  W.  s   '0  µ  0  #  Q2  \  u3  _   Ò4  Z   25    5  Ê   7  {   â7     ^8  9  {8  Ü   µ9     :  	   :  	   ¡:  4   «:  ½  à:  *   <     É<  û   Ü<  S   Ø=  1   ,>  Û   ^>  /   :?  Ã  j?     .A     JA  +   gA     A    °A     1C  *   ÂC    íC     xE  Z  F     gG     G     G  =   H  Ó  SH  ¬  'J  ç   ÔK  à   ¼L     M  ±   N  '  ÑN     ùO  X   {P  :   ÔP  d   Q  \   tQ  [   ÑQ  O   -R  m   }R  _   ëR  _   KS    «S    ½U  N   ÎV     W  >   W  A   ÜW  N   X  i   mX  ,  ×X  S   Z  @   XZ  v   Z  ò  [  ï   ]  -   ó]  /   !^  ,   Q^  3   ~^  m  ²^  J    `     k`  ¯   ô`  d  ¤a  Å   	c  °  Ïc  F   e  v  Çe    >g  +  ]h  ]   i  Q   çi  \  9j  Á   k  i   Xl  #   Âl    æl  Ð   n     Õn  	   Ün     æn  D   ín   **Source code:** :source:`Lib/tempfile.py` *delete* is false *suffix*, *prefix*, and *dir* may now be supplied in bytes in order to obtain a bytes return value.  Prior to this, only str was allowed. *suffix* and *prefix* now accept and default to ``None`` to cause an appropriate default value to be used. :func:`mkdtemp` now always returns an absolute path, even if *dir* is relative. :func:`mkdtemp` returns the absolute pathname of the new directory. :func:`mkstemp` returns a tuple containing an OS-level handle to an open file (as would be returned by :func:`os.open`) and the absolute pathname of that file, in that order. :mod:`tempfile` --- Generate temporary files and directories A historical way to create temporary files was to first generate a file name with the :func:`mktemp` function and then create a file using this name. Unfortunately this is not secure, because a different process may create a file with this name in the time between the call to :func:`mktemp` and the subsequent attempt to create the file by the first process. The solution is to combine the two steps and create the file immediately. This approach is used by :func:`mkstemp` and the other functions described above. A platform-specific location: Added *errors* parameter. Added *ignore_cleanup_errors* parameter. Added the *delete* parameter. All the user-callable functions and constructors take additional arguments which allow direct control over the location and name of temporary files and directories. Files names used by this module include a string of random characters which allows those files to be securely created in shared temporary directories. To maintain backward compatibility, the argument order is somewhat odd; it is recommended to use keyword arguments for clarity. Always returns a str.  Previously it would return any :data:`tempdir` value regardless of type so long as it was not ``None``. As a last resort, the current working directory. Beware that if you set ``tempdir`` to a bytes value, there is a nasty side effect: The global default return type of :func:`mkstemp` and :func:`mkdtemp` changes to bytes when no explicit ``prefix``, ``suffix``, or ``dir`` arguments of type str are supplied. Please do not write code expecting or depending on this. This awkward behavior is maintained for compatibility with the historical implementation. Creates a temporary directory in the most secure manner possible. There are no race conditions in the directory's creation.  The directory is readable, writable, and searchable only by the creating user ID. Creates a temporary file in the most secure manner possible.  There are no race conditions in the file's creation, assuming that the platform properly implements the :const:`os.O_EXCL` flag for :func:`os.open`.  The file is readable and writable only by the creating user ID.  If the platform uses permission bits to indicate whether a file is executable, the file is executable by no one.  The file descriptor is not inherited by child processes. Deprecated functions and variables Examples Fully implements the :class:`io.BufferedIOBase` and :class:`io.TextIOBase` abstract base classes (depending on whether binary or text *mode* was specified). Here are some examples of typical usage of the :mod:`tempfile` module:: If *delete* is true (the default) and *delete_on_close* is true (the default), the file is deleted as soon as it is closed. If *delete* is true and *delete_on_close* is false, the file is deleted on context manager exit only, or else when the :term:`file-like object` is finalized. Deletion is not always guaranteed in this case (see :meth:`object.__del__`). If *delete* is false, the value of *delete_on_close* is ignored. If *dir* is not ``None``, the file will be created in that directory; otherwise, a default directory is used.  The default directory is chosen from a platform-dependent list, but the user of the application can control the directory location by setting the *TMPDIR*, *TEMP* or *TMP* environment variables.  There is thus no guarantee that the generated filename will have any nice properties, such as not requiring quoting when passed to external commands via ``os.popen()``. If *prefix* is not ``None``, the file name will begin with that prefix; otherwise, a default prefix is used.  The default is the return value of :func:`gettempprefix` or :func:`gettempprefixb`, as appropriate. If *suffix* is not ``None``, the file name will end with that suffix, otherwise there will be no suffix.  :func:`mkstemp` does not put a dot between the file name and the suffix; if you need one, put it at the beginning of *suffix*. If *text* is specified and true, the file is opened in text mode. Otherwise, (the default) the file is opened in binary mode. If ``tempdir`` is ``None`` (the default) at any call to any of the above functions except :func:`gettempprefix` it is initialized following the algorithm described in :func:`gettempdir`. If any of *suffix*, *prefix*, and *dir* are not ``None``, they must be the same type. If they are bytes, the returned name will be bytes instead of str. If you want to force a bytes return value with otherwise default behavior, pass ``suffix=b''``. On POSIX (only), a process that is terminated abruptly with SIGKILL cannot automatically delete any NamedTemporaryFiles it created. On POSIX the file can always be opened again. On Windows, make sure that at least one of the following conditions are fulfilled: On Windows, the directories :file:`C:\\TEMP`, :file:`C:\\TMP`, :file:`\\TEMP`, and :file:`\\TMP`, in that order. On all other platforms, the directories :file:`/tmp`, :file:`/var/tmp`, and :file:`/usr/tmp`, in that order. On platforms that are neither Posix nor Cygwin, TemporaryFile is an alias for NamedTemporaryFile. Opening the temporary file again by its name while it is still open works as follows: Python searches a standard list of directories to find one which the calling user can create files in.  The list is: Raises an :ref:`auditing event <auditing>` ``tempfile.mkdtemp`` with argument ``fullpath``. Raises an :ref:`auditing event <auditing>` ``tempfile.mkstemp`` with argument ``fullpath``. Return a :term:`file-like object` that can be used as a temporary storage area. The file is created securely, using the same rules as :func:`mkstemp`. It will be destroyed as soon as it is closed (including an implicit close when the object is garbage collected).  Under Unix, the directory entry for the file is either not created at all or is removed immediately after the file is created.  Other platforms do not support this; your code should not rely on a temporary file created using this function having or not having a visible name in the file system. Return an absolute pathname of a file that did not exist at the time the call is made.  The *prefix*, *suffix*, and *dir* arguments are similar to those of :func:`mkstemp`, except that bytes file names, ``suffix=None`` and ``prefix=None`` are not supported. Return the filename prefix used to create temporary files.  This does not contain the directory component. Return the name of the directory used for temporary files. This defines the default value for the *dir* argument to all functions in this module. Same as :func:`gettempdir` but the return value is in bytes. Same as :func:`gettempprefix` but the return value is in bytes. The *dir* parameter now accepts a :term:`path-like object`. The *dir*, *prefix* and *suffix* parameters have the same meaning and defaults as with :func:`mkstemp`. The *mode* parameter defaults to ``'w+b'`` so that the file created can be read and written without being closed.  Binary mode is used so that it behaves consistently on all platforms without regard for the data that is stored.  *buffering*, *encoding*, *errors* and *newline* are interpreted as for :func:`open`. The *prefix*, *suffix*, and *dir* arguments are the same as for :func:`mkstemp`. The :py:data:`os.O_TMPFILE` flag is now used if available. The :py:data:`os.O_TMPFILE` flag is used if it is available and works (Linux-specific, requires Linux kernel 3.11 or later). The directory can be explicitly cleaned up by calling the :func:`cleanup` method. If *ignore_cleanup_errors* is true, any unhandled exceptions during explicit or implicit cleanup (such as a :exc:`PermissionError` removing open files on Windows) will be ignored, and the remaining removable items deleted on a "best-effort" basis. Otherwise, errors will be raised in whatever context cleanup occurs (the :func:`cleanup` call, exiting the context manager, when the object is garbage-collected or during interpreter shutdown). The directory name can be retrieved from the :attr:`name` attribute of the returned object.  When the returned object is used as a context manager, the :attr:`name` will be assigned to the target of the :keyword:`!as` clause in the :keyword:`with` statement, if there is one. The directory named by the :envvar:`TEMP` environment variable. The directory named by the :envvar:`TMPDIR` environment variable. The directory named by the :envvar:`TMP` environment variable. The module defines the following user-callable items: The module uses a global variable to store the name of the directory used for temporary files returned by :func:`gettempdir`.  It can be set directly to override the selection process, but this is discouraged. All functions in this module take a *dir* argument which can be used to specify the directory. This is the recommended approach that does not surprise other unsuspecting code by changing global API behavior. The result of this search is cached, see the description of :data:`tempdir` below. The resulting file has one additional method, :func:`rollover`, which causes the file to roll over to an on-disk file regardless of its size. The resulting object can be used as a context manager (see :ref:`tempfile-examples`).  On completion of the context or destruction of the file object the temporary file will be removed from the filesystem. The returned object is a file-like object whose :attr:`_file` attribute is either an :class:`io.BytesIO` or :class:`io.TextIOWrapper` object (depending on whether binary or text *mode* was specified) or a true file object, depending on whether :func:`rollover` has been called.  This file-like object can be used in a :keyword:`with` statement, just like a normal file. The returned object is a true file object on POSIX platforms.  On other platforms, it is a file-like object whose :attr:`!file` attribute is the underlying true file object. The returned object is always a :term:`file-like object` whose :attr:`!file` attribute is the underlying true file object. This :term:`file-like object` can be used in a :keyword:`with` statement, just like a normal file.  The name of the temporary file can be retrieved from the :attr:`name` attribute of the returned file-like object. On Unix, unlike with the :func:`TemporaryFile`, the directory entry does not get unlinked immediately after the file creation. The user of :func:`mkdtemp` is responsible for deleting the temporary directory and its contents when done with it. Therefore to use the name of the temporary file to reopen the file after closing it, either make sure not to delete the file upon closure (set the *delete* parameter to be false) or, in case the temporary file is created in a :keyword:`with` statement, set the *delete_on_close* parameter to be false. The latter approach is recommended as it provides assistance in automatic cleaning of the temporary file upon the context manager exit. This class operates exactly as :func:`TemporaryFile` does, except that data is spooled in memory until the file size exceeds *max_size*, or until the file's :func:`fileno` method is called, at which point the contents are written to disk and operation proceeds as with :func:`TemporaryFile`. This class securely creates a temporary directory using the same rules as :func:`mkdtemp`. The resulting object can be used as a context manager (see :ref:`tempfile-examples`).  On completion of the context or destruction of the temporary directory object, the newly created temporary directory and all its contents are removed from the filesystem. This function operates exactly as :func:`TemporaryFile` does, except the following differences: This function returns a file that is guaranteed to have a visible name in the file system. This module creates temporary files and directories.  It works on all supported platforms. :class:`TemporaryFile`, :class:`NamedTemporaryFile`, :class:`TemporaryDirectory`, and :class:`SpooledTemporaryFile` are high-level interfaces which provide automatic cleanup and can be used as context managers. :func:`mkstemp` and :func:`mkdtemp` are lower-level functions which require manual cleanup. To manage the named file, it extends the parameters of :func:`TemporaryFile` with *delete* and *delete_on_close* parameters that determine whether and how the named file should be automatically deleted. Unlike :func:`TemporaryFile`, the user of :func:`mkstemp` is responsible for deleting the temporary file when done with it. Use :func:`mkstemp` instead. Use of this function may introduce a security hole in your program.  By the time you get around to doing anything with the file name it returns, someone else may have beaten you to the punch.  :func:`mktemp` usage can be replaced easily with :func:`NamedTemporaryFile`, passing it the ``delete=False`` parameter:: When set to a value other than ``None``, this variable defines the default value for the *dir* argument to the functions defined in this module, including its type, bytes or str.  It cannot be a :term:`path-like object`. file file name temporary the truncate method now accepts a ``size`` argument. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-23 14:14+0000
PO-Revision-Date: 2021-06-28 01:14+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç ï¼** :source:`Lib/tempfile.py` *delete* ä¸ºåå¼ ç°å¨ï¼*suffix*ã*prefix* å *dir* å¯ä»¥ä»¥ bytes ç±»åæé¡ºåºæä¾ï¼ä»¥è·å¾ bytes ç±»åçè¿åå¼ãä¹ååªåè®¸ä½¿ç¨ strã*suffix* å *prefix* ç°å¨å¯ä»¥æ¥å ``None``ï¼å¹¶ä¸é»è®¤ä¸º ``None`` ä»¥ä½¿ç¨åéçé»è®¤å¼ã :func:`mkdtemp` ç°å¨å°å§ç»è¿åç»å¯¹è·¯å¾ï¼å³ä½¿ *dir* ä¸ºç¸å¯¹è·¯å¾ã :func:`mkdtemp` è¿åæ°ç®å½çç»å¯¹è·¯å¾ã :func:`mkstemp` è¿åä¸ä¸ªåç»ï¼åç»ä¸­ç¬¬ä¸ä¸ªåç´ æ¯å¥æï¼å®æ¯ä¸ä¸ªç³»ç»çº§å¥æï¼æåä¸ä¸ªæå¼çæä»¶ï¼ç­åäº :func:`os.open` çè¿åå¼ï¼ï¼ç¬¬äºåç´ æ¯è¯¥æä»¶çç»å¯¹è·¯å¾ã :mod:`tempfile` --- çæä¸´æ¶æä»¶åç®å½ åå»ºä¸´æ¶æä»¶æä¸ç§åå²æ¹æ³ï¼é¦åä½¿ç¨ :func:`mktemp` å½æ°çæä¸ä¸ªæä»¶åï¼ç¶åä½¿ç¨è¯¥æä»¶ååå»ºæä»¶ãä¸å¹¸çæ¯ï¼è¿æ¯ä¸å®å¨çï¼å ä¸ºå¨è°ç¨ :func:`mktemp` ä¸éåå°è¯åå»ºæä»¶çè¿ç¨ä¹é´çæ¶é´éï¼å¶ä»è¿ç¨å¯è½ä¼ä½¿ç¨è¯¥åç§°åå»ºæä»¶ãè§£å³æ¹æ¡æ¯å°ä¸¤ä¸ªæ­¥éª¤ç»åèµ·æ¥ï¼ç«å³åå»ºæä»¶ãè¿ä¸ªæ¹æ¡ç®åè¢« :func:`mkstemp` åä¸è¿°å¶ä»å½æ°æéç¨ã ä¸å¹³å°ç¸å³çä½ç½®ï¼ æ·»å äº *errors* åæ°ã æ·»å äº *ignore_cleanup_errors* å½¢åã å¢å äº *delete* å½¢åã ææç±ç¨æ·è°ç¨çå½æ°åæé å½æ°é½å¸¦æåæ°ï¼è¿äºåæ°å¯ä»¥è®¾ç½®ä¸´æ¶æä»¶åä¸´æ¶ç®å½çè·¯å¾ååç§°ãè¯¥æ¨¡åçæçæä»¶ååæ¬ä¸ä¸²éæºå­ç¬¦ï¼å¨å¬å±çä¸´æ¶ç®å½ä¸­ï¼è¿äºå­ç¬¦å¯ä»¥è®©åå»ºæä»¶æ´å å®å¨ãä¸ºäºä¿æååå¼å®¹æ§ï¼åæ°çé¡ºåºæäºå¥æªãæä»¥ä¸ºäºä»£ç æ¸æ°ï¼å»ºè®®ä½¿ç¨å³é®å­åæ°ã æ»æ¯è¿åä¸ä¸ªå­ç¬¦ä¸²ã å¨ä¹åççæ¬ä¸­å®ä¼è¿åä»»æ :data:`tempdir` å¼èä¸èèå®çç±»åï¼åªè¦å®ä¸ä¸º ``None``ã ä¸å¾å·²æ¶ï¼ä½¿ç¨å½åå·¥ä½ç®å½ã è¯·æ³¨æå¦æä½ å° ``tempdir`` è®¾ä¸ºå­èä¸²å¼ï¼ä¼æä¸ä¸ªéº»ç¦çå¯ä½ç¨: :func:`mkstemp` å :func:`mkdtemp` çå¨å±é»è®¤è¿åç±»åä¼å¨æ²¡ææ¾å¼æä¾å­ç¬¦ä¸²ç±»åçwhen no explicit ``prefix``, ``suffix`` æ ``dir`` çæ¶åè¢«æ¹ä¸ºå­èä¸²ã è¯·ä¸è¦ç¼åé¢ææä¾èµäºæ­¤å¥å´çä»£ç ã  è¿ä¸ªç¬¨æè¡ä¸ºæ¯ä¸ºäºä¿æä¸åå²å®ç°çå¼å®¹æ§ã ä»¥æå®å¨çæ¹å¼åå»ºä¸ä¸ªä¸´æ¶ç®å½ï¼åå»ºè¯¥ç®å½æ¶ä¸ä¼æç«äºçæåµãè¯¥ç®å½åªè½ç±åå»ºèè¯»åãåå¥åæç´¢ã ä»¥æå®å¨çæ¹å¼åå»ºä¸ä¸ªä¸´æ¶æä»¶ãåè®¾æå¨å¹³å°æ­£ç¡®å®ç°äº :func:`os.open` ç :const:`os.O_EXCL` æ å¿ï¼ååå»ºæä»¶æ¶ä¸ä¼æç«äºçæåµãè¯¥æä»¶åªè½ç±åå»ºèè¯»åï¼å¦ææå¨å¹³å°ç¨æéä½æ¥æ è®°æä»¶æ¯å¦å¯æ§è¡ï¼é£ä¹æ²¡æäººææ§è¡æãæä»¶æè¿°ç¬¦ä¸ä¼è¿ç»§ç»å­è¿ç¨ã å·²å¼ç¨çå½æ°ååé ä¾å­ å®æ´å®ç° :class:`io.BufferedIOBase` å :class:`io.TextIOBase` æ½è±¡åºç±»ï¼åå³äºäºè¿å¶æææ¬ *mode* æ¯å¦å·²æå®ï¼ã ä»¥ä¸æ¯ :mod:`tempfile` æ¨¡åå¸åç¨æ³çä¸äºç¤ºä¾:: å¦æ *delete* ä¸ºï¼é»è®¤çï¼çå¼ä¸ *delete_on_close* ä¹ä¸ºï¼é»è®¤çï¼çå¼ï¼åæä»¶å°å¨å³é­åç«å³è¢«å é¤ã å¦æ *delete* ä¸ºçå¼è *delete_on_close* ä¸ºåå¼ï¼åæä»¶å°å¨éåºä¸ä¸æç®¡çå¨ï¼æèå½ :term:`file-like object` è¢«ç»ç»æ¶æä¼è¢«å é¤ã å¨æ­¤æåµä¸å°ä¸ä¿è¯æ»æ¯è½å é¤æä»¶ï¼åè§ :meth:`object.__del__` ææ¡£ï¼ã å¦æ *delete* ä¸ºåå¼ï¼å *delete_on_close* çå¼å°è¢«å¿½ç¥ã å¦æ *dir* ä¸ä¸º ``None``ï¼åå¨æå®çç®å½åå»ºæä»¶ï¼æ¯ ``None`` åä½¿ç¨é»è®¤ç®å½ãé»è®¤ç®å½æ¯ä»ä¸ä¸ªåè¡¨ä¸­éæ©åºæ¥çï¼è¿ä¸ªåè¡¨ä¸åå¹³å°ä¸ä¸æ ·ï¼ä½æ¯ç¨æ·å¯ä»¥è®¾ç½® *TMPDIR*ã*TEMP* æ *TMP* ç¯å¢åéæ¥è®¾ç½®ç®å½çä½ç½®ãå æ­¤ï¼ä¸è½ä¿è¯çæçä¸´æ¶æä»¶è·¯å¾å¾è§èï¼æ¯å¦ï¼éè¿ ``os.popen()`` å°è·¯å¾ä¼ éç»å¤é¨å½ä»¤æ¶ä»éè¦å å¼å·ã å¦æ *prefix* ä¸æ¯ ``None``ï¼åæä»¶åå°ä»¥è¯¥åç¼å¼å¤´ï¼æ¯ ``None``      åä½¿ç¨é»è®¤åç¼ãé»è®¤åç¼æ¯ :func:`gettempprefix` æ :func:`gettempprefixb` å½æ°çè¿åå¼ï¼èªå¨è°ç¨åéçå½æ°ï¼ã å¦æ *suffix* ä¸æ¯ ``None`` åæä»¶åå°ä»¥è¯¥åç¼ç»å°¾ï¼æ¯ ``None`` åæ²¡æåç¼ã:func:`mkstemp` ä¸ä¼å¨æä»¶åååç¼ä¹é´å ç¹ï¼å¦æéè¦å ä¸ä¸ªç¹å·ï¼è¯·å°å¶æ¾å¨ *suffix* çå¼å¤´ã å¦ææå®äº *text* ä¸ä¸ºçå¼ï¼æä»¶ä¼ä»¥ææ¬æ¨¡å¼æå¼ã å¦åï¼æä»¶ï¼é»è®¤ï¼ä¼ä»¥äºè¿å¶æ¨¡å¼æå¼ã å¦æå¨è°ç¨é¤ :func:`gettempprefix` å¤çä¸è¿°ä»»ä½å½æ°æ¶ ``tempdir`` ä¸º ``None`` (é»è®¤å¼) åå®ä¼æç§ :func:`gettempdir` ä¸­ææè¿°çç®æ³æ¥åå§åã å¦æ *suffix*ã*prefix* å *dir* ä¸­çä»»ä½ä¸ä¸ªä¸æ¯ ``None``ï¼å°±è¦ä¿è¯å®ä»¬æ¯åä¸æ°æ®ç±»åãå¦æå®ä»¬æ¯ bytesï¼åè¿åçåç§°çç±»åå°±æ¯ bytes èä¸æ¯ strãå¦æç¡®å®è¦ç¨é»è®¤åæ°ï¼ä½åæ³è¦è¿åå¼æ¯ bytes ç±»åï¼è¯·ä¼ å¥ ``suffix=b''``ã ï¼åªæï¼å¨ POSIX ä¸ï¼ä¸ä¸ªç¨ SIGKILL çªç¶ç»æ­¢çè¿ç¨æ æ³èªå¨å é¤å®æåå»ºçä»»ä½ NamedTemporaryFilesã å¨ POSIX ä¸è¯¥æä»¶æ»æ¯å¯ä»¥è¢«åæ¬¡æå¼ãthe file can always be opened again. å¨ Windows ä¸ï¼è¦ç¡®ä¿è³å°æ»¡è¶³ä¸åæ¡ä»¶ä¹ä¸: å¨ Windows ä¸ï¼ä¾æ¬¡ä¸º :file:`C:\\TEMP`ã:file:`C:\\TMP`ã:file:`\\TEMP` å :file:`\\TMP`ã å¨ææå¶ä»å¹³å°ä¸ï¼ä¾æ¬¡ä¸º :file:`/tmp`ã:file:`/var/tmp` å :file:`/usr/tmp`ã å¨ Posix æ Cygwin ä»¥å¤çå¹³å°ä¸ï¼TemporaryFile æ¯ NamedTemporaryFile çå«åã ä¸´æ¶æä»¶ä»ç¶æå¼æ¶ä½¿ç¨å¶åç§°åæ¬¡æå¼å®çæä½å¦ä¸æç¤º: Python æç´¢æ åç®å½åè¡¨ï¼ä»¥æ¾å°è°ç¨èå¯ä»¥å¨å¶ä¸­åå»ºæä»¶çç®å½ãè¿ä¸ªåè¡¨æ¯ï¼ å¼åä¸ä¸ª ``tempfile.mkdtemp`` :ref:`å®¡è®¡äºä»¶ <auditing>`ï¼éå¸¦åæ° ``fullpath``ã å¼åä¸ä¸ª ``tempfile.mkstemp`` :ref:`å®¡è®¡äºä»¶ <auditing>`ï¼éå¸¦åæ° ``fullpath``ã è¿åä¸ä¸ª :term:`file-like object` ï¼æä»¶ç±»å¯¹è±¡ï¼ä½ä¸ºä¸´æ¶å­å¨åºåãåå»ºè¯¥æä»¶ä½¿ç¨äºä¸ :func:`mkstemp` ç¸åçå®å¨è§åãå®å°å¨å³é­åç«å³éæ¯ï¼åæ¬åå¾åæ¶æºå¶å³é­è¯¥å¯¹è±¡æ¶ï¼ãå¨ Unix ä¸ï¼è¯¥æä»¶å¨ç®å½ä¸­çæ¡ç®æ ¹æ¬ä¸åå»ºï¼æèåå»ºæä»¶åç«å³å°±è¢«å é¤äºï¼å¶ä»å¹³å°ä¸æ¯ææ­¤åè½ãæ¨çä»£ç ä¸åºä¾èµä½¿ç¨æ­¤åè½åå»ºçä¸´æ¶æä»¶åç§°ï¼å ä¸ºå®å¨æä»¶ç³»ç»ä¸­çåç§°å¯è½æ¯å¯è§çï¼ä¹å¯è½æ¯ä¸å¯è§çã è¿åä¸ä¸ªç»å¯¹è·¯å¾ï¼è¿ä¸ªè·¯å¾æåçæä»¶å¨è°ç¨æ¬æ¹æ³æ¶ä¸å­å¨ã*prefix*ã*suffix* å *dir* åæ°ä¸ :func:`mkstemp` ä¸­çåååæ°ç±»ä¼¼ï¼ä¸åä¹å¤å¨äºä¸æ¯æå­èç±»åçæä»¶åï¼ä¸æ¯æ ``suffix=None`` å ``prefix=None``ã è¿åç¨äºåå»ºä¸´æ¶æä»¶çæä»¶ååç¼ï¼å®ä¸åå«ç®å½é¨åã è¿åæ¾ç½®ä¸´æ¶æä»¶çç®å½çåç§°ãè¿ä¸ªæ¹æ³çè¿åå¼å°±æ¯æ¬æ¨¡åææå½æ°ç *dir* åæ°çé»è®¤å¼ã ä¸ :func:`gettempdir` ç¸åï¼ä½è¿åå¼ä¸ºå­èç±»åã ä¸ :func:`gettempprefix` ç¸åï¼ä½è¿åå¼ä¸ºå­èç±»åã *dir* åæ°ç°å¨å¯æ¥åä¸ä¸ªè·¯å¾ç±»å¯¹è±¡ (:term:`path-like object`)ã åæ° *dir*ã*prefix* å *suffix* çå«ä¹åé»è®¤å¼é½ä¸å®ä»¬å¨ :func:`mkstemp` ä¸­çç¸åã *mode* åæ°é»è®¤å¼ä¸º ``'w+b'``ï¼æä»¥åå»ºçæä»¶ä¸ç¨å³é­ï¼å°±å¯ä»¥è¯»åæåå¥ãå ä¸ºç¨çæ¯äºè¿å¶æ¨¡å¼ï¼æä»¥æ è®ºå­çæ¯ä»ä¹æ°æ®ï¼å®å¨ææå¹³å°ä¸é½è¡¨ç°ä¸è´ã*buffering*ã*encoding*ã*errors* å *newline* çå«ä¹ä¸ :func:`open` ä¸­çç¸åã *prefix*ã*suffix* å *dir* çå«ä¹ä¸å®ä»¬å¨ :func:`mkstemp` ä¸­çç¸åã å¦æå¯ç¨ï¼ç°å¨ç¨çæ¯ :py:data:`os.O_TMPFILE` æ å¿ã å¦æå¯ç¨ï¼åä½¿ç¨ :py:data:`os.O_TMPFILE` æ å¿ï¼ä»éäº Linuxï¼éè¦ 3.11 åæ´é«çæ¬çåæ ¸ï¼ã æ­¤ç®å½å¯éè¿è°ç¨ :func:`cleanup` æ¹æ³æ¥æ¾å¼å°æ¸çã å¦æ *ignore_cleanup_errors* ä¸ºçå¼ï¼åå¨æ¾å¼æéå¼æ¸çï¼ä¾å¦å¨ Windows ä¸ :exc:`PermissionError` ç§»é¤æå¼çæä»¶ï¼æé´åºç°çæªå¤çå¼å¸¸å°è¢«å¿½ç¥ï¼å¹¶ä¸å©ä½çå¯ç§»é¤æ¡ç®ä¼è¢«âå°½å¯è½âå°å é¤ã å¨å¶ä»æåµä¸ï¼éè¯¯å°å¨ä»»ä½ä¸ä¸ææ¸çåçæ¶è¢«å¼å (:func:`cleanup` è°ç¨ãéåºä¸ä¸æç®¡çå¨ãå¯¹è±¡è¢«ä½ä¸ºåå¾åæ¶æè§£éå¨å³é­ç­)ã å¯ä»¥ä»è¿åå¯¹è±¡ç :attr:`name` å±æ§ä¸­æ¾å°ä¸´æ¶ç®å½çåç§°ãå½è¿åçå¯¹è±¡ç¨ä½ä¸ä¸æç®¡çå¨æ¶ï¼è¿ä¸ª :attr:`name` ä¼ä½ä¸º :keyword:`with` è¯­å¥ä¸­ :keyword:`!as` å­å¥çç®æ ï¼å¦ææ as çè¯ï¼ã :envvar:`TEMP` ç¯å¢åéæåçç®å½ã :envvar:`TMPDIR` ç¯å¢åéæåçç®å½ã :envvar:`TMP` ç¯å¢åéæåçç®å½ã è¿ä¸ªæ¨¡åå®ä¹äºä»¥ä¸åå®¹ä¾ç¨æ·è°ç¨ï¼ æ¬æ¨¡åä½¿ç¨ä¸ä¸ªå¨å±åéæ¥å­å¨ç± :func:`gettempdir` è¿åçä¸´æ¶æä»¶ä½¿ç¨çç®å½è·¯å¾ã å®å¯è¢«ç´æ¥è®¾ç½®ä»¥è¦çéæ©è¿ç¨ï¼ä½ä¸å»ºè®®è¿æ ·åã æ¬æ¨¡åä¸­çææå½æ°é½æ¥åä¸ä¸ª *dir* åæ°ï¼å®å¯è¢«ç¨äºæå®ç®å½ã è¿æ¯ä¸ä¼éè¿æ¹åå¨å± API è¡ä¸ºå¯¹å¶ä»æ åå¤ä»£ç é æå½±åçæ¨èåæ³ã æç´¢çç»æä¼ç¼å­èµ·æ¥ï¼åè§ä¸é¢ :data:`tempdir` çæè¿°ã æ­¤å½æ°çæçæä»¶å¯¹è±¡æä¸ä¸ªé¢å¤çæ¹æ³ââ:func:`rollover`ï¼å¯ä»¥å¿½ç¥æä»¶å¤§å°ï¼è®©æä»¶ç«å³åå¥ç£çã çæçå¯¹è±¡å¯ä»¥ç¨ä½ä¸ä¸æç®¡çå¨ï¼åè§ :ref:`tempfile-examples`ï¼ãå®æä¸ä¸ææéæ¯ä¸´æ¶æä»¶å¯¹è±¡åï¼ä¸´æ¶æä»¶å°ä»æä»¶ç³»ç»ä¸­å é¤ã è¿åçå¯¹è±¡æ¯æä»¶ç±»å¯¹è±¡ (file-like object)ï¼å®ç :attr:`_file` å±æ§æ¯ :class:`io.BytesIO` æ :class:`io.TextIOWrapper` å¯¹è±¡ï¼åå³äºæå®çæ¯äºè¿å¶æ¨¡å¼è¿æ¯ææ¬æ¨¡å¼ï¼æçå®çæä»¶å¯¹è±¡ï¼åå³äºæ¯å¦å·²è°ç¨ :func:`rollover`ï¼ãæä»¶ç±»å¯¹è±¡å¯ä»¥åæ®éæä»¶ä¸æ ·å¨ :keyword:`with` è¯­å¥ä¸­ä½¿ç¨ã å¨ POSIX å¹³å°ä¸ï¼å®è¿åçå¯¹è±¡æ¯çå®çæä»¶å¯¹è±¡ãå¨å¶ä»å¹³å°ä¸ï¼å®æ¯ä¸ä¸ªæä»¶ç±»å¯¹è±¡ (file-like object)ï¼å®ç :attr:`!file` å±æ§æ¯åºå±ççå®æä»¶å¯¹è±¡ã è¿åçå¯¹è±¡å°æ»æ¯ä¸ä¸ª :term:`file-like object` å¹¶ä¸å¶ :attr:`!file` å±æ§ä¸ºåºå±çå®éæä»¶å¯¹è±¡ã è¿ä¸ª :term:`file-like object` å¯å¨ :keyword:`with` è¯­å¥ä¸­ä½¿ç¨ï¼å°±åæ®éçæä»¶ä¸æ ·ã è¯¥ä¸´æ¶æä»¶çæä»¶åå¯ä»è¢«è¿åçæä»¶ç±»å¯¹è±¡ç :attr:`name` å±æ§ä¸­æåã å¨ Unix ä¸ï¼ä¸åäº :func:`TemporaryFile`ï¼å¶ç®å½é¡¹ä¸ä¼å¨åå»ºæä»¶ä¹åç«å³è¢«åæ¶é¾æ¥ã :func:`mkdtemp` ç¨æ·ç¨å®ä¸´æ¶ç®å½åéè¦èªè¡å°å¶å é¤ã å æ­¤è¦ä½¿ç¨è¯¥ä¸´æ¶æä»¶çåç§°å¨å³é­æä»¶ä¹åéæ°æå¼å®ï¼é£ä¹æ³¨æå¨å³é­æ¶ä¸è¦å é¤æä»¶ï¼å° *delete* å½¢åè®¾ä¸ºåå¼ï¼ï¼æèå¦æè¯¥ä¸´æ¶æä»¶æ¯å¨ :keyword:`with` è¯­å¥ä¸­åå»ºçï¼åè¦å° *delete_on_close* å½¢åè®¾ä¸ºåå¼ã æ´æ¨èåä¸ç§æ¹å¼å ä¸ºå®å¨ä¸ä¸æç®¡çå¨éåºæ¶æä¾äºèªå¨æ¸çåå©ã è¿ä¸ªç±»æ§è¡çæä½ä¸ :func:`TemporaryFile` å®å¨ç¸åï¼ä½ä¼å°æ°æ®ç¼å­å¨åå­ä¸­ç´å°æä»¶å¤§å°è¶è¿ *max_size*ï¼æèç´å°æä»¶ç :func:`fileno` æ¹æ³è¢«è°ç¨ï¼è¿æ¶æä»¶åå®¹ä¼è¢«åå¥ç£çå¹¶å¦ä½¿ç¨ :func:`TemporaryFile` æ¶ä¸æ ·ç»§ç»­æä½ã è¿ä¸ªç±»ä¼ä½¿ç¨ä¸ :func:`mkdtemp` ç¸åçè§åå®å¨å°åå»ºä¸ä¸ªä¸´æ¶ç®å½ã ç»æå¯¹è±¡å¯ä»¥è¢«ç¨ä½ä¸ä¸æç®¡çå¨ (åè§ :ref:`tempfile-examples`)ã å¨å®æä¸ä¸ææéæ¯ä¸´æ¶ç®å½å¯¹è±¡æ¶ï¼æ°åå»ºçä¸´æ¶ç®å½åå¶ææåå®¹ä¼ä»æä»¶ç³»ç»ä¸­è¢«ç§»é¤ã æ­¤å½æ°çæä½ä¸ :func:`TemporaryFile` æåçå®å¨ç¸åï¼é¤äºå­å¨ä¸åå·®å¼: æ­¤å½æ°å°è¿åä¸ä¸ªè¯å®å·æå¨æä»¶ç³»ç»ä¸­çå¯è§åç§°çæä»¶ã è¯¥æ¨¡åç¨äºåå»ºä¸´æ¶æä»¶åç®å½ï¼å®å¯ä»¥è·¨å¹³å°ä½¿ç¨ã:class:`TemporaryFile`ã:class:`NamedTemporaryFile`ã:class:`TemporaryDirectory` å :class:`SpooledTemporaryFile` æ¯å¸¦æèªå¨æ¸çåè½çé«çº§æ¥å£ï¼å¯ç¨ä½ä¸ä¸æç®¡çå¨ã:func:`mkstemp` å :func:`mkdtemp` æ¯ä½çº§å½æ°ï¼ä½¿ç¨å®æ¯éæå¨æ¸çã ä¸ºç®¡çæå®åç§°çæä»¶ï¼å®å°ä¸º :func:`TemporaryFile` æ©å± *delete* å *delete_on_close* å½¢åæ¥ç¡®å®æå®åç§°çæä»¶æ¯å¦è¦è¢«èªå¨å é¤ä»¥åè¦å¦ä½æ§è¡å é¤ã ä¸ :func:`TemporaryFile` ä¸åï¼:func:`mkstemp` ç¨æ·ç¨å®ä¸´æ¶æä»¶åéè¦èªè¡å°å¶å é¤ã ä½¿ç¨ :func:`mkstemp` æ¥ä»£æ¿ã ä½¿ç¨æ­¤åè½å¯è½ä¼å¨ç¨åºä¸­å¼å¥å®å¨æ¼æ´ãå½ä½ å¼å§ä½¿ç¨æ¬æ¹æ³è¿åçæä»¶æ§è¡ä»»ä½æä½æ¶ï¼å¯è½æäººå·²ç»æ·è¶³åç»äºã:func:`mktemp` çåè½å¯ä»¥å¾è½»æ¾å°ç¨ :func:`NamedTemporaryFile` ä»£æ¿ï¼å½ç¶éè¦ä¼ é ``delete=False`` åæ°:: å½è®¾ä¸º ``None`` ä»¥å¤çå¼æ¶ï¼æ­¤åéä¼ä¸ºæ¬æ¨¡åä¸­å®ä¹çå½æ°ç *dir* åæ°å®ä¹é»è®¤å¼ï¼åæ¬ç¡®å®å¶ç±»åä¸ºå­èä¸²è¿æ¯å­ç¬¦ä¸²ã å®ä¸å¯ä»¥ä¸º :term:`path-like object`ã æä»¶ æä»¶å ä¸´æ¶ ç°å¨ï¼æä»¶ç truncate æ¹æ³å¯æ¥åä¸ä¸ª ``size`` åæ°ã 