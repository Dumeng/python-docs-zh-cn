Þ    i      d              ¬  '   ­  ü   Õ  C   Ò  (     =   ?  :   }  .   ¸     ç    ú    
  |     p     (   ù  S   "  E   v     ¼  C   Ø  <        Y  
   o     z  Æ   ú  G   Á  D   	  ð   N  ]   ?  [     C   ù  -   =  2   k        Ò   ?  Ê     W   Ý     5  ;   Ô  J     J   [  (   ¦  M   Ï  3     5   Q  B     0   Ê  k   û  ~   g  5   æ      º   +  1   æ  i             !  3   <  /  p  :      A   Û  §     s   Å  À   9  °   ú  V   «  =      _   @   >       6   ß      !  f   !     ÿ!     "  #   7"  U   ["  7   ±"  i   é"  Q   S#  O   ¥#     õ#     |$  [   %  z   q%  I   ì%  4   6&    k&  4  '  Q   À(  [   )     n)  r   *  r   *    ó*  j  },  !  è-  Q   
/  ê   \/      G0  R   h0  Ñ   »0  t   1     2  %  2     ¨3  Ë   F4     5     $5  ½  ,5  %   ê6  ç   7  8   ø7  &   18  <   X8  4   8  -   Ê8     ø8  ô   9  ò    :  r   ó:  s   f;     Ú;  M   ó;  0   A<     r<  6   <  4   ¼<     ñ<     =  r   =  ³   =  6   4>  E   k>  ö   ±>  z   ¨?  [   #@  9   @  )   ¹@  '   ã@  ¨   A  ¾   ´A  Å   sB  [   9C     C  :   'D  V   bD  B   ¹D  !   üD  L   E  6   kE  6   ¢E  9   ÙE  !   F  d   5F  y   F  !   G    6G  »   8H  .   ôH  U   #I     yI      J  -   J    DJ  4   LK  =   K  x   ¿K  c   8L  ¢   L  }   ?M  Q   ½M  ;   N  N   KN  >   N  &   ÙN  s    O  _   tO     ÔO     òO  #   P  O   0P  7   P  [   ¸P  L   Q  H   aQ  }   ªQ     (R  a   ÁR  q   #S  B   S  *   ØS    T    U  V   1V  V   V     ßV  q   hW  j   ÚW  ~  EX  E  ÄY  ÿ   
[  N   
\  ½   Y\  $   ]  R   <]  Ú   ]  l   j^     ×^    [_     s`  »   a     Àa     Ía   **Source code:** :source:`Lib/types.py` *metaclass* is the appropriate metaclass, *namespace* is the prepared class namespace and *kwds* is an updated copy of the passed in *kwds* argument with any ``'metaclass'`` entry removed. If no *kwds* argument is passed in, this will be an empty dict. :mod:`types` --- Dynamic type creation and names for built-in types :pep:`3115` - Metaclasses in Python 3000 :pep:`560` - Core support for typing module and generic types :pep:`585` - Type Hinting Generics In Standard Collections :ref:`Generic Alias Types<types-genericalias>` :ref:`metaclasses` A future version of Python may stop setting this attribute by default. To guard against this potential change, preferably read from the :attr:`__spec__` attribute instead or use ``getattr(module, "__loader__", None)`` if you explicitly need to use this attribute. A future version of Python may stop setting this attribute by default. To guard against this potential change, preferably read from the :attr:`__spec__` attribute instead or use ``getattr(module, "__package__", None)`` if you explicitly need to use this attribute. A record of the module's import-system-related state. Expected to be an instance of :class:`importlib.machinery.ModuleSpec`. A simple :class:`object` subclass that provides attribute access to its namespace, as well as a meaningful repr. Additional Utility Classes and Functions Attribute order in the repr changed from alphabetical to insertion (like ``dict``). Calculates the appropriate metaclass and creates the class namespace. Coroutine Utility Functions Creates a class object dynamically using the appropriate metaclass. Defaults to ``None``. Previously the attribute was optional. Dynamic Type Creation Examples:: Finally, it provides some additional type-related utility classes and functions that are not fundamental enough to be builtins. For classes that have an ``__orig_bases__`` attribute, this function returns the value of ``cls.__orig_bases__``. For classes without the ``__orig_bases__`` attribute, ``cls.__bases__`` is returned. Full details of the class creation process supported by these functions If *gen_func* is a generator function, it will be modified in-place. If *gen_func* is not a generator function, it will be wrapped. If it returns an instance of :class:`collections.abc.Generator`, the instance will be wrapped in an *awaitable* proxy object.  All other types of objects will be returned as is. If you instantiate any of these types, note that signatures may vary between Python versions. In other implementations of Python, this type may be identical to ``GetSetDescriptorType``. In-depth documentation on instances of :class:`!types.GenericAlias` Introduced the ``__prepare__`` namespace hook Introducing the :class:`!types.GenericAlias` class It also defines names for some object types that are used by the standard Python interpreter, but not exposed as builtins like :class:`int` or :class:`str` are. Note that the audited arguments may not match the names or positions required by the initializer.  The audit event only occurs for direct instantiation of code objects, and is not raised for normal compilation. Raises an :ref:`auditing event <auditing>` ``code.__new__`` with arguments ``code``, ``filename``, ``name``, ``argcount``, ``posonlyargcount``, ``kwonlyargcount``, ``nlocals``, ``stacksize``, ``flags``. Raises an :ref:`auditing event <auditing>` ``function.__new__`` with argument ``code``. Read-only proxy of a mapping. It provides a dynamic view on the mapping's entries, which means that when the mapping changes, the view reflects these changes. Resolve MRO entries dynamically as specified by :pep:`560`. Return ``True`` if the underlying mapping has a key *key*, else ``False``. Return a copy of the code object with new values for the specified fields. Return a hash of the underlying mapping. Return a new view of the underlying mapping's items (``(key, value)`` pairs). Return a new view of the underlying mapping's keys. Return a new view of the underlying mapping's values. Return a reverse iterator over the keys of the underlying mapping. Return a shallow copy of the underlying mapping. Return an iterator over the keys of the underlying mapping.  This is a shortcut for ``iter(proxy.keys())``. Return the item of the underlying mapping with key *key*.  Raises a :exc:`KeyError` if *key* is not in the underlying mapping. Return the number of items in the underlying mapping. Return the tuple of objects originally given as the bases of *cls* before the :meth:`~object.__mro_entries__` method has been called on any bases (following the mechanisms laid out in :pep:`560`). This is useful for introspecting :ref:`Generics <user-defined-generics>`. Return the value for *key* if *key* is in the underlying mapping, else *default*.  If *default* is not given, it defaults to ``None``, so that this method never raises a :exc:`KeyError`. Route attribute access on a class to __getattr__. See :ref:`the language reference <frame-objects>` for details of the available attributes and operations. See :ref:`the language reference <traceback-objects>` for details of the available attributes and operations, and guidance on creating tracebacks dynamically. Standard Interpreter Types Standard names are defined for the following types: The *exec_body* argument is a callback that is used to populate the freshly created class namespace. It should accept the class namespace as its sole argument and update the namespace directly with the class contents. If no callback is provided, it has the same effect as passing in ``lambda ns: None``. The :term:`docstring` of the module. Defaults to ``None``. The :term:`loader` which loaded the module. Defaults to ``None``. The arguments are the components that make up a class definition header: the class name, the base classes (in order) and the keyword arguments (such as ``metaclass``). The audit event only occurs for direct instantiation of function objects, and is not raised for normal compilation. The default value for the ``namespace`` element of the returned tuple has changed.  Now an insertion-order-preserving mapping is used when the metaclass does not have a ``__prepare__`` method. The first three arguments are the components that make up a class definition header: the class name, the base classes (in order), the keyword arguments (such as ``metaclass``). The name of the module. Expected to match :attr:`importlib.machinery.ModuleSpec.name`. The return value is a 3-tuple: ``metaclass, namespace, kwds`` The type for cell objects: such objects are used as containers for a function's free variables. The type for code objects such as returned by :func:`compile`. The type is roughly equivalent to the following code:: The type of *bound* methods of some built-in data types and base classes. For example it is the type of :code:`object().__str__`. The type of *unbound* class methods of some built-in data types such as ``dict.__dict__['fromkeys']``. The type of :data:`Ellipsis`. The type of :data:`None`. The type of :data:`NotImplemented`. The type of :ref:`parameterized generics <types-genericalias>` such as ``list[int]``. The type of :ref:`union type expressions<types-union>`. The type of :term:`asynchronous generator`-iterator objects, created by asynchronous generator functions. The type of :term:`coroutine` objects, created by :keyword:`async def` functions. The type of :term:`generator`-iterator objects, created by generator functions. The type of :term:`modules <module>`. The constructor takes the name of the module to be created and optionally its :term:`docstring`. The type of built-in functions like :func:`len` or :func:`sys.exit`, and methods of built-in classes.  (Here, the term "built-in" means "written in C".) The type of frame objects such as found in ``tb.tb_frame`` if ``tb`` is a traceback object. The type of methods of some built-in data types and base classes such as :meth:`object.__init__` or :meth:`object.__lt__`. The type of methods of some built-in data types such as :meth:`str.join`. The type of methods of user-defined class instances. The type of objects defined in extension modules with ``PyGetSetDef``, such as ``FrameType.f_locals`` or ``array.array.typecode``.  This type is used as descriptor for object attributes; it has the same purpose as the :class:`property` type, but for classes defined in extension modules. The type of objects defined in extension modules with ``PyMemberDef``, such as ``datetime.timedelta.days``.  This type is used as descriptor for simple C data members which use standard conversion functions; it has the same purpose as the :class:`property` type, but for classes defined in extension modules. The type of traceback objects such as found in ``sys.exception().__traceback__``. The type of user-defined functions and functions created by :keyword:`lambda`  expressions. This allows one to have properties active on an instance, and have virtual attributes on the class with the same name (see :class:`enum.Enum` for an example). This attribute is to match :attr:`importlib.machinery.ModuleSpec.loader` as stored in the :attr:`__spec__` object. This attribute is to match :attr:`importlib.machinery.ModuleSpec.parent` as stored in the :attr:`__spec__` object. This function looks for items in *bases* that are not instances of :class:`type`, and returns a tuple where each such object that has an :meth:`~object.__mro_entries__` method is replaced with an unpacked result of calling this method.  If a *bases* item is an instance of :class:`type`, or it doesn't have an :meth:`!__mro_entries__` method, then it is included in the return tuple unchanged. This function transforms a :term:`generator` function into a :term:`coroutine function` which returns a generator-based coroutine. The generator-based coroutine is still a :term:`generator iterator`, but is also considered to be a :term:`coroutine` object and is :term:`awaitable`.  However, it may not necessarily implement the :meth:`~object.__await__` method. This is a descriptor, used to define attributes that act differently when accessed through an instance and through a class.  Instance access remains normal, but access to an attribute through a class will be routed to the class's __getattr__ method; this is done by raising AttributeError. This module defines utility functions to assist in dynamic creation of new types. This module provides names for many of the types that are required to implement a Python interpreter. It deliberately avoids including some of the types that arise only incidentally during processing such as the ``listiterator`` type. This type can now be subclassed. Typical use of these names is for :func:`isinstance` or :func:`issubclass` checks. Unlike :class:`object`, with ``SimpleNamespace`` you can add and remove attributes.  If a ``SimpleNamespace`` object is initialized with keyword arguments, those are directly added to the underlying namespace. Updated to support the new union (``|``) operator from :pep:`584`, which simply delegates to the underlying mapping. Use :func:`importlib.util.module_from_spec` to create a new module if you wish to set the various import-controlled attributes. Which :term:`package` a module belongs to. If the module is top-level (i.e. not a part of any specific package) then the attribute should be set to ``''``, else it should be set to the name of the package (which can be :attr:`__name__` if the module is a package itself). Defaults to ``None``. ``SimpleNamespace`` may be useful as a replacement for ``class NS: pass``. However, for a structured record type use :func:`~collections.namedtuple` instead. ``t_origin`` should be a non-parameterized generic class, such as ``list``, ``tuple`` or ``dict``.  ``t_args`` should be a :class:`tuple` (possibly of length 1) of types which parameterize ``t_origin``:: built-in function compile Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-04 12:28+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç :** :source:`Lib/types.py` *metaclass* æ¯éå½çåç±»ï¼*namespace* æ¯é¢å¤å¥½çç±»å½åç©ºé´è *kwds* æ¯æä¼ å¥ *kwds* åæ°ç§»é¤æ¯ä¸ª ``'metaclass'`` æ¡ç®åçå·²æ´æ°å¯æ¬ã å¦ææªä¼ å¥ *kwds* åæ°ï¼è¿å°ä¸ºä¸ä¸ªç©ºå­å¸ã :mod:`types` --- å¨æç±»ååå»ºååç½®ç±»ååç§° :pep:`3115` - Python 3000 ä¸­çåç±» :pep:`560` - å¯¹ typing æ¨¡ååæ³åç±»åçæ ¸å¿æ¯æ :pep:`585` - æ åå¤é¡¹éä¸­çç±»åæç¤ºæ³å :ref:`æ³ç¨å«åç±»å<types-genericalias>` :ref:`metaclasses` æªæ¥ç Python çæ¬å¯è½ä¼åæ­¢é»è®¤è®¾ç½®æ­¤å±æ§ã ä¸ºäºé¿åè¿ä¸ªæ½å¨ååçå½±åï¼å¦æä½ æç¡®å°éè¦ä½¿ç¨æ­¤å±æ§åæ¨èæ¹ä» :attr:`__spec__` å±æ§è¯»åææ¯ä½¿ç¨ ``getattr(module, "__loader__", None)``ã æªæ¥ç Python çæ¬å¯è½åæ­¢é»è®¤è®¾ç½®æ­¤å±æ§ã ä¸ºäºé¿åè¿ä¸ªæ½å¨ååçå½±åï¼å¦æä½ æç¡®å°éè¦ä½¿ç¨æ­¤å±æ§åæ¨èæ¹ä» :attr:`__spec__` å±æ§è¯»åææ¯ä½¿ç¨ ``getattr(module, "__package__", None)``ã æ¨¡åçå¯¼å¥ç³»ç»ç¸å³ç¶æçè®°å½ã åºå½æ¯ä¸ä¸ª :class:`importlib.machinery.ModuleSpec` çå®ä¾ã ä¸ä¸ªç®åç :class:`object` å­ç±»ï¼æä¾äºè®¿é®å¶å½åç©ºé´çå±æ§ï¼ä»¥åä¸ä¸ªææä¹ç reprã éå å·¥å·ç±»åå½æ° repr ä¸­çå±æ§é¡ºåºç±å­æ¯é¡ºåºæ¹ä¸ºæå¥é¡ºåº (ç±»ä¼¼ ``dict``)ã è®¡ç®éå½çåç±»å¹¶åå»ºç±»å½åç©ºé´ã åç¨å·¥å·å½æ° ä½¿ç¨éå½çåç±»å¨æå°åå»ºä¸ä¸ªç±»å¯¹è±¡ã é»è®¤ä¸º ``None``ã ä¹åè¯¥å±æ§ä¸ºå¯éé¡¹ã å¨æç±»ååå»º ç¤ºä¾:: æåï¼å®è¿é¢å¤æä¾äºä¸äºç±»åç¸å³ä½éè¦ç¨åº¦ä¸è¶³ä»¥ä½ä¸ºåç½®å¯¹è±¡çå·¥å·ç±»åå½æ°ã å¯¹äºå·æ ``__orig_bases__`` å±æ§çç±»ï¼æ­¤å½æ°å°è¿å ``cls.__orig_bases__`` çå¼ã å¯¹äºæ²¡æ ``__orig_bases__`` å±æ§çç±»ï¼åå°è¿å ``cls.__bases__``ã è¿äºå½æ°ææ¯æçç±»åå»ºè¿ç¨çå®æ´ç»è å¦æ *gen_func* æ¯ä¸ä¸ªçæå¨å½æ°ï¼å®å°è¢«åå°ä¿®æ¹ã å¦æ *gen_func* ä¸æ¯ä¸ä¸ªçæå¨å½æ°ï¼åå®ä¼è¢«åè£ã å¦æå®è¿åä¸ä¸ª :class:`collections.abc.Generator` çå®ä¾ï¼è¯¥å®ä¾å°è¢«åè£å¨ä¸ä¸ª *awaitable* ä»£çå¯¹è±¡ä¸­ã ææå¶ä»å¯¹è±¡ç±»åå°è¢«åæ ·è¿åã å¦æä½ è¦å®ä¾åè¿äºç±»åä¸­çä»»ä½ä¸ç§ï¼è¯·æ³¨æå¶ç­¾åå¨ä¸å Python çæ¬ä¹é´å¯è½åºç°ååã å¨ Python çå¶å®å®ç°ä¸­ï¼æ­¤ç±»åå¯è½ä¸ ``GetSetDescriptorType`` å®å¨ç¸åã æå³ :class:`!types.GenericAlias` å®ä¾çè¯¦ç»ææ¡£ å¼å¥ ``__prepare__`` å½åç©ºé´é©å­ å¼å¥ :class:`!types.GenericAlias` ç±» å®è¿ä¸ºæäºå¯¹è±¡ç±»åå®ä¹äºåç§°ï¼è¿äºåç§°ç±æ å Python è§£éå¨æä½¿ç¨ï¼ä½å¹¶ä¸ååç½®ç :class:`int` æ :class:`str` é£æ ·å¯¹å¤å¬å¼ã è¯·æ³¨æè¢«å®¡è®¡çåæ°å¯è½ä¸åå§åä»£ç æè¦æ±çåç§°æä½ç½®ä¸ç¸å¹éã å®¡è®¡äºä»¶åªä¼è¢«ä»£ç å¯¹è±¡çç´æ¥å®ä¾åå¼åï¼èä¸ä¼è¢«æ®éç¼è¯æå¼åã å¼å :ref:`å®¡è®¡äºä»¶ <auditing>` ``code.__new__`` éå¸¦åæ° ``code``, ``filename``, ``name``, ``argcount``, ``posonlyargcount``, ``kwonlyargcount``, ``nlocals``, ``stacksize``, ``flags``ã å¼åä¸ä¸ª :ref:`å®¡è®¡äºä»¶ <auditing>` ``function.__new__``ï¼éå¸¦åæ° ``code``ã ä¸ä¸ªæ å°çåªè¯»ä»£çã å®æä¾äºå¯¹æ å°æ¡ç®çå¨æè§å¾ï¼è¿æå³çå½æ å°åçæ¹åæ¶ï¼è§å¾ä¼åæ è¿äºæ¹åã å¨æå°è§£æ MRO æ¡ç®ï¼å·ä½æè¿°è§ :pep:`560`ã å¦æä¸å±çæ å°ä¸­å­å¨é® *key* åè¿å ``True``ï¼å¦åè¿å ``False``ã è¿åä»£ç å¯¹è±¡çä¸ä¸ªå¯æ¬ï¼ä½¿ç¨æå®çæ°å­æ®µå¼ã è¿åä¸å±æ å°çåå¸å¼ã è¿åç±ä¸å±æ å°çé¡¹ (``(é®, å¼)`` å¯¹) ç»æçä¸ä¸ªæ°è§å¾ã è¿åç±ä¸å±æ å°çé®ç»æçä¸ä¸ªæ°è§å¾ã è¿åç±ä¸å±æ å°çå¼ç»æçä¸ä¸ªæ°è§å¾ã è¿åä¸ä¸ªåå«ä¸å±æ å°çé®çååè¿­ä»£å¨ã è¿åä¸å±æ å°çæµæ·è´ã è¿åç±ä¸å±æ å°çé®ä¸ºåç´ çè¿­ä»£å¨ã è¿æ¯ ``iter(proxy.keys())`` çå¿«æ·æ¹å¼ã è¿åä¸å±çæ å°ä¸­ä»¥ *key* ä¸ºé®çé¡¹ã å¦æä¸å±çæ å°ä¸­ä¸å­å¨é® *key* åå¼å :exc:`KeyError`ã è¿åä¸å±æ å°ä¸­çé¡¹æ°ã å¨ :meth:`~object.__mro_entries__` æ¹æ³å¨ä»»ä½åºç±»ä¸è¢«è°ç¨ä¹åè¿åæåæ¯ä½ä¸º *cls* çåºç±»ç»åºçå¯¹è±¡åç»ï¼æ ¹æ® :pep:`560` ææè¿°çæºå¶ï¼ã è¿å¨å¯¹ :ref:`æ³å <user-defined-generics>` è¿è¡åçæ¶å¾æç¨å¤ã å¦æ *key* å­å¨äºä¸å±æ å°ä¸­åè¿å *key* çå¼ï¼å¦åè¿å *default*ã å¦æ *default* æªç»åºåé»è®¤ä¸º ``None``ï¼å èæ­¤æ¹æ³ç»ä¸ä¼å¼å :exc:`KeyError`ã å¨ç±»ä¸è®¿é® __getattr__ çè·¯ç±å±æ§ã è¯·æ¥ç :ref:`è¯­è¨åè <frame-objects>` äºè§£å¯ç¨å±æ§åæä½çç»èã è¯·æ¥ç :ref:`è¯­è¨åè <traceback-objects>` äºè§£å¯ç¨å±æ§åæä½çç»èï¼ä»¥åå¨æå°åå»ºåæº¯å¯¹è±¡çæåã æ åè§£éå¨ç±»å ä»¥ä¸ç±»åæç¸åºçæ ååç§°å®ä¹ï¼ *exec_body* åæ°æ¯ä¸ä¸ªåè°å½æ°ï¼ç¨äºå¡«åæ°åå»ºç±»çå½åç©ºé´ã å®åºå½æ¥åç±»å½åç©ºé´ä½ä¸ºå¶å¯ä¸çåæ°å¹¶ä½¿ç¨ç±»åå®¹ç´æ¥æ´æ°å½åç©ºé´ã  å¦ææªæä¾åè°å½æ°ï¼åå®å°±ç­æäºä¼ å¥ ``lambda ns: None``ã æ¨¡åç :term:`docstring`ã é»è®¤ä¸º ``None``ã ç¨äºå è½½æ¨¡åç :term:`loader`ã é»è®¤ä¸º ``None``ã åæ°æ¯ç»æç±»å®ä¹å¤´çé¨ä»¶ï¼ç±»åç§°ï¼åºç±» (æåºæå) ä»¥åå³é®å­åæ° (ä¾å¦ ``metaclass``)ã æ­¤å®¡è®¡äºä»¶åªä¼è¢«å½æ°å¯¹è±¡çç´æ¥å®ä¾åå¼åï¼èä¸ä¼è¢«æ®éç¼è¯æå¼åã æè¿ååç»ä¸­ ``namespace`` åç´ çé»è®¤å¼å·²è¢«æ¹åã ç°å¨å½åç±»æ²¡æ ``__prepare__`` æ¹æ³æ¶å°ä¼ä½¿ç¨ä¸ä¸ªä¿çæå¥é¡ºåºçæ å°ã åä¸ä¸ªåæ°æ¯ç»æç±»å®ä¹å¤´çé¨ä»¶ï¼ç±»åç§°ï¼åºç±» (æåºæå)ï¼å³é®å­åæ° (ä¾å¦ ``metaclass``)ã æ¨¡åçåç§°ã åºå½è½å¹é :attr:`importlib.machinery.ModuleSpec.name`ã è¿åå¼æ¯ä¸ä¸ª 3 åç»: ``metaclass, namespace, kwds`` ååå¯¹è±¡çç±»åï¼è¿ç§å¯¹è±¡è¢«ç¨ä½å½æ°ä¸­èªç±åéçå®¹å¨ã ä»£ç å¯¹è±¡çç±»åï¼ä¾å¦ :func:`compile` çè¿åå¼ã æ­¤ç±»åå¤§è´ç­ä»·äºä»¥ä¸ä»£ç :: æäºåç½®æ°æ®ç±»åååºç±»ç *ç»å®* æ¹æ³çç±»åã ä¾å¦ :code:`object().__str__` æå±çç±»åã æäºåç½®æ°æ®ç±»å *éç»å®* ç±»æ¹æ³ä¾å¦ ``dict.__dict__['fromkeys']`` çç±»åã :data:`Ellipsis` çç±»åã :data:`None` çç±»åã :data:`NotImplemented` çç±»åã :ref:`å½¢ååæ³å <types-genericalias>` çç±»åï¼ä¾å¦ ``list[int]``ã :ref:`åå¹¶ç±»åè¡¨è¾¾å¼ <types-union>` çç±»åã :term:`asynchronous generator` è¿­ä»£å¨å¯¹è±¡çç±»åï¼ç±å¼æ­¥çæå¨å½æ°åå»ºã :term:`coroutine` å¯¹è±¡çç±»åï¼ç± :keyword:`async def` å½æ°åå»ºã :term:`generator` è¿­ä»£å¨å¯¹è±¡çç±»åï¼ç±çæå¨å½æ°åå»ºã :term:`æ¨¡å <module>` çç±»åã æé å¨æ¥åå¾åå»ºæ¨¡åçåç§°å¹¶ä»¥å¶ :term:`docstring` ä½ä¸ºå¯éåæ°ã åç½®å½æ°ä¾å¦ :func:`len` æ :func:`sys.exit` ä»¥ååç½®ç±»æ¹æ³çç±»åã ï¼è¿éæè¯´çâåç½®âæ¯æâä»¥ C è¯­è¨ç¼åâãï¼ å¸§å¯¹è±¡çç±»åï¼ä¾å¦ ``tb.tb_frame`` ä¸­çå¯¹è±¡ï¼å¶ä¸­ ``tb`` æ¯ä¸ä¸ªåæº¯å¯¹è±¡ã æäºåç½®æ°æ®ç±»åååºç±»çæ¹æ³çç±»åï¼ä¾å¦ :meth:`object.__init__` æ :meth:`object.__lt__`ã æäºåç½®æ°æ®ç±»åæ¹æ³ä¾å¦ :meth:`str.join` çç±»åã ç¨æ·èªå®ä¹ç±»å®ä¾æ¹æ³çç±»åã ä½¿ç¨ ``PyGetSetDef`` å¨æ©å±æ¨¡åä¸­å®ä¹çå¯¹è±¡çç±»åï¼ä¾å¦ ``FrameType.f_locals`` æ ``array.array.typecode``ã æ­¤ç±»åè¢«ç¨ä½å¯¹è±¡å±æ§çæè¿°å¨ï¼å®çç®çä¸ :class:`property` ç±»åç¸åï¼ä½ä¸é¨éå¯¹å¨æ©å±æ¨¡åä¸­å®ä¹çç±»ã ä½¿ç¨ ``PyMemberDef`` å¨æ©å±æ¨¡åä¸­å®ä¹çå¯¹è±¡çç±»åï¼ä¾å¦ ``datetime.timedelta.days``ã æ­¤ç±»åè¢«ç¨ä½ä½¿ç¨æ åè½¬æ¢å½æ°çç®å C æ°æ®æåçæè¿°å¨ï¼å®çç®çä¸ :class:`property` ç±»åç¸åï¼ä½ä¸é¨éå¯¹å¨æ©å±æ¨¡åä¸­å®ä¹çç±»ã åæº¯å¯¹è±¡çç±»åï¼å¦å¨ ``sys.exception().__traceback__`` ä¸­æ¾å°çä¸æ ·ã ç¨æ·èªå®ä¹å½æ°ä»¥åç± :keyword:`lambda`  è¡¨è¾¾å¼æåå»ºå½æ°çç±»åã è¿åè®¸æå¨å®ä¾ä¸æ¿æ´»çç¹æ§å±æ§ï¼åæ¶åæå¨ç±»ä¸çååèæå±æ§ (ä¸ä¸ªä¾å­è¯·åè§ :class:`enum.Enum`)ã æ­¤å±æ§ä¼å¹éä¿å­å¨ :attr:`__spec__` object å¯¹è±¡ä¸­ç :attr:`importlib.machinery.ModuleSpec.loader`ã æ­¤å±æ§ä¼å¹éä¿å­å¨ :attr:`__spec__` å¯¹è±¡ä¸­ç :attr:`importlib.machinery.ModuleSpec.parent`ã æ­¤å½æ°ä¼å¨ *bases* ä¸­æ¥æ¾ä¸æ¯ :class:`type` çå®ä¾çé¡¹ï¼å¹¶è¿åä¸ä¸ªåç»ï¼å¶ä¸­æ¯ä¸ªå·æ :meth:`~object.__mro_entries__` æ¹æ³çæ­¤ç§å¯¹è±¡å°è¢«æ¿æ¢ä¸ºè°ç¨è¯¥æ¹æ³è§£ååçç»æã å¦æä¸ä¸ª *bases* é¡¹æ¯ :class:`type` çå®ä¾ï¼æå®ä¸å·æ :meth:`!__mro_entries__` æ¹æ³ ï¼åå®å°ä¸å æ¹åå°è¢«åæ¬å¨è¿åçåç»ä¸­ã æ­¤å½æ°å¯å° :term:`generator` å½æ°è½¬æ¢ä¸ºä¸ä¸ªè¿ååºäºçæå¨çåç¨ç :term:`coroutine function`ã åºäºçæå¨çåç¨ä»ç¶å±äº :term:`generator iterator`ï¼ä½åæ¶åå¯è¢«è§ä¸º :term:`coroutine` å¯¹è±¡å¼ :term:`awaitable`ã ä¸è¿ï¼å®æ²¡æå¿è¦å®ç° :meth:`~object.__await__` æ¹æ³ã è¿æ¯ä¸ä¸ªæè¿°å¨ï¼ç¨äºå®ä¹éè¿å®ä¾ä¸éè¿ç±»è®¿é®æ¶å·æä¸åè¡ä¸ºçå±æ§ã å½å®ä¾è®¿é®æ¶ä¿ææ­£å¸¸è¡ä¸ºï¼ä½å½ç±»è®¿é®å±æ§æ¶å°è¢«è·¯ç±è³ç±»ç __getattr__ æ¹æ³ï¼è¿æ¯éè¿å¼å AttributeError æ¥å®æçã æ­¤æ¨¡åå®ä¹äºä¸äºå·¥å·å½æ°ï¼ç¨äºåå©å¨æåå»ºæ°çç±»åã æ­¤æ¨¡åä¸ºè®¸å¤ç±»åæä¾äºå®ç° Python è§£éå¨æè¦æ±çåç§°ã å®å»æå°é¿åäºåå«æäºä»å¨å¤çè¿ç¨ä¸­å¶ç¶åºç°çç±»åï¼ä¾å¦ ``listiterator`` ç±»åã æ­¤ç±»åç°å¨å¯ä»¥è¢«å­ç±»åã æ­¤ç§åç§°çå¸ååºç¨å¦ :func:`isinstance` æ :func:`issubclass` æ£æµã ä¸åäº :class:`object`ï¼å¯¹äº ``SimpleNamespace`` ä½ å¯ä»¥æ·»å åç§»é¤å±æ§ã å¦æä¸ä¸ª ``SimpleNamespace`` å¯¹è±¡ä½¿ç¨å³é®å­åæ°è¿è¡åå§åï¼è¿äºåæ°ä¼è¢«ç´æ¥å å¥ä¸å±å½åç©ºé´ã æ´æ°ä¸ºæ¯æ :pep:`584` ææ°å¢çåå¹¶ (``|``) è¿ç®ç¬¦ï¼å®ä¼ç®åå°å§æç»ä¸å±çæ å°ã å¦æä½ å¸æè®¾ç½®åç§ç±å¯¼å¥æ§å¶çå±æ§ï¼è¯·ä½¿ç¨ :func:`importlib.util.module_from_spec` æ¥åå»ºä¸ä¸ªæ°æ¨¡åã ä¸ä¸ªæ¨¡åæå±ç :term:`package`ã å¦ææ¨¡åä¸ºæé«å±çº§çï¼å³ä¸æ¯ä»»ä½ç¹å®åçç»æé¨åï¼åè¯¥å±æ§åºè®¾ä¸º ``''``ï¼å¦åå®åºè®¾ä¸ºç¹å®åçåç§° (å¦ææ¨¡åæ¬èº«ä¹æ¯ä¸ä¸ªåååç§°å¯ä»¥ä¸º :attr:`__name__`)ã é»è®¤ä¸º ``None``ã ``SimpleNamespace`` å¯è¢«ç¨äºæ¿ä»£ ``class NS: pass``ã ä½æ¯ï¼å¯¹äºç»æåè®°å½ç±»åååºæ¹ç¨ :func:`~collections.namedtuple`ã ``t_origin`` åºå½æ¯ä¸ä¸ªéå½¢ååçæ³åç±»ï¼ä¾å¦ ``list``, ``tuple`` æ ``dict``ã ``t_args`` åºå½æ¯ä¸ä¸ªå½¢åå ``t_origin`` ç :class:`tuple` (é¿åº¦å¯ä»¥ä¸º 1):: åç½®å½æ° ç¼è¯ 