Þ    H      \                p          "   ¦  !   É  X   ë      D  '   e  ]     '   ë  %     _   9  ;     @   Õ  c     A   z  
   ¼  ^   Ç  2   &	  @   Y	     	  .   ¸	  B   ç	  n   *
     
  v     Ë         Ý  `   ~  K   ß  p   +  i     µ     ?   ¼  â   ü      ß  ´     q   5  =  §    å  {   ó  ¯   o  P     ^   p  '   Ï  y   ÷  L   q  ñ   ¾  A   °  3   ò  %   &  ^   L  6  «  a  â  ?   D  N     `   Ó  V   4  d     >   ð  ;   /  =  k  Ñ   ©  e   {      á   :   î   1   )!  7   [!  ?   !  <   Ó!     "     "  ½  "  z   Ú#     U$  "   ê$  !   %  S   /%      %  '   ¤%  `   Ì%  '   -&  %   U&  Z   {&  :   Ö&  F   '  _   X'  D   ¸'     ý'  Y   
(  3   d(  7   (     Ð(  +   æ(  @   )  `   S)  û   ´)  q   °*  Æ   "+  ª   é+  b   ,  P   ÷,  c   H-  m   ¬-     .  B   ².  ì   õ.  ®   â/  ·   0  }   I1  2  Ç1  æ   ú2  i   á3  ¥   K4  E   ñ4  R   75  1   5     ¼5  J   E6  ì   6  M   }7  5   Ë7  *   8  [   ,8  7  8  <  À9  1   ý:  X   /;  Y   ;  K   â;  g   .<  =   <  ;   Ô<    =  Ó   &>  e   ú>     `?  @   m?  3   ®?  7   â?  ?   @  <   Z@     @     ¨@   :c:func:`PyType_GetSlot` can now accept all types. Previously, it was limited to :ref:`heap types <heap-types>`. :c:member:`~PyBufferProcs.bf_getbuffer` and :c:member:`~PyBufferProcs.bf_releasebuffer` are now available under the :ref:`limited API <limited-c-api>`. :c:member:`~PyTypeObject.tp_cache` :c:member:`~PyTypeObject.tp_dict` :c:member:`~PyTypeObject.tp_dictoffset` (use :c:macro:`Py_TPFLAGS_MANAGED_DICT` instead) :c:member:`~PyTypeObject.tp_mro` :c:member:`~PyTypeObject.tp_subclasses` :c:member:`~PyTypeObject.tp_vectorcall_offset` (see :ref:`PyMemberDef <pymemberdef-offsets>`) :c:member:`~PyTypeObject.tp_vectorcall` :c:member:`~PyTypeObject.tp_weaklist` :c:member:`~PyTypeObject.tp_weaklistoffset` (use :c:macro:`Py_TPFLAGS_MANAGED_WEAKREF` instead) :py:meth:`~object.__init__` is not called on the new class. :py:meth:`~object.__init_subclass__` is not called on any bases. :py:meth:`~object.__new__` is not called on the new class (and it must be set to ``type.__new__``). :py:meth:`~object.__set_name__` is not called on new descriptors. A slot ID. Array of :c:type:`PyType_Slot` structures. Terminated by the special slot value ``{0, NULL}``. Attempt to assign a version tag to the given type. Clear the internal lookup cache. Return the current version tag. Creating Heap-Allocated Types Each slot ID should be specified at most once. Equivalent to ``PyType_FromMetaclass(NULL, module, spec, bases)``. Extension modules should continue to use ``tp_dict``, directly or indirectly, when setting up their own types. Finalize a type object.  This should be called on all type objects to finish their initialization.  This function is responsible for adding inherited slots from a type's base class.  Return ``0`` on success, or return ``-1`` and sets an exception on error. Find the first superclass whose module was created from the given :c:type:`PyModuleDef` *def*, and return that module. Generic handler for the :c:member:`~PyTypeObject.tp_alloc` slot of a type object.  Use Python's default memory allocation mechanism to allocate a new instance and initialize all its contents to ``NULL``. Generic handler for the :c:member:`~PyTypeObject.tp_new` slot of a type object.  Create a new instance using the type's :c:member:`~PyTypeObject.tp_alloc` slot. If no module is associated with the given type, sets :py:class:`TypeError` and returns ``NULL``. If no module is found, raises a :py:class:`TypeError` and returns ``NULL``. If the *type* has an associated module but its state is ``NULL``, returns ``NULL`` without setting an exception. If the ``Py_TPFLAGS_HEAPTYPE`` flag is not set, :c:func:`PyType_FromSpecWithBases` sets it automatically. Invalidate the internal lookup cache for the type and all of its subtypes.  This function must be called after any manual modification of the attributes or base classes of the type. Name of the type, used to set :c:member:`PyTypeObject.tp_name`. Register *callback* as a type watcher. Return a non-negative integer ID which must be passed to future calls to :c:func:`PyType_Watch`. In case of error (e.g. no more watcher IDs available), return ``-1`` and set an exception. Return non-zero if the object *o* is a type object, but not a subtype of the standard type object.  Return 0 in all other cases.  This function always succeeds. Return non-zero if the object *o* is a type object, including instances of types derived from the standard type object.  Return 0 in all other cases. This function always succeeds. Return non-zero if the type object *o* sets the feature *feature*. Type features are denoted by single bit flags. Return the :c:member:`~PyTypeObject.tp_flags` member of *type*. This function is primarily meant for use with ``Py_LIMITED_API``; the individual flag bits are guaranteed to be stable across Python releases, but access to :c:member:`~PyTypeObject.tp_flags` itself is not part of the :ref:`limited API <limited-c-api>`. Return the function pointer stored in the given slot. If the result is ``NULL``, this indicates that either the slot is ``NULL``, or that the function was called with invalid parameters. Callers will typically cast the result pointer into the appropriate function type. Return the module object associated with the given type when the type was created using :c:func:`PyType_FromModuleAndSpec`. Return the state of the module object associated with the given type. This is a shortcut for calling :c:func:`PyModule_GetState()` on the result of :c:func:`PyType_GetModule`. Return the type's name. Equivalent to getting the type's ``__name__`` attribute. Return the type's qualified name. Equivalent to getting the type's ``__qualname__`` attribute. Return true if *a* is a subtype of *b*. Returns 1 if the type already had a valid version tag or a new one was assigned, or 0 if a new tag could not be assigned. See :c:member:`PyType_Slot.slot` for possible values of the *slot* argument. Slot IDs are named like the field names of the structures :c:type:`PyTypeObject`, :c:type:`PyNumberMethods`, :c:type:`PySequenceMethods`, :c:type:`PyMappingMethods` and :c:type:`PyAsyncMethods` with an added ``Py_`` prefix. For example, use: Slots in :c:type:`PyBufferProcs` may be set in the unlimited API. Slots other than ``Py_tp_doc`` may not be ``NULL``. Structure defining a type's behavior. Structure defining optional functionality of a type, containing a slot ID and a value pointer. The *bases* argument can be used to specify base classes; it can either be only one class or a tuple of classes. If *bases* is ``NULL``, the *Py_tp_bases* slot is used instead. If that also is ``NULL``, the *Py_tp_base* slot is used instead. If that also is ``NULL``, the new type derives from :class:`object`. The *module* argument can be used to record the module in which the new class is defined. It must be a module object or ``NULL``. If not ``NULL``, the module is associated with the new type and can later be retrieved with :c:func:`PyType_GetModule`. The associated module is not inherited by subclasses; it must be specified for each class individually. The C structure of the objects used to describe built-in types. The desired value of the slot. In most cases, this is a pointer to a function. The following fields cannot be set at all using :c:type:`PyType_Spec` and :c:type:`PyType_Slot`: The following functions and structs are used to create :ref:`heap types <heap-types>`. The function now accepts a single class as the *bases* argument and ``NULL`` as the ``tp_doc`` slot. The return type is now ``unsigned long`` rather than ``long``. This function calls :c:func:`PyType_Ready` on the new type. This function is intended to be used together with :c:func:`PyModule_GetState()` to get module state from slot methods (such as :c:member:`~PyTypeObject.tp_init` or :c:member:`~PyNumberMethods.nb_add`) and other places where a method's defining class cannot be passed using the :c:type:`PyCMethod` calling convention. This function only checks for actual subtypes, which means that :meth:`~class.__subclasscheck__` is not called on *b*.  Call :c:func:`PyObject_IsSubclass` to do the same check that :func:`issubclass` would do. This is the type object for type objects; it is the same object as :class:`type` in the Python layer. Type Objects Type flags, used to set :c:member:`PyTypeObject.tp_flags`. With the :c:macro:`Py_TPFLAGS_ITEMS_AT_END` flag. ``Py_nb_add`` to set :c:member:`PyNumberMethods.nb_add` ``Py_sq_length`` to set :c:member:`PySequenceMethods.sq_length` ``Py_tp_dealloc`` to set :c:member:`PyTypeObject.tp_dealloc` object type Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-28 14:13+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :c:func:`PyType_GetSlot` ç°å¨å¯ä»¥æ¥åææç±»åã å¨æ­¤ä¹åï¼å®è¢«éå¶ä¸º :ref:`å ç±»å <heap-types>`ã ç°å¨ :c:member:`~PyBufferProcs.bf_getbuffer` å :c:member:`~PyBufferProcs.bf_releasebuffer` å°å¨ :ref:`åé API <limited-c-api>` ä¸­å¯ç¨ã :c:member:`~PyTypeObject.tp_cache` :c:member:`~PyTypeObject.tp_dict` :c:member:`~PyTypeObject.tp_dictoffset` (æ¹ç¨ :c:macro:`Py_TPFLAGS_MANAGED_DICT`) :c:member:`~PyTypeObject.tp_mro` :c:member:`~PyTypeObject.tp_subclasses` :c:member:`~PyTypeObject.tp_vectorcall_offset` (åè§ :ref:`PyMemberDef <pymemberdef-offsets>`) :c:member:`~PyTypeObject.tp_vectorcall` :c:member:`~PyTypeObject.tp_weaklist` :c:member:`~PyTypeObject.tp_weaklistoffset` (æ¹ç¨ :c:macro:`Py_TPFLAGS_MANAGED_WEAKREF`) :py:meth:`~object.__init__` ä¸ä¼å¨æ°ç±»ä¸è¢«è°ç¨ã :py:meth:`~object.__init_subclass__` ä¸ä¼å¨ä»»ä½åºç±»ä¸è°ç¨ã :py:meth:`~object.__new__` ä¸ä¼å¨æ°ç±»ä¸è¢«è°ç¨ (å®å¿é¡»è¢«è®¾ä¸º ``type.__new__``)ã :py:meth:`~object.__set_name__` ä¸ä¼å¨æ°çæè¿°å¨ä¸è°ç¨ã æ§½ä½ IDã :c:type:`PyType_Slot` ç»æä½çæ°ç»ã ä»¥ç¹æ®æ§½ä½å¼ ``{0, NULL}`` æ¥ç»æã å°è¯ä¸ºç»å®çç±»åè®¾ç½®ä¸ä¸ªçæ¬æ ç­¾ã æ¸ç©ºåé¨æ¥æ¾ç¼å­ã è¿åå½åçæ¬æ ç­¾ã åå»ºå åéç±»å æ¯ä¸ªæ§½ä½ ID åºå½åªè¢«æå®ä¸æ¬¡ã ç­ä»·äº ``PyType_FromMetaclass(NULL, module, spec, bases)``ã æ©å±æ¨¡åå¨è®¾ç½®å®ä»¬èªå·±çç±»åæ¶åºå½ç»§ç»­ç´æ¥æé´æ¥å°ä½¿ç¨ ``tp_dict``ã æç»åä¸ä¸ªç±»åå¯¹è±¡ã è¿åºå½å¨ææç±»åå¯¹è±¡ä¸è°ç¨ä»¥å®æå®ä»¬çåå§åã æ­¤å½æ°ä¼è´è´£ä»ä¸ä¸ªç±»åçåºç±»æ·»å è¢«ç»§æ¿çæ§½ä½ã æåæ¶è¿å ``0``ï¼ææ¯å¨åºéæ¶è¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã æ¾å°æå±æ¨¡ååºäºç»å®ç :c:type:`PyModuleDef` *def* åå»ºçç¬¬ä¸ä¸ªä¸çº§ç±»ï¼å¹¶è¿åè¯¥æ¨¡åã ç±»åå¯¹è±¡ç :c:member:`~PyTypeObject.tp_alloc` æ§½ä½çéç¨å¤çå¥æã è¯·ä½¿ç¨ Python çé»è®¤åå­åéæºå¶æ¥åéä¸ä¸ªæ°çå®ä¾å¹¶å°å¶ææåå®¹åå§åä¸º ``NULL``ã ç±»åå¯¹è±¡ç :c:member:`~PyTypeObject.tp_new` æ§½ä½çéç¨å¤çå¥æã è¯·ä½¿ç¨ç±»åç :c:member:`~PyTypeObject.tp_alloc` æ§½ä½æ¥åå»ºä¸ä¸ªæ°çå®ä¾ã å¦ææ²¡æå³èå°ç»å®ç±»åçæ¨¡åï¼åè®¾ç½® :py:class:`TypeError` å¹¶è¿å ``NULL``ã å¦ææªæ¾å°æ¨¡åï¼åä¼å¼å :py:class:`TypeError` å¹¶è¿å ``NULL``ã å¦æ *type* æå³èçæ¨¡åä½å¶ç¶æä¸º ``NULL``ï¼åè¿å ``NULL`` ä¸ä¸è®¾ç½®å¼å¸¸ã å¦ææªè®¾ç½® ``Py_TPFLAGS_HEAPTYPE`` ææ ï¼å :c:func:`PyType_FromSpecWithBases` ä¼èªå¨è®¾ç½®å®ã ä½¿è¯¥ç±»ååå¶ææå­ç±»åçåé¨æ¥æ¾ç¼å­å¤±æã æ­¤å½æ°å¿é¡»å¨å¯¹è¯¥ç±»åçå±æ§æåºç±»è¿è¡ä»»ä½æå¨ä¿®æ¹ä¹åè°ç¨ã ç±»åçåç§°ï¼ç¨æ¥è®¾ç½® :c:member:`PyTypeObject.tp_name`ã æ³¨å *callback* ä½ä¸ºç±»åçè§å¨ã è¿åä¸ä¸ªéè´çæ´æ° IDï¼å®å¿é¡»ä¼ ç»å°æ¥å¯¹ :c:func:`PyType_Watch` çè°ç¨ã å¦æåºéï¼ä¾å¦æ²¡æè¶³å¤çå¯ç¨çè§å¨ IDï¼,åè¿å ``-1`` å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã å¦æå¯¹è±¡ *o* æ¯ä¸ä¸ªç±»åå¯¹è±¡ï¼ä½ä¸æ¯æ åç±»åå¯¹è±¡çå­ç±»ååè¿åéé¶å¼ã å¨ææå¶å®æåµä¸é½è¿å 0ã æ­¤å½æ°å°æ»æ¯æåæ§è¡ã å¦æå¯¹è±¡ *o* æ¯ä¸ä¸ªç±»åå¯¹è±¡ï¼åæ¬æ´¾çèªæ åç±»åå¯¹è±¡çç±»åå®ä¾åè¿åéé¶å¼ã å¨ææå¶å®æåµä¸é½è¿å 0ã æ­¤å½æ°å°æ»æ¯æåæ§è¡ã å¦æç±»åå¯¹è±¡ *o* è®¾ç½®äºç¹æ§ *feature* åè¿åéé¶å¼ã ç±»åç¹æ§æ¯ç¨åä¸ªæ¯ç¹ä½ææ æ¥è¡¨ç¤ºçã è¿å *type* ç :c:member:`~PyTypeObject.tp_flags` æåã æ­¤å½æ°ä¸»è¦æ¯éå ``Py_LIMITED_API`` ä½¿ç¨ï¼åç¬çææ ä½ä¼ç¡®ä¿å¨åä¸ª Python åå¸çä¹é´ä¿æç¨³å®ï¼ä½å¯¹ :c:member:`~PyTypeObject.tp_flags` æ¬èº«çè®¿é®å¹¶ä¸æ¯ :ref:`åé API <limited-c-api>` çä¸é¨åã è¿åå­å¨å¨ç»å®æ§½ä½ä¸­çå½æ°æéã å¦æç»æä¸º ``NULL``ï¼åè¡¨ç¤ºæèè¯¥æ§½ä½ä¸º ``NULL``ï¼æèè¯¥å½æ°è°ç¨ä¼ å¥äºæ æçå½¢åã è°ç¨æ¹éå¸¸è¦å°ç»ææéè½¬æ¢å°éå½çå½æ°ç±»åã è¿åå½ä½¿ç¨ :c:func:`PyType_FromModuleAndSpec` åå»ºç±»åæ¶å³èå°ç»å®ç±»åçæ¨¡åå¯¹è±¡ã è¿åå³èå°ç»å®ç±»åçæ¨¡åå¯¹è±¡çç¶æã è¿æ¯ä¸ä¸ªå¨ :c:func:`PyType_GetModule` çç»æä¸è°ç¨ :c:func:`PyModule_GetState()` çå¿«æ·æ¹å¼ã è¿åç±»ååç§°ã ç­åäºè·åç±»åç ``__name__`` å±æ§ã è¿åç±»åçéå®åç§°ã ç­åäºè·åç±»åç ``__qualname__`` å±æ§ã å¦æ *a* æ¯ *b* çå­ç±»ååè¿åçå¼ã å¦æç±»åå·²æåæ³ççæ¬æ ç­¾æå·²è®¾ç½®äºæ°ççæ¬æ ç­¾åè¿å 1ï¼æèå¦ææ æ³è®¾ç½®æ°çæ ç­¾åè¿å 0ã è¯·åé :c:member:`PyType_Slot.slot` æ¥çå¯ç¨ç *slot* åæ°å¼ã æ§½ä½ ID çç±»ååæ¯ç»æä½ :c:type:`PyTypeObject`, :c:type:`PyNumberMethods`, :c:type:`PySequenceMethods`, :c:type:`PyMappingMethods` å :c:type:`PyAsyncMethods` çå­æ®µåéå ä¸ä¸ª ``Py_`` åç¼ã ä¸¾ä¾æ¥è¯´ï¼ä½¿ç¨: :c:type:`PyBufferProcs` ä¸­çæ§½ä½å¯è½ä¼å¨ä¸åé API ä¸­è¢«è®¾ç½®ã ``Py_tp_doc`` ä»¥å¤çæ§½ä½åä¸å¯ä¸º ``NULL``ã å®ä¹ä¸ä¸ªç±»åçè¡ä¸ºçç»æä½ã å®ä¹ä¸ä¸ªç±»åçå¯éåè½çç»æä½ï¼åå«ä¸ä¸ªæ§½ä½ ID åä¸ä¸ªå¼æéã *bases* åæ°å¯è¢«ç¨æ¥æå®åºç±»ï¼å®å¯ä»¥æ¯åä¸ªç±»æç±å¤ä¸ªç±»ç»æçåç»ã å¦æ *bases* ä¸º ``NULL``ï¼åä¼æ¹ç¨ *Py_tp_bases* æ§½ä½ã å¦æè¯¥æ§½ä½ä¹ä¸º ``NULL``ï¼åä¼æ¹ç¨ *Py_tp_base* æ§½ä½ã å¦æè¯¥æ§½ä½åæ ·ä¸º ``NULL``ï¼åæ°ç±»åå°æ´¾çèª :class:`object`ã *module* åæ°å¯è¢«ç¨æ¥è®°å½æ°ç±»å®ä¹æå¨çæ¨¡åã å®å¿é¡»æ¯ä¸ä¸ªæ¨¡åå¯¹è±¡æä¸º ``NULL``ã å¦æä¸ä¸º ``NULL``ï¼åè¯¥æ¨¡åä¼è¢«å³èå°æ°ç±»åå¹¶ä¸å¯å¨ä¹åéè¿ :c:func:`PyType_GetModule` æ¥è·åã è¿ä¸ªå³èæ¨¡åä¸å¯è¢«å­ç±»ç»§æ¿ï¼å®å¿é¡»ä¸ºæ¯ä¸ªç±»åç¬æå®ã å¯¹è±¡ç C ç»æç¨äºæè¿° built-in ç±»åã è¯¥æ§½ä½çé¢æå¼ã å¨å¤§å¤æ°æåµä¸ï¼è¿å°æ¯ä¸ä¸ªæåå½æ°çæéã ä¸åå­æ®µå®å¨æ æ³ä½¿å¾ :c:type:`PyType_Spec` å :c:type:`PyType_Slot` æ¥è®¾ç½®: ä¸åå½æ°åç»æä½å¯è¢«ç¨æ¥åå»º :ref:`å ç±»å <heap-types>`ã æ­¤å½æ°ç°å¨æ¥åä¸ä¸ªåç¬ç±»ä½ä¸º *bases* åæ°å¹¶æ¥å ``NULL`` ä½ä¸º ``tp_doc`` æ§½ä½ã è¿åç±»åç°å¨æ¯ ``unsigned long`` èä¸æ¯ ``long``ã æ­¤å½æ°ä¼å¨æ°ç±»åä¸è°ç¨ :c:func:`PyType_Ready`ã æ­¤å½æ°é¢æä¼ä¸ :c:func:`PyModule_GetState()` ä¸èµ·ä½¿ç¨ä»¥ä¾¿ä»æ§½ä½æ¹æ³ (å¦ :c:member:`~PyTypeObject.tp_init` æ :c:member:`~PyNumberMethods.nb_add`) åå¶ä»å®ä¹æ¹æ³çç±»æ æ³ä½¿ç¨ :c:type:`PyCMethod` è°ç¨æ¯ä¾æ¥ä¼ éçåºåè·åæ¨¡åç¶æã æ­¤å½æ°åªæ£æ¥å®éçå­ç±»åï¼è¿æå³ç :meth:`~class.__subclasscheck__` ä¸ä¼å¨ *b* ä¸è¢«è°ç¨ã è¯·è°ç¨ :c:func:`PyObject_IsSubclass` æ¥æ§è¡ä¸ :func:`issubclass` æåçç¸åæ£æ¥ã è¿æ¯å±äº type å¯¹è±¡ç type objectï¼å®å¨ Python å±é¢å :class:`type` æ¯ç¸åçå¯¹è±¡ã ç±»åå¯¹è±¡ ç±»åææ ï¼ç¨æ¥è®¾ç½® :c:member:`PyTypeObject.tp_flags`ã å·æ :c:macro:`Py_TPFLAGS_ITEMS_AT_END` ææ ã ``Py_nb_add`` è®¾ç½® :c:member:`PyNumberMethods.nb_add` ``Py_sq_length`` è®¾ç½® :c:member:`PySequenceMethods.sq_length` ``Py_tp_dealloc`` è®¾ç½® :c:member:`PyTypeObject.tp_dealloc` object -- å¯¹è±¡ type 