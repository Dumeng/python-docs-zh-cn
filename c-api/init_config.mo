Þ    s      ´              L     M  /   m  %     $   Ã      è     	      '     H     h       V         ÷  (   	     @	  !   \	  #   ~	  $   ¢	     Ç	     å	  1   þ	  L   0
  C   }
     Á
  7   Ú
  >     ;   Q  7     6   Å     ü  =     :   J               ®  %   Á     ç     ÿ       >     	   U  )   _  )     G   ³  *   û     &     D  N   b  [   ±       O     (   â  î     7   ú  =   2     p  $   }  X   ¢  V   û  %   R     x          §  1   +     ]     i     v  *        ¿  %   È  =   î     ,  %   G     m                    ¤  #   µ  È   Ù  4   ¢  &   ×  )   þ  K   (  >   t  <   ³      ð  ;     <   M  /     5   º  D   ð  z   5     °  M   Â  '        8  S   A        %   ¶  ^   Ü     ;     H  <   ^       b   (  r     F   þ  S   E       Y   %  ¦        &     E     T  ½  Y        #   7   %   [   $          ¦      Ç       å      !     &!     @!  V   ^!     µ!  (   Õ!     þ!  !   "  #   <"  $   `"     "     £"  $   ¼"  M   á"  P   /#     #  6   #  K   Ö#  J   "$  J   m$  I   ¸$     %  J   %  I   _%     ©%     »%     Ú%  )   ï%     &     1&     >&  :   E&     &  (   &  +   ²&  B   Þ&  %   !'     G'     ^'  P   u'  q   Æ'     8(  ^   È(  3   ')  ë   [)  K   G*  E   *     Ù*     ê*  K   	+  L   U+  4   ¢+     ×+     ê+  ~    ,  6   ,     ¶,     Æ,  ,   Õ,  '   -     *-     1-  6   O-     -  &   -     Ã-     Ö-     ß-     ë-     ô-     .  Æ   .  4   â.  )   /  )   A/  I   k/  =   µ/  ;   ó/  !   /0  ?   Q0  @   0  3   Ò0  =   1  A   D1  k   1     ò1  B   2  )   F2  	   p2  G   z2     Â2     Ú2  ]   ó2     Q3     ^3  2   t3     §3  `   54  u   4  C   5  O   P5      5  Z   06  ²   6     >7     [7     j7   *err_msg* must not be ``NULL``. *index* must be greater than or equal to ``0``. :c:member:`PyConfig.base_exec_prefix` :c:member:`PyConfig.base_executable` :c:member:`PyConfig.base_prefix` :c:member:`PyConfig.dev_mode` :c:member:`PyConfig.exec_prefix` :c:member:`PyConfig.executable` :c:member:`PyConfig.home` :c:member:`PyConfig.isolated` :c:member:`PyConfig.module_search_paths_set`, :c:member:`PyConfig.module_search_paths` :c:member:`PyConfig.parse_argv` :c:member:`PyConfig.pathconfig_warnings` :c:member:`PyConfig.prefix` :c:member:`PyConfig.program_name` :c:member:`PyConfig.pythonpath_env` :c:member:`PyConfig.use_environment` :data:`sys.base_exec_prefix`. :data:`sys.base_prefix`. :pep:`587` "Python Initialization Configuration". :ref:`Python Development Mode <devmode>`: see :c:member:`PyConfig.dev_mode`. Also set to ``1`` if the ``LC_CTYPE`` locale is ``C`` or ``POSIX``. Append *item* to *list*. Configure the LC_CTYPE locale (:term:`locale encoding`) Default: ``-1`` in Python config and ``0`` in isolated config. Default: ``-1`` in Python config, ``0`` in isolated config. Default: ``-1`` in Python mode, ``0`` in isolated mode. Default: ``0`` in Python mode, ``1`` in isolated mode. Default: ``0``. Default: ``1`` in Python config and ``0`` in isolated config. Default: ``1`` in Python config, ``0`` in isolated config. Default: ``1``. Default: ``L"default"``. Default: ``NULL``. Default: ``PYMEM_ALLOCATOR_NOT_SET``. Dump Python references? Error message. Example Example of customized Python always running in isolated mode:: Example:: Exit Python with the specified exit code. Exit code. Argument passed to ``exit()``. For an error, it can store the C function name which created the error. Function to initialize a preconfiguration: Functions to create a status: Functions to handle a status: If *index* is greater than or equal to *list* length, append *item* to *list*. If *length* is non-zero, *items* must be non-``NULL`` and all strings must be non-``NULL``. If equals to ``0``, set :c:member:`~PyPreConfig.coerce_c_locale` and :c:member:`~PyPreConfig.coerce_c_locale_warn` members to ``0``. If equals to ``1``, read the LC_CTYPE locale to decide if it should be coerced. If equals to ``2``, coerce the C locale. If non-zero, :c:func:`Py_PreInitializeFromArgs` and :c:func:`Py_PreInitializeFromBytesArgs` parse their ``argv`` argument the same way the regular Python parses command line arguments: see :ref:`Command Line Arguments <using-on-cmdline>`. If non-zero, emit a warning if the C locale is coerced. If non-zero, enable the :ref:`Python UTF-8 Mode <utf8-mode>`. If non-zero: Initialization error with a message. Initialize the preconfiguration with :ref:`Isolated Configuration <init-isolated-conf>`. Initialize the preconfiguration with :ref:`Python Configuration <init-python-config>`. Insert *item* into *list* at *index*. Is the result an error? Is the result an exit? Is the status an error or an exit? If true, the exception must be handled; by calling :c:func:`Py_ExitStatusException` for example. Isolated mode: see :c:member:`PyConfig.isolated`. List items. List length. List of ``wchar_t*`` strings. Memory allocation failure (out of memory). Methods: Name of the Python memory allocators: Name of the function which created an error, can be ``NULL``. Path configuration inputs: Preinitialize Python with PyPreConfig Private provisional API: PyConfig PyPreConfig PyStatus PyWideStringList Python Initialization Configuration Python can be initialized with :c:func:`Py_InitializeFromConfig` and the :c:type:`PyConfig` structure. It can be preinitialized with :c:func:`Py_PreInitialize` and the :c:type:`PyPreConfig` structure. Python must be preinitialized to call this function. See :ref:`Memory Management <memory>`. See also :pep:`552` "Deterministic pycs". See also :ref:`Initialization, Finalization, and Threads <initialization>`. See also the :c:member:`~PyConfig.filesystem_encoding` member. See also the :c:member:`~PyConfig.filesystem_errors` member. See the :term:`locale encoding`. Set :c:member:`PyConfig.filesystem_encoding` to ``"mbcs"``, Set :c:member:`PyConfig.filesystem_errors` to ``"replace"``. Set :c:member:`PyPreConfig.utf8_mode` to ``0``, Set the LC_CTYPE locale to the user preferred locale. Set the Python memory allocators (:c:member:`PyPreConfig.allocator`) Set to ``0`` or ``1`` by the :option:`-X utf8 <-X>` command line option and the :envvar:`PYTHONUTF8` environment variable. Structure fields: Structure to store an initialization function status: success, error or exit. Structure used to preinitialize Python. Success. The :c:func:`Py_RunMain` function can be used to write a customized Python program. The preinitialization of Python: There are two kinds of configuration: Use :ref:`environment variables <using-on-envvars>`? See :c:member:`PyConfig.use_environment`. ``"strict"`` ``"surrogateescape"`` ``"surrogatepass"`` (only supported with the UTF-8 encoding) ``PYMEM_ALLOCATOR_DEBUG`` (``2``): :ref:`default memory allocators <default-memory-allocators>` with :ref:`debug hooks <pymem-debug-hooks>`. ``PYMEM_ALLOCATOR_DEFAULT`` (``1``): :ref:`default memory allocators <default-memory-allocators>`. ``PYMEM_ALLOCATOR_MALLOC_DEBUG`` (``4``): force usage of ``malloc()`` with :ref:`debug hooks <pymem-debug-hooks>`. ``PYMEM_ALLOCATOR_MALLOC`` (``3``): use ``malloc()`` of the C library. ``PYMEM_ALLOCATOR_NOT_SET`` (``0``): don't change memory allocators (use defaults). ``PYMEM_ALLOCATOR_PYMALLOC_DEBUG`` (``6``): :ref:`Python pymalloc memory allocator <pymalloc>` with :ref:`debug hooks <pymem-debug-hooks>`. ``PYMEM_ALLOCATOR_PYMALLOC`` (``5``): :ref:`Python pymalloc memory allocator <pymalloc>`. ``PYMEM_ALLOCATOR_PYMALLOC`` and ``PYMEM_ALLOCATOR_PYMALLOC_DEBUG`` are not supported if Python is :option:`configured using --without-pymalloc <--without-pymalloc>`. ``pybuilddir.txt`` (Unix only) ``pyvenv.cfg`` etc. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-07 14:14+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 *err_msg* ä¸å¯ä¸º ``NULL``ã *index* å¿é¡»å¤§äºç­äº ``0``ã :c:member:`PyConfig.base_exec_prefix` :c:member:`PyConfig.base_executable` :c:member:`PyConfig.base_prefix` :c:member:`PyConfig.dev_mode` :c:member:`PyConfig.exec_prefix` :c:member:`PyConfig.executable` :c:member:`PyConfig.home` :c:member:`PyConfig.isolated` :c:member:`PyConfig.module_search_paths_set`, :c:member:`PyConfig.module_search_paths` :c:member:`PyConfig.parse_argv` :c:member:`PyConfig.pathconfig_warnings` :c:member:`PyConfig.prefix` :c:member:`PyConfig.program_name` :c:member:`PyConfig.pythonpath_env` :c:member:`PyConfig.use_environment` :data:`sys.base_exec_prefix`. :data:`sys.base_prefix`. :pep:`587` "Python åå§åéç½®". :ref:`Python å¼åæ¨¡å¼ <devmode>`: åè§ :c:member:`PyConfig.dev_mode`ã å¦æ ``LC_CTYPE`` è¯­è¨åºåä¸º ``C`` æ ``POSIX`` ä¹ä¼è¢«è®¾ä¸º ``1``ã å° *item* æ·»å å° *list*ã éç½® LC_CTYPE è¯­è¨åºå (:term:`locale encoding`) é»è®¤å¼: å¨ Python éç½®ä¸­ä¸º ``-1`` èå¨éç¦»éç½®ä¸­ä¸º ``0``ã é»è®¤å¼: å¨ Python éç½®ä¸­ä¸º ``-1``ï¼å¨éç¦»éç½®ä¸­ä¸º ``0``ã é»è®¤å¼: å¨ Python æ¨¡å¼ä¸­ä¸º ``-1``ï¼å¨éç¦»æ¨¡å¼ä¸­ä¸º ``0``ã é»è®¤å¼: å¨ Python æ¨¡å¼ä¸­ä¸º ``0``ï¼å¨éç¦»æ¨¡å¼ä¸­ä¸º ``1``ã é»è®¤å¼: ``0``. é»è®¤å¼: å¨ Python éç½®ä¸­ä¸º ``1`` èå¨éç¦»éç½®ä¸­ä¸º ``0``ã é»è®¤å¼: å¨ Python éç½®ä¸­ä¸º ``1``ï¼å¨éç¦»éç½®ä¸­ä¸º ``0``ã é»è®¤å¼: ``1``. é»è®¤å¼ï¼ ``L"default"``ã é»è®¤å¼: ``NULL``. é»è®¤å¼: ``PYMEM_ALLOCATOR_NOT_SET``ã è½¬å¨ Python å¼ç¨ï¼ éè¯¯ä¿¡æ¯ ç¤ºä¾ å®å¶ç Python çç¤ºä¾æ»æ¯ä¼ä»¥éç¦»æ¨¡å¼è¿è¡:: ç¤ºä¾:: ä»¥æå®çéåºä»£ç éåº Pythonã éåºç ã ä¼ ç» ``exit()`` çåæ°ã å¯¹äºéè¯¯ï¼å®å¯ä»¥å­å¨é æéè¯¯ç C å½æ°çåç§°ã ç¨äºåå§åé¢åéç½®çå½æ°: åå»ºç¶æçå½æ°: å¤çç¶æçå½æ°: å¦æ *index* å¤§äºç­äº *list* çé¿åº¦ï¼åå° *item* æ·»å å° *list*ã å¦æ *length* ä¸ºéé¶å¼ï¼å *items* å¿é¡»ä¸ä¸º ``NULL`` å¹¶ä¸ææå­ç¬¦ä¸²åå¿é¡»ä¸ä¸º ``NULL``ã å¦æç­äº ``0``ï¼åå° :c:member:`~PyPreConfig.coerce_c_locale` å :c:member:`~PyPreConfig.coerce_c_locale_warn` çæåè®¾ä¸º ``0``ã å¦æç­äº ``1``ï¼åè¯»å LC_CTYPE è¯­è¨åºåæ¥ç¡®å®å¶æ¯å¦åºå½è¢«å¼ºå¶è½¬æ¢ã å¦æç­äº ``2``ï¼å¼ºå¶è½¬æ¢ C è¯­è¨åºåã å¦ä¸ºéé¶å¼ï¼:c:func:`Py_PreInitializeFromArgs` å :c:func:`Py_PreInitializeFromBytesArgs` å°ä»¥ä¸å¸¸è§ Python è§£æå½ä»¤è¡åæ°çç¸åæ¹å¼è§£æå¶ ``argv`` åæ°ï¼åè§ :ref:`å½ä»¤è¡åæ° <using-on-cmdline>`ã å¦ä¸ºéé¶å¼ï¼åä¼å¨ C è¯­è¨åºåè¢«å¼ºå¶è½¬æ¢æ¶ååºè­¦åã å¦ä¸ºéé¶å¼ï¼åå¯ç¨ :ref:`Python UTF-8 æ¨¡å¼ <utf8-mode>`ã å¦ä¸ºéé¶å¼: å¸¦æ¶æ¯çåå§åéè¯¯ã éè¿ :ref:`éç¦»éç½® <init-isolated-conf>` æ¥åå§åé¢åéç½®ã éè¿ :ref:`Python éç½® <init-python-config>` æ¥åå§åé¢åéç½®ã å° *item* æå¥å° *list* ç *index* ä½ç½®ä¸ã ç»æéè¯¯åï¼ ç»ææ¯å¦éåºï¼ ç¶æä¸ºéè¯¯è¿æ¯éåºï¼å¦ä¸ºçå¼ï¼åå¼å¸¸å¿é¡»è¢«å¤çï¼ä¾å¦éè¿è°ç¨ :c:func:`Py_ExitStatusException`ã éç¦»æ¨¡å¼ï¼åè§ :c:member:`PyConfig.isolated`ã åè¡¨é¡¹ç®ã List é¿åº¦ã ç± ``wchar_t*`` å­ç¬¦ä¸²ç»æçåè¡¨ã åå­åéå¤±è´¥ï¼åå­ä¸è¶³ï¼ã æ¹æ³ Python åå­åéå¨åç§°: é æéè¯¯çå½æ°çåç§°ï¼å¯ä»¥ä¸º ``NULL``ã è·¯å¾éç½®è¾å¥ï¼ ä½¿ç¨ PyPreConfig é¢åå§å Python ç§æä¸´æ¶APIï¼ PyConfig PyPreConfig PyStatus PyWideStringList Pythonåå§åéç½® Python å¯ä»¥ä½¿ç¨ :c:func:`Py_InitializeFromConfig` å :c:type:`PyConfig` ç»æä½æ¥åå§åã å®å¯ä»¥ä½¿ç¨ :c:func:`Py_PreInitialize` å :c:type:`PyPreConfig` ç»æä½æ¥é¢åå§åã Python å¿é¡»è¢«é¢åå§åä»¥ä¾¿è°ç¨æ­¤å½æ°ã åè§ :ref:`Memory Management <memory>`. åè§ :pep:`552` "Deterministic pycs"ã åè§ :ref:`Initialization, Finalization, and Threads <initialization>`. åè§ :c:member:`~PyConfig.filesystem_encoding` çæåã åè§ :c:member:`~PyConfig.filesystem_errors` çæåã åè§ :term:`locale encoding`ã è®¾ç½® :c:member:`PyConfig.filesystem_encoding` ä¸º ``"mbcs"``, è®¾ç½® :c:member:`PyConfig.filesystem_errors` ä¸º ``"replace"``. è®¾ç½® :c:member:`PyPreConfig.utf8_mode` ä¸º ``0``, å° LC_CTYPE è¯­è¨åºåè®¾ä¸ºç¨æ·éæ©çè¯­è¨åºåã è®¾ç½® Python åå­åéå¨ (:c:member:`PyPreConfig.allocator`) éè¿ :option:`-X utf8 <-X>` å½ä»¤è¡éé¡¹å :envvar:`PYTHONUTF8` ç¯å¢åéè®¾ä¸º ``0`` æ ``1``ã ç»æä½å­æ®µ: å­å¨åå§å½æ°ç¶æï¼æåãéè¯¯æéåºçç»æä½ã ç¨äºé¢åå§å Python çç»æä½ã å®æã :c:func:`Py_RunMain` å½æ°å¯è¢«ç¨æ¥ç¼åå®å¶ç Python ç¨åºã Python çé¢åå§å: æä¸¤ç§éç½®æ¹å¼ï¼ ä½¿ç¨ :ref:`ç¯å¢åé <using-on-envvars>`? åè§ :c:member:`PyConfig.use_environment`ã ``"strict"`` ``"surrogateescape"`` ``"surrogatepass"`` (ä»æ¯æ UTF-8 ç¼ç æ ¼å¼) ``PYMEM_ALLOCATOR_DEBUG`` (``2``): :ref:`é»è®¤åå­åéå¨ <default-memory-allocators>` éå¸¦ :ref:`è°è¯é©å­ <pymem-debug-hooks>`ã ``PYMEM_ALLOCATOR_DEFAULT`` (``1``): :ref:`é»è®¤åå­åéå¨ <default-memory-allocators>`ã ``PYMEM_ALLOCATOR_MALLOC_DEBUG`` (``4``): å¼ºå¶ä½¿ç¨ ``malloc()`` éå¸¦ :ref:`è°è¯é©å­ <pymem-debug-hooks>`ã ``PYMEM_ALLOCATOR_MALLOC`` (``3``): ä½¿ç¨ C åºç ``malloc()``ã ``PYMEM_ALLOCATOR_NOT_SET`` (``0``): ä¸æ¹ååå­åéå¨ (ä½¿ç¨é»è®¤)ã ``PYMEM_ALLOCATOR_PYMALLOC_DEBUG`` (``6``): :ref:`Python pymalloc åå­åéå¨ <pymalloc>` éå¸¦ :ref:`è°è¯é©å­ <pymem-debug-hooks>`ã ``PYMEM_ALLOCATOR_PYMALLOC`` (``5``): :ref:`Python pymalloc åå­åéå¨ <pymalloc>`ã å¦æ Python æ¯ :option:`ä½¿ç¨ --without-pymalloc è¿è¡éç½® <--without-pymalloc>` å ``PYMEM_ALLOCATOR_PYMALLOC`` å ``PYMEM_ALLOCATOR_PYMALLOC_DEBUG`` å°ä¸è¢«æ¯æã ``pybuilddir.txt`` (ä»Unix) ``pyvenv.cfg`` ç­ç­. 