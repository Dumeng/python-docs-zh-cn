Þ    (      \                    [  ¥  >       @  ]   L    ª  S  °    
  b    L     Ê   M  J       c  +   j  >        Õ  ~   ê  v   i     à    r  8   t  p   ­  |     M        é  F    >   Ì  ó     Ï   ÿ  Î   Ï  Ø     >   w  @   ¶  $  ÷  W     `   t    Õ     ]  õ   ã  ½  Ù  Ì  !  a  d#  <   Æ$    %  A   !&  Ç   c&    +'  =  7(  2  u)  ø   ¨*  »   ¡+  B   ],  Ý    ,  )   ~-  =   ¨-     æ-     ö-     x.     ú.    /  :   0  w   È0     @1  K   Í1      2    º2  3   Ã3  Á   ÷3  Å   ¹4  Á   5  Ï   A6  C   7  E   U7  #  7  g   ¿8  ^   '9  c  9  ~   ê:  é   i;   "Resources" are file-like resources associated with a module or package in Python. The resources may be contained directly in a package, within a subdirectory contained in that package, or adjacent to modules outside a package. Resources may be text or binary. As a result, Python module sources (.py) of a package and compilation artifacts (pycache) are technically de-facto resources of that package. In practice, however, resources are primarily those non-Python artifacts exposed specifically by the package author. "package" parameter was renamed to "anchor". "anchor" can now be a non-package module and if omitted will default to the caller's module. "package" is still accepted for compatibility but will raise a DeprecationWarning. Consider passing the anchor positionally or using ``importlib_resources >= 5.10`` for a compatible interface on older Pythons. **Source code:** :source:`Lib/importlib/resources/__init__.py` *anchor* is an optional :data:`Anchor`. If the anchor is a package, resources are resolved from that package. If a module, resources are resolved adjacent to that module (in the same package or the package root). If the anchor is omitted, the caller's module is used. *package* is either a name or a module object which conforms to the ``Package`` requirements. *package* is either a name or a module object which conforms to the ``Package`` requirements.  *resource* is the name of the resource to open within *package*; it may not contain path separators and it may not have sub-resources (i.e. it cannot be a directory). *package* is either a name or a module object which conforms to the ``Package`` requirements.  *resource* is the name of the resource to open within *package*; it may not contain path separators and it may not have sub-resources (i.e. it cannot be a directory).  *encoding* and *errors* have the same meaning as with built-in :func:`open`. *package* is either a name or a module object which conforms to the ``Package`` requirements.  *resource* is the name of the resource to open within *package*; it may not contain path separators and it may not have sub-resources (i.e. it cannot be a directory).  *encoding* and *errors* have the same meaning as with built-in :func:`open`.  This function returns the contents of the resource as :class:`str`. *package* is either a name or a module object which conforms to the ``Package`` requirements.  *resource* is the name of the resource to open within *package*; it may not contain path separators and it may not have sub-resources (i.e. it cannot be a directory).  This function returns a ``typing.BinaryIO`` instance, a binary I/O stream open for reading. *package* is either a name or a module object which conforms to the ``Package`` requirements.  *resource* is the name of the resource to open within *package*; it may not contain path separators and it may not have sub-resources (i.e. it cannot be a directory).  This function returns the contents of the resource as :class:`bytes`. :class:`Loaders <importlib.abc.Loader>` that wish to support resource reading should implement a ``get_resource_reader(fullname)`` method as specified by :class:`importlib.resources.abc.ResourceReader`. :mod:`importlib.resources` -- Package resource reading, opening and access An older, deprecated set of functions is still available, but is scheduled for removal in a future version of Python. The main drawback of these functions is that they do not support directories: they assume all resources are located directly within a *package*. Calls to this function can be replaced by:: Calls to this function can be replaced using :func:`as_file`:: Deprecated functions Exiting the context manager cleans up any temporary file created when the resource needs to be extracted from e.g. a zip file. Exiting the context manager cleans up any temporary file created when the resource was extracted from e.g. a zip file. For *resource* arguments of the functions below, you can pass in the name of a resource as a string or a :class:`path-like object <os.PathLike>`. Given a :class:`~importlib.resources.abc.Traversable` object representing a file, typically from :func:`importlib.resources.files`, return a context manager for use in a :keyword:`with` statement. The context manager provides a :class:`pathlib.Path` object. Open for binary reading the *resource* within *package*. Open for text reading the *resource* within *package*.  By default, the resource is opened for reading as UTF-8. Read and return the contents of *resource* within *package* as a ``str``. By default, the contents are read as strict UTF-8. Read and return the contents of the *resource* within *package* as ``bytes``. Represents an anchor for resources, either a :class:`module object <types.ModuleType>` or a module name as a string. Defined as ``Union[str, ModuleType]``. Resources are roughly akin to files inside directories, though it's important to keep in mind that this is just a metaphor.  Resources and packages **do not** have to exist as physical files and directories on the file system: for example, a package and its resources can be imported from a zip file using :py:mod:`zipimport`. Resources can be opened or read in either binary or text mode. Return ``True`` if there is a resource named *name* in the package, otherwise ``False``. This function does not consider directories to be resources. *package* is either a name or a module object which conforms to the ``Package`` requirements. Return an iterable over the named items within the package.  The iterable returns :class:`str` resources (e.g. files) and non-resources (e.g. directories).  The iterable does not recurse into subdirectories. Return the path to the *resource* as an actual file system path.  This function returns a context manager for use in a :keyword:`with` statement. The context manager provides a :class:`pathlib.Path` object. Returns a :class:`~importlib.resources.abc.Traversable` object representing the resource container (think directory) and its resources (think files). A Traversable may contain other containers (think subdirectories). The ``Package`` type is defined as ``Union[str, ModuleType]``. The ``Resource`` type is defined as ``Union[str, os.PathLike]``. The standalone backport of this module provides more information on `using importlib.resources <https://importlib-resources.readthedocs.io/en/latest/using.html>`_ and `migrating from pkg_resources to importlib.resources <https://importlib-resources.readthedocs.io/en/latest/migration.html>`_. This function returns a ``typing.TextIO`` instance, a text I/O stream open for reading. This module leverages Python's import system to provide access to *resources* within *packages*. This module provides functionality similar to `pkg_resources <https://setuptools.readthedocs.io/en/latest/pkg_resources.html>`_ `Basic Resource Access <https://setuptools.readthedocs.io/en/latest/pkg_resources.html#basic-resource-access>`_ without the performance overhead of that package.  This makes reading resources included in packages easier, with more stable and consistent semantics. Use ``as_file`` when the Traversable methods (``read_text``, etc) are insufficient and an actual file on the file system is required. Whenever a function accepts a ``Package`` argument, you can pass in either a :class:`module object <types.ModuleType>` or a module name as a string.  You can only pass module objects whose ``__spec__.submodule_search_locations`` is not ``None``. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2022-11-05 19:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 âèµæºâæ¯æ Python ä¸­ä¸æ¨¡åæåç¸å³èçæä»¶ç±»èµæºã èµæºå¯ä»¥ç´æ¥åå«å¨æä¸ªåä¸­ï¼åå«å¨æä¸ªåçå­ç®å½ä¸­ï¼ææ¯ä¸æä¸ªåå¤é¨çæ¨¡åç¸é»ã èµæºå¯ä»¥æ¯ææ¬æäºè¿å¶æ°æ®ã å æ­¤ï¼ä»ææ¯ä¸è¯´ Python åçæ¨¡åæºä»£ç æä»¶ (.py) åç¼è¯ç»ææä»¶ (pycache) å°±æ¯åå®éæåå«çèµæºã ä½æ¯ï¼å¨å®è·µä¸­ï¼èµæºä¸»è¦æ¯æåä½èä¸é¨å¬å¼çé Python æä»¶ã "package" å½¢åè¢«éå½åä¸º "anchor"ã "anchor" ç°å¨å¯ä»¥æ¯ä¸ä¸ªä¸ä¸ºåçæ¨¡åï¼å¦æè¢«çç¥åé»è®¤ä¸ºè°ç¨æ¹çæ¨¡åã ä¸ºä¿æå¼å®¹æ§ "package" ä»ç¶è¢«æ¥åä½ä¼å¼å DeprecationWarningã è¯·èèä»¥ä½ç½®åæ°æ¹å¼ä¼ å¥ anchor æä½¿ç¨ ``importlib_resources >= 5.10`` ä½ä¸ºéå¯¹æ§ç Python çå¼å®¹æ¥å£ã **æºä»£ç :** :source:`Lib/importlib/resources/__init__.py` *anchor* æ¯ä¸ä¸ªå¯éç :data:`Anchor`ã å¦æ anchor æ¯ä¸ä¸ªåï¼åä¼ä»è¿ä¸ªåè·åèµæºã å¦ææ¯ä¸ä¸ªæ¨¡åï¼åä¼ä»è¿ä¸ªæ¨¡åçç¸é»ä½ç½®è·åèµæºï¼å¨åä¸ä¸ªåæåçæ ¹ç®å½ä¸­ï¼ã å¦æçç¥äº anchorï¼åä¼ä½¿ç¨è°ç¨æ¹çæ¨¡åã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã *resource* æ¯è¦å¨ *package* åæå¼çèµæºåï¼ä¸è½åå«è·¯å¾åéç¬¦ï¼ä¹ä¸è½æå­èµæºï¼å³ä¸è½æ¯ç®å½ï¼ã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã *resource* æ¯è¦å¨ *package* åæå¼çèµæºåï¼ä¸è½åå«è·¯å¾åéç¬¦ï¼ä¹ä¸è½æå­èµæºï¼å³ä¸è½æ¯ç®å½ï¼ã*encoding* å *errors* çå«ä¹ä¸åç½® :func:`open` çä¸æ ·ã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã *resource* æ¯è¦å¨ *package* åæå¼çèµæºåï¼ä¸è½åå«è·¯å¾åéç¬¦ï¼ä¹ä¸è½æå­èµæºï¼å³ä¸è½æ¯ç®å½ï¼ã*encoding* å *errors* çå«ä¹ä¸åç½® :func:`open` çä¸æ ·ãèµæºåå®¹å°ä»¥ :class:`str` çå½¢å¼è¿åã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã *resource* æ¯è¦å¨ *package* åæå¼çèµæºåï¼ä¸è½åå«è·¯å¾åéç¬¦ï¼ä¹ä¸è½æå­èµæºï¼å³ä¸è½ä¸ºç®å½ï¼ãæ¬å½æ°å°è¿åä¸ä¸ª ``typing.BinaryIO`` å®ä¾ä»¥ä¾è¯»åï¼å³ä¸ä¸ªå·²æå¼çäºè¿å¶ I/O æµã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã *resource* æ¯è¦å¨ *package* åæå¼çèµæºåï¼ä¸è½åå«è·¯å¾åéç¬¦ï¼ä¹ä¸è½æå­èµæºï¼å³ä¸è½æ¯ç®å½ï¼ãèµæºåå®¹ä»¥ :class:`bytes` çå½¢å¼è¿åã æ³è¦æ¯æèµæºè¯»åç :class:`å è½½å¨ <importlib.abc.Loader>` åºå½å®ç° :class:`importlib.resources.abc.ResourceReader` ä¸­è§å®ç ``get_resource_reader(fullname)`` æ¹æ³ã :mod:`importlib.resources` -- åèµæºçè¯»åãæå¼åè®¿é® ä¸ç»æ§å¼çï¼å·²è¢«å¼ç¨çå½æ°ä»ç¶å¯ç¨ï¼ä½é¢è®¡ä¼å¨æªæ¥ç Python çæ¬ä¸­è¢«ç§»é¤ã è¿äºå½æ°çä¸»è¦ç¼ºç¹æ¯å®ä»¬ä¸æ¯æç®å½ï¼å®ä»¬åå®ææèµæºé½ç´æ¥ä½äº *package* ä¹ä¸ã å¯¹æ­¤å½æ°çè°ç¨å¯ä»¥è¢«æ¿æ¢ä¸º:: å¯¹æ­¤å½æ°çè°ç¨å¯ä»¥ä½¿ç¨ :func:`as_file` æ¥æ¿æ¢:: å¼ç¨çå½æ° éåºä¸ä¸æç®¡çç¨åºæ¶ï¼å¯ä»¥æ¸çææä¸´æ¶æä»¶ï¼æ¯å¦ä»åç¼©æä»¶ä¸­æåèµæºæ¶åå»ºçé£äºæä»¶ã éåºä¸ä¸æç®¡çç¨åºæ¶ï¼å¯ä»¥æ¸çææä¸´æ¶æä»¶ï¼æ¯å¦ä»åç¼©æä»¶ä¸­æåèµæºæ¶åå»ºçé£äºæä»¶ã å¯¹äºä¸åå½æ°ç *resource* åæ°ï¼ä½ å¯ä»¥ä¼ å¥å­ç¬¦ä¸²å½¢å¼çèµæºåç§°æ :class:`è·¯å¾ç±»å¯¹è±¡ <os.PathLike>`ã ç»åºä»£è¡¨æä¸ªæä»¶ç :class:`~importlib.resources.abc.Traversable` å¯¹è±¡ï¼éå¸¸æ¯æ¥èª :func:`importlib.resources.files`ï¼è¿åä¸ä¸ªä¸ä¸æç®¡çå¨ä»¥ä¾ :keyword:`with` è¯­å¥ä½¿ç¨ã è¯¥ä¸ä¸æç®¡çå¨æä¾ä¸ä¸ª :class:`pathlib.Path` å¯¹è±¡ã ä»¥äºè¿å¶è¯»æ¹å¼æå¼ *package* åç *resource*ã ä»¥ææ¬è¯»æ¹å¼æå¼ *package* åç *resource*ãé»è®¤æåµä¸ï¼èµæºå°ä»¥ UTF-8 æ ¼å¼æå¼ä»¥ä¾è¯»åã è¯»åå¹¶è¿å *package* ä¸­ *resource* çåå®¹ï¼æ ¼å¼ä¸º ``str``ãé»è®¤æåµä¸ï¼èµæºåå®¹å°ä»¥ä¸¥æ ¼ç UTF-8 æ ¼å¼è¯»åã è¯»åå¹¶è¿å *package* ä¸­ç *resource* åå®¹ï¼æ ¼å¼ä¸º ``bytes``ã ä»£è¡¨èµæºçéç¹ï¼å¯ä»¥æ¯ä¸ä¸ª :class:`æ¨¡åå¯¹è±¡ <types.ModuleType>` æå­ç¬¦ä¸²å½¢å¼çæ¨¡ååç§°ä¸ã å®ä¹ä¸º ``Union[str, ModuleType]``ã èµæºå¤§è´ç¸å½äºç®å½åçæä»¶ï¼ä¸è¿éè¦è®°ä½è¿åªæ¯ä¸ä¸ªæ¯å»ã èµæºåå **ä¸æ¯** å¿é¡»å¦æä»¶ç³»ç»ä¸çç©çæä»¶åç®å½é£æ ·å­å¨çï¼ä¾å¦ï¼ä¸ä¸ªååå¶èµæºå¯ä½¿ç¨ :py:mod:`zipimport` ä»ä¸ä¸ª ZIP æä»¶å¯¼å¥ã èµæºå¯ä»¥ä½¿ç¨äºè¿å¶æææ¬æ¨¡å¼æå¼ã å¦æåä¸­å­å¨åä¸º *name* çèµæºåè¿å ``True``ï¼å¦åè¿å ``False``ã æ­¤å½æ°ä¸ä¼å°ç®å½è§ä¸ºèµæºã *package* æ¯ååæç¬¦å ``Package`` è¦æ±çæ¨¡åå¯¹è±¡ã è¿åä¸ä¸ªç¨äºéååååå½åé¡¹çå¯è¿­ä»£å¯¹è±¡ãè¯¥å¯è¿­ä»£å¯¹è±¡å°è¿å :class:`str` èµæºï¼å¦æä»¶ï¼åéèµæºï¼å¦ç®å½ï¼ãè¯¥è¿­ä»£å¨ä¸ä¼éå½è¿å¥å­ç®å½ã è¿å *resource* å®éçæä»¶ç³»ç»è·¯å¾ãæ¬å½æ°è¿åä¸ä¸ªä¸ä¸æç®¡çå¨ï¼ä»¥ä¾ :keyword:`with` è¯­å¥ä¸­ä½¿ç¨ãä¸ä¸æç®¡çå¨æä¾ä¸ä¸ª :class:`pathlib.Path` å¯¹è±¡ã è¿åä¸ä¸ªä»£è¡¨èµæºå®¹å¨ï¼ç¸å½äºç®å½ï¼åå¶èµæºï¼ç¸å½äºæä»¶ï¼ç :class:`~importlib.resources.abc.Traversable` å¯¹è±¡ã Traversable å¯ä»¥åå«å¶ä»å®¹å¨ï¼ç¸å½äºå­ç®å½ï¼ã ``Package`` ç±»åæ¯ä½ä¸º ``Union[str, ModuleType]`` å®ä¹çã ``Resource`` ç±»åæ¯ä½ä¸º ``Union[str, os.PathLike]`` å®ä¹çã æ­¤æ¨¡åçç¬ç«åä¸ç§»æ¤çæ¬å¨ `using importlib.resources <https://importlib-resources.readthedocs.io/en/latest/using.html>`_ å `migrating from pkg_resources to importlib.resources <https://importlib-resources.readthedocs.io/en/latest/migration.html>`_ ä¸­æä¾äºæ´å¤ä¿¡æ¯ã æ¬å½æ°è¿åä¸ä¸ª ``typing.TextIO`` å®ä¾ï¼å³ä¸ä¸ªæå¼çææ¬ I/O  æµå¯¹è±¡ä»¥ä¾è¯»åã æ­¤æ¨¡åè°æ´äº Python çå¯¼å¥ç³»ç»ä»¥ä¾¿æä¾å¯¹ *å* åé¨ç *èµæº* çè®¿é®ã æ¬æ¨¡åæä¾äºç±»ä¼¼äº `pkg_resources <https://setuptools.readthedocs.io/en/latest/pkg_resources.html>`_ `Basic Resource Access <https://setuptools.readthedocs.io/en/latest/pkg_resources.html#basic-resource-access>`_ çåè½èæ²¡æé£æ ·é«çæ§è½å¼éã è¿ä½¿å¾è¯»ååä¸­çèµæºæ´ä¸ºå®¹æï¼å¹¶å·ææ´ä¸ºç¨³å®åä¸è´çè¯­ä¹ã å¦æ Traversable æ¹æ³ï¼``read_text`` ç­ï¼ä¸å¤ç¨ï¼éè¦æä»¶ç³»ç»ä¸­çå®éæä»¶æ¶ï¼è¯·ä½¿ç¨ ``as_file``ã åªè¦ä¸ä¸ªå½æ°æ¥å ``Package`` åæ°ï¼ä½ å°±å¯ä»¥ä¼ å¥ :class:`æ¨¡åå¯¹è±¡ <types.ModuleType>` æå­ç¬¦ä¸²å½¢å¼çæ¨¡ååç§°ã ä½ åªè½ä¼ å¥ ``__spec__.submodule_search_locations`` ä¸ä¸º ``None`` çæ¨¡åå¯¹è±¡ã 