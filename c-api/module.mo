Þ    k      t              Ì  ?   Í       \     W   ù     Q  <   Ú  a   	  Ú   y	  "   T
     w
  ø   x  ª   q            Ñ       q  ¥   ÷       £   :  î   Þ  Õ   Í  d   £  x          m    t   ÿ     t       /  #  #   S     w       É        ^  &  {  x   ¢            O   ·       6      o   W  I   Ç  D     Q   V  C   ¨  Ä  ì  n   ±!      "  %   À"  `   æ"  8  G#     $      %    µ%    Í&  t   Ð'  f   E(  F   ¬(  W  ó(  !   K*  >   m*  Â   ¬*  r   o+  Û   â+  o   ¾,  [   .-  W   -  l   â-     O.  Ú   k.  Þ   F/     %0     ¹0      Ë0  ;   ì0  h   (1     1     ¯1  R   Í1     2  Í   ;3  á   	4  ³   ë4  ç   5  Ç   6  ¥   O7    õ7     v9  w  :  ¨   ;     /<  v   ·<  ·   .=    æ=    ü>     }A  8   B     <B     XB     sB     B     ­B     ÉB     èB     ïB  ½  öB  G   ´D     üD  f   E  T   ûE  z   PF  3   ËF  f   ÿF  ñ   fG  5   XH  !  H    °I  À   ¼J     }K  Â  L  ´   ÊM  9  N  ¤   ¹O     ^P  {   äP  ß   `Q  Õ   @R  j   S  c   S     åS  A  õS  q   7U     ©U  {   ¼U  	  8V     BW     [W     hW  Ú   uW      PX     qX  o   rY  w   âY     ZZ  F   mZ     ´Z  -   ÊZ  q   øZ  R   j[  9   ½[  H   ÷[  J   @\  ±  \  j   =^  ¦   ¨^  -   O_  g   }_  4  å_     a  ¤   ¶a  ý   [b    Yc     pd  q   ød  U   je    Àe  %   Ïf  <   õf  ³   2g  j   æg  ¤   Qh     öh  \   xi  S   Õi  p   )j     j     ­j  ±   Mk     ÿk     l     l  ;   «l  X   çl     @m     Zm  H   vm  ö   ¿m  Ö   ¶n  ½   o     Kp  ´   Öp     q     r  g  ªr  ~   t  W  t     éu     v  x   w     w    'x  c  ,y  r   {  *   |     .|     F|     ]|     u|     |     §|     Â|     É|   :attr:`__package__` and :attr:`__loader__` are set to ``None``. :c:func:`PyModule_GetFilename` raises :c:type:`UnicodeEncodeError` on unencodable filenames, use :c:func:`PyModule_GetFilenameObject` instead. A clear function to call during GC clearing of the module object, or ``NULL`` if not needed. A function to call during deallocation of the module object, or ``NULL`` if not needed. A pointer to a table of module-level functions, described by :c:type:`PyMethodDef` values.  Can be ``NULL`` if no functions are present. A slot ID, chosen from the available values explained below. A traversal function to call during GC traversal of the module object, or ``NULL`` if not needed. Add a string constant to *module* as *name*.  This convenience function can be used from the module's initialization function.  The string *value* must be ``NULL``-terminated.  Return ``-1`` on error, ``0`` on success. Add a string constant to *module*. Add a type object to *module*. The type object is finalized by calling internally :c:func:`PyType_Ready`. The name of the type object is taken from the last component of :c:member:`~PyTypeObject.tp_name` after dot. Return ``-1`` on error, ``0`` on success. Add an int constant to *module*. The name and the value are taken from *macro*. For example ``PyModule_AddIntMacro(module, AF_INET)`` adds the int constant *AF_INET* with the value of *AF_INET* to *module*. Return ``-1`` on error, ``0`` on success. Add an integer constant to *module* as *name*.  This convenience function can be used from the module's initialization function. Return ``-1`` on error, ``0`` on success. Add an object to *module* as *name*.  This is a convenience function which can be used from the module's initialization function. Add the functions from the ``NULL`` terminated *functions* array to *module*. Refer to the :c:type:`PyMethodDef` documentation for details on individual entries (due to the lack of a shared module namespace, module level "functions" implemented in C typically receive the module as their first parameter, making them similar to instance methods on Python classes). This function is called automatically when creating a module from ``PyModuleDef``, using either ``PyModule_Create`` or ``PyModule_FromDefAndSpec``. All modules created using multi-phase initialization are expected to support :ref:`sub-interpreters <sub-interpreter-support>`. Making sure multiple modules are independent is typically enough to achieve this. An alternate way to specify extensions is to request "multi-phase initialization". Extension modules created this way behave more like Python modules: the initialization is split between the *creation phase*, when the module object is created, and the *execution phase*, when it is populated. The distinction is similar to the :py:meth:`__new__` and :py:meth:`__init__` methods of classes. An array of slot definitions for multi-phase initialization, terminated by a ``{0, NULL}`` entry. When using single-phase initialization, *m_slots* must be ``NULL``. Attaches the module object passed to the function to the interpreter state. This allows the module object to be accessible via :c:func:`PyState_FindModule`. Before it is returned from in the initialization function, the resulting module object is typically populated using functions like :c:func:`PyModule_AddObjectRef`. Create a new module object, given the definition in *def* and the ModuleSpec *spec*, assuming the API version *module_api_version*. If that version does not match the version of the running interpreter, a :exc:`RuntimeWarning` is emitted. Create a new module object, given the definition in *def*, assuming the API version *module_api_version*.  If that version does not match the version of the running interpreter, a :exc:`RuntimeWarning` is emitted. Docstring for the module; usually a docstring variable created with :c:macro:`PyDoc_STRVAR` is used. Ensures a module definition is a properly initialized Python object that correctly reports its type and reference count. Example usage:: If ``Py_mod_create`` is not specified, the import machinery will create a normal module object using :c:func:`PyModule_New`. The name is taken from *spec*, not the definition, to allow extension modules to dynamically adjust to their place in the module hierarchy and be imported under different names through symlinks, all while sharing a single module definition. If multiple ``Py_mod_exec`` slots are specified, they are processed in the order they appear in the *m_slots* array. Initializing C modules It is recommended extensions use other ``PyModule_*`` and ``PyObject_*`` functions rather than directly manipulate a module's :attr:`~object.__dict__`. Like :c:member:`PyTypeObject.tp_clear`, this function is not *always* called before a module is deallocated. For example, when reference counting is enough to determine that an object is no longer used, the cyclic garbage collector is not involved and :c:member:`~PyModuleDef.m_free` is called directly. Low-level module creation functions Module Objects Module lookup Module state may be kept in a per-module memory area that can be retrieved with :c:func:`PyModule_GetState`, rather than in static globals. This makes modules safe for use in multiple sub-interpreters. ModuleType (in module types) Modules objects are usually created from extension modules (shared libraries which export an initialization function), or compiled-in modules (where the initialization function is added using :c:func:`PyImport_AppendInittab`). See :ref:`building` or :ref:`extending-with-embedding` for details. Most uses of this function should be using :c:func:`PyModule_Create` instead; only use this if you are sure you need it. Most uses of this function should be using :c:func:`PyModule_FromDefAndSpec` instead; only use this if you are sure you need it. Multi-phase initialization Multiple ``Py_mod_create`` slots may not be specified in one module definition. Name for the new module. No longer called before the module state is allocated. Note that ``Py_XDECREF()`` should be used instead of ``Py_DECREF()`` in this case, since *obj* can be ``NULL``. On success, return ``0``. On error, raise an exception and return ``-1``. Only effective on modules created using single-phase initialization. Prior to version 3.5, this member was always set to ``NULL``, and was defined as: Process any execution slots (:c:data:`Py_mod_exec`) given in *def*. Python calls ``PyState_AddModule`` automatically after importing a module, so it is unnecessary (but harmless) to call it from module initialization code. An explicit call is needed only if the module's own init code subsequently calls ``PyState_FindModule``. The function is mainly intended for implementing alternative import mechanisms (either by calling it directly, or by referring to its implementation for details of the required state updates). Removes the module object created from *def* from the interpreter state. Return 0 on success or -1 on failure. Return *module*'s :attr:`__name__` value.  If the module does not provide one, or if it is not a string, :exc:`SystemError` is raised and ``NULL`` is returned. Return 0 on success or -1 on failure. Return ``NULL`` if *value* is ``NULL``. It must be called with an exception raised in this case. Return a new module object with the :attr:`__name__` attribute set to *name*. The module's :attr:`__name__`, :attr:`__doc__`, :attr:`__package__`, and :attr:`__loader__` attributes are filled in (all but :attr:`__name__` are set to ``None``); the caller is responsible for providing a :attr:`__file__` attribute. Return a pointer to the :c:type:`PyModuleDef` struct from which the module was created, or ``NULL`` if the module wasn't created from a definition. Return the "state" of the module, that is, a pointer to the block of memory allocated at module creation time, or ``NULL``.  See :c:member:`PyModuleDef.m_size`. Return the dictionary object that implements *module*'s namespace; this object is the same as the :attr:`~object.__dict__` attribute of the module object. If *module* is not a module object (or a subtype of a module object), :exc:`SystemError` is raised and ``NULL`` is returned. Return the name of the file from which *module* was loaded using *module*'s :attr:`__file__` attribute.  If this is not defined, or if it is not a unicode string, raise :exc:`SystemError` and return ``NULL``; otherwise return a reference to a Unicode object. Return true if *p* is a module object, but not a subtype of :c:data:`PyModule_Type`.  This function always succeeds. Return true if *p* is a module object, or a subtype of a module object. This function always succeeds. Returns *def* cast to ``PyObject*``, or ``NULL`` if an error occurred. Returns the module object that was created from *def* for the current interpreter. This method requires that the module object has been attached to the interpreter state with :c:func:`PyState_AddModule` beforehand. In case the corresponding module object is not found or has not been attached to the interpreter state yet, it returns ``NULL``. See :PEP:`3121` for more details. See :PEP:`489` for more details on multi-phase initialization. Set the docstring for *module* to *docstring*. This function is called automatically when creating a module from ``PyModuleDef``, using either ``PyModule_Create`` or ``PyModule_FromDefAndSpec``. Setting ``m_size`` to ``-1`` means that the module does not support sub-interpreters, because it has global state. Setting it to a non-negative value means that the module can be re-initialized and specifies the additional amount of memory it requires for its state. Non-negative ``m_size`` is required for multi-phase initialization. Similar to :c:func:`PyModule_AddObjectRef`, but steals a reference to *value* on success (if it returns ``0``). Similar to :c:func:`PyModule_GetFilenameObject` but return the filename encoded to 'utf-8'. Similar to :c:func:`PyModule_GetNameObject` but return the name encoded to ``'utf-8'``. Similar to :c:func:`PyModule_NewObject`, but the name is a UTF-8 encoded string instead of a Unicode object. Single-phase initialization Single-phase initialization creates singleton modules that can be looked up in the context of the current interpreter. This allows the module object to be retrieved later with only a reference to the module definition. Specifies a function that is called to *execute* the module. This is equivalent to executing the code of a Python module: typically, this function adds classes and constants to the module. The signature of the function is: Specifies a function that is called to create the module object itself. The *value* pointer of this slot must point to a function of the signature: Support functions SystemError (built-in exception) The *m_slots* array must be terminated by a slot with id 0. The *m_slots* member of the module definition must point to an array of ``PyModuleDef_Slot`` structures: The available slot types are: The caller must hold the GIL. The example can also be written without checking explicitly if *obj* is ``NULL``:: The following functions are called under the hood when using multi-phase initialization. They can be used directly, for example when creating module objects dynamically. Note that both ``PyModule_FromDefAndSpec`` and ``PyModule_ExecDef`` must be called to fully initialize a module. The function receives a :py:class:`~importlib.machinery.ModuleSpec` instance, as defined in :PEP:`451`, and the module definition. It should return a new module object, or set an error and return ``NULL``. The initialization function can either pass a module definition instance to :c:func:`PyModule_Create`, and return the resulting module object, or request "multi-phase initialization" by returning the definition struct itself. The module definition struct, which holds all information needed to create a module object. There is usually only one statically initialized variable of this type for each module. The module initialization function (if using single phase initialization) or a function called from a module execution slot (if using multi-phase initialization), can use the following functions to help initialize the module state: The module initialization function may create and return the module object directly. This is referred to as "single-phase initialization", and uses one of the following two module creation functions: The new :c:func:`PyModule_AddObjectRef` function is recommended, since it is easy to introduce reference leaks by misusing the :c:func:`PyModule_AddObject` function. There is no requirement for the returned object to be an instance of :c:type:`PyModule_Type`. Any type can be used, as long as it supports setting and getting import-related attributes. However, only ``PyModule_Type`` instances may be returned if the ``PyModuleDef`` has non-``NULL`` ``m_traverse``, ``m_clear``, ``m_free``; non-zero ``m_size``; or slots other than ``Py_mod_create``. These functions will not work on modules created using multi-phase initialization, since multiple such modules can be created from a single definition. This function is not called if the module state was requested but is not allocated yet. This is the case immediately after the module is created and before the module is executed (:c:data:`Py_mod_exec` function). More precisely, this function is not called if :c:member:`m_size` is greater than 0 and the module state (as returned by :c:func:`PyModule_GetState`) is ``NULL``. This function should be kept minimal. In particular, it should not call arbitrary Python code, as trying to import the same module again may result in an infinite loop. This instance of :c:type:`PyTypeObject` represents the Python module type.  This is exposed to Python programs as ``types.ModuleType``. This means that its return value must be checked, and calling code must :c:func:`Py_DECREF` *value* manually on error. This memory area is allocated based on *m_size* on module creation, and freed when the module object is deallocated, after the :c:member:`m_free` function has been called, if present. To request multi-phase initialization, the initialization function (PyInit_modulename) returns a :c:type:`PyModuleDef` instance with non-empty :c:member:`~PyModuleDef.m_slots`. Before it is returned, the ``PyModuleDef`` instance must be initialized with the following function: Unlike modules created using single-phase initialization, these modules are not singletons: if the *sys.modules* entry is removed and the module is re-imported, a new module object is created, and the old module is subject to normal garbage collection -- as with Python modules. By default, multiple modules created from the same definition should be independent: changes to one should not affect the others. This means that all state should be specific to the module object (using e.g. using :c:func:`PyModule_GetState`), or its contents (such as the module's :attr:`__dict__` or individual classes created with :c:func:`PyType_FromSpec`). Unlike other functions that steal references, ``PyModule_AddObject()`` only decrements the reference count of *value* **on success**. Value of the slot, whose meaning depends on the slot ID. __dict__ (module attribute) __doc__ (module attribute) __file__ (module attribute) __loader__ (module attribute) __name__ (module attribute) __package__ (module attribute) module object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 å±æ§ :attr:`__package__` å :attr:`__loader__` è¢«è®¾ä¸º ``None``ã :c:func:`PyModule_GetFilename` å¯¹äºä¸å¯ç¼ç çæä»¶åä¼å¼å :c:type:`UnicodeEncodeError`ï¼è¯·æ¹ç¨ :c:func:`PyModule_GetFilenameObject`ã å¨æ¨¡åå¯¹è±¡çåå¾åæ¶æ¸çæé´æè°ç¨çæ¸çå½æ°ï¼å¦æä¸éè¦åä¸º ``NULL``ã å¨æ¨¡åå¯¹è±¡çéæ¾æé´æè°ç¨çå½æ°ï¼å¦æä¸éè¦åä¸º ``NULL``ã ä¸ä¸ªæåæ¨¡åå½æ°è¡¨çæéï¼ç± :c:type:`PyMethodDef` æè¿°ãå¦ææ¨¡åæ²¡æå½æ°ï¼å¯ä»¥ä¸º ``NULL``ã æ§½ä½ IDï¼ä»ä¸é¢ä»ç»çå¯ç¨å¼ä¸­éæ©ã å¨æ¨¡åå¯¹è±¡çåå¾åæ¶éåæé´æè°ç¨çéåå½æ°ï¼å¦æä¸éè¦åä¸º ``NULL``ã å°ä¸ä¸ªåç§°ä¸º*name*çå­ç¬¦ä¸²å¸¸éæ·»å å°*module*æ¨¡åä¸­ãè¿ä¸ªæ¹ä¾¿çå½æ°å¯ä»¥å¨æ¨¡åçåå§åå½æ°ä¸­ä½¿ç¨ãå­ç¬¦ä¸²*value*å¿é¡»ä»¥ ``NULL`` ç»å°¾ãå¦æåçéè¯¯ï¼è¿å ``-1`` ï¼æåè¿å ``0`` ã å°ä¸ä¸ªå­ç¬¦ä¸²å¸¸éæ·»å å°*module*æ¨¡åä¸­ã å°ä¸ä¸ªç±»åå¯¹è±¡æ·»å å° *module* æ¨¡åä¸­ãç±»åå¯¹è±¡éè¿å¨å½æ°åé¨è°ç¨ :c:func:`PyType_Ready` å®æåå§åãç±»åå¯¹è±¡çåç§°åèª :c:member:`~PyTypeObject.tp_name` æåä¸ä¸ªç¹å·ä¹åçé¨åãå¦æåçéè¯¯ï¼è¿å ``-1``ï¼æåè¿å ``0``ã å°ä¸ä¸ªæ´åå¸¸éæ·»å å°*module*æ¨¡åä¸­ãåç§°åå¼åèª*macro*åæ°ãä¾å¦ï¼ ``PyModule_AddIntMacro(module, AF_INET)`` å°å¼ä¸º*AF_INET*çæ´åå¸¸é*AF_INET*æ·»å å°*module*æ¨¡åä¸­ãå¦æåçéè¯¯ï¼è¿å ``-1`` ï¼æåè¿å ``0`` ã å°ä¸ä¸ªåç§°ä¸º*name*çæ´åå¸¸éæ·»å å°*module*æ¨¡åä¸­ãè¿ä¸ªæ¹ä¾¿çå½æ°å¯ä»¥å¨æ¨¡åçåå§åå½æ°ä¸­ä½¿ç¨ãå¦æåçéè¯¯ï¼è¿å ``-1``ï¼æåè¿å ``0``ã å°ä¸ä¸ªåç§°ä¸º*name*çå¯¹è±¡æ·»å å°*module*æ¨¡åä¸­ãè¿æ¯ä¸ä¸ªæ¹ä¾¿çå½æ°ï¼å¯ä»¥å¨æ¨¡åçåå§åå½æ°ä¸­ä½¿ç¨ã å°ä»¥ ``NULL`` ç»å°¾ç*functions*æ°ç»ä¸­çå½æ°æ·»å å°*module*æ¨¡åä¸­ãæå³åä¸ªæ¡ç®çæ´å¤ç»èï¼è¯·åä¸ :c:type:`PyMethodDef` ææ¡£ï¼ç±äºç¼ºå°å±äº«çæ¨¡åå½åç©ºé´ï¼å¨Cä¸­å®ç°çæ¨¡åçº§âå½æ°âéå¸¸å°æ¨¡åä½ä¸ºå®çç¬¬ä¸ä¸ªåæ°ï¼ä¸Pythonç±»çå®ä¾æ¹æ³ç±»ä¼¼ï¼ãå½ä½¿ç¨ ``PyModule_Create`` æ ``PyModule_FromDefAndSpec`` ä» ``PyModuleDef`` åå»ºæ¨¡åæ¶ï¼ä¼èªå¨è°ç¨æ­¤å½æ°ã ææä½¿ç¨å¤é¶æ®µåå§ååå»ºçæ¨¡åé½åºè¯¥æ¯æ :ref:`å­è§£éå¨<sub-interpreter-support>`ãä¿è¯å¤ä¸ªæ¨¡åä¹é´ç¸äºç¬ç«ï¼éå¸¸å°±å¯ä»¥å®ç°è¿ä¸ç¹ã å¦ä¸ç§æå®æ©å±çæ¹å¼æ¯âå¤é¶æ®µåå§åâãä»¥è¿ç§æ¹å¼åå»ºçæ©å±æ¨¡åçè¡ä¸ºæ´ç±»ä¼¼ Python æ¨¡åï¼åå§ååæä¸¤ä¸ªé¶æ®µï¼*åå»ºé¶æ®µ* åå»ºæ¨¡åå¯¹è±¡ï¼*æ§è¡é¶æ®µ* å¡«åæ¨¡åå¯¹è±¡ãå®ä»¬çåºå«ç±»ä¼¼ç±»ç :py:meth:`__new__` å :py:meth:`__init__` æ¹æ³ã ç±éå¯¹å¤é¶æ®µåå§åçæ§½ä½å®ä¹ç»æçæ°ç»ï¼ä»¥ä¸ä¸ª ``{0, NULL}`` æ¡ç®ç»æã å½ä½¿ç¨åé¶æ®µåå§åæ¶ï¼*m_slots* å¿é¡»ä¸º ``NULL``ã å°ä¼ ç»å½æ°çæ¨¡åå¯¹è±¡éå å°è§£éå¨ç¶æã è¿å°åè®¸éè¿ :c:func:`PyState_FindModule` æ¥è®¿é®è¯¥æ¨¡åå¯¹è±¡ã å¨åå§åå½æ°è¿åä¹åï¼çæçæ¨¡åå¯¹è±¡éå¸¸ä½¿ç¨ :c:func:`PyModule_AddObjectRef` ç­å½æ°è¿è¡å¡«åã åå»ºä¸ä¸ªæ°çæ¨¡åå¯¹è±¡ï¼å¨åæ° *def* å *spec* ä¸­ç»åºå®ä¹ï¼è®¾ç½®APIçæ¬ä¸ºåæ° *module_api_version*ãå¦æè¯¥çæ¬ä¸æ­£å¨è¿è¡çè§£éå¨çæ¬ä¸å¹éï¼åä¼è§¦å :exc:`RuntimeWarning`ã åå»ºä¸ä¸ªæ°çæ¨¡åå¯¹è±¡ï¼å¨åæ° *def* ä¸­ç»åºå®ä¹ï¼è®¾å®APIçæ¬ä¸ºåæ° *module_api_version* ãå¦æè¯¥çæ¬ä¸æ­£å¨è¿è¡çè§£éå¨çæ¬ä¸å¹éï¼åä¼è§¦å :exc:`RuntimeWarning`ã æ¨¡åçææ¡£å­ç¬¦ä¸²ï¼ä¸è¬ä¼ä½¿ç¨éè¿ :c:macro:`PyDoc_STRVAR` åå»ºçææ¡£å­ç¬¦ä¸²åéã ç¡®ä¿æ¨¡åå®ä¹æ¯ä¸ä¸ªæ­£ç¡®åå§åçPythonå¯¹è±¡ï¼æ¥ææ­£ç¡®çç±»ååå¼ç¨è®¡æ°ã ç¨æ³ç¤ºä¾ï¼ å¦ææªæå® ``Py_mod_create``ï¼å¯¼å¥æºå¶å°ä½¿ç¨ :c:func:`PyModule_New` åå»ºä¸ä¸ªæ®éçæ¨¡åå¯¹è±¡ã åç§°æ¯è·åèª *spec* èéå®ä¹ï¼ä»¥åè®¸æ©å±æ¨¡åå¨æå°è°æ´å®ä»¬å¨æ¨¡åå±çº§ç»æä¸­çä½ç½®å¹¶éè¿ç¬¦å·é¾æ¥ä»¥ä¸åçåç§°è¢«å¯¼å¥ï¼åæ¶å±äº«åä¸ä¸ªæ¨¡åå®ä¹ã å¦ææå®äºå¤ä¸ª ``Py_mod_exec`` æ§½ä½ï¼å°æç§å®ä»¬å¨*m_slots*æ°ç»ä¸­åºç°çé¡ºåºè¿è¡å¤çã åå§å C æ¨¡å å»ºè®®æ©å±ä½¿ç¨å¶ä» ``PyModule_*`` å ``PyObject_*`` å½æ°èä¸æ¯ç´æ¥æçºµæ¨¡åç :attr:`~object.__dict__`ã å°±å :c:member:`PyTypeObject.tp_clear` é£æ ·ï¼è¿ä¸ªå½æ°å¹¶ä¸æ»æ¯å¨æ¨¡åè¢«éæ¾åè¢«è°ç¨ãä¾å¦ï¼å½å¼ç¨è®¡æ°è¶³ä»¥ç¡®å®ä¸ä¸ªå¯¹è±¡ä¸åè¢«ä½¿ç¨æ¶ï¼å°±ä¼ç´æ¥è°ç¨ :c:member:`~PyModuleDef.m_free`ï¼èä¸ä½¿ç¨å¾ªç¯åå¾åæ¶å¨ã åºå±æ¨¡ååå»ºå½æ° æ¨¡åå¯¹è±¡ æ¥æ¾æ¨¡å å¯ä»¥ææ¨¡åçç¶æä¿å­å¨ä¸ºåä¸ªæ¨¡ååéçåå­åºåä¸­ï¼ä½¿ç¨ :c:func:`PyModule_GetState` æ£ç´¢ï¼èä¸æ¯ä¿å­å¨éæå¨å±åºãè¿ä½¿å¾æ¨¡åå¯ä»¥å¨å¤ä¸ªå­è§£éå¨ä¸­å®å¨å°ä½¿ç¨ã ModuleType (å¨ types æ¨¡åä¸­) æ¨¡åå¯¹è±¡éå¸¸æ¯åºäºæ©å±æ¨¡åï¼å¯¼åºåå§åå½æ°çå±äº«åºï¼ï¼æåé¨ç¼è¯æ¨¡åï¼å¶ä¸­ä½¿ç¨ :c:func:`PyImport_AppendInittab` æ·»å åå§åå½æ°ï¼ã è¯·åé :ref:`building` æ :ref:`extending-with-embedding` äºè§£è¯¦æã å¤§å¤æ°æ¶ååºè¯¥ä½¿ç¨ :c:func:`PyModule_Create` ä»£æ¿ä½¿ç¨æ­¤å½æ°ï¼é¤éä½ ç¡®å®éè¦ä½¿ç¨å®ã å¤§å¤æ°æ¶ååºè¯¥ä½¿ç¨ :c:func:`PyModule_FromDefAndSpec` ä»£æ¿ä½¿ç¨æ­¤å½æ°ï¼é¤éä½ ç¡®å®éè¦ä½¿ç¨å®ã å¤é¶æ®µåå§å å¤ä¸ª ``Py_mod_create`` æ§½ä½ä¸è½å¨ä¸ä¸ªæ¨¡åå®ä¹ä¸­æå®ã æ°æ¨¡åçåç§°ã å¨æ¨¡åç¶æè¢«åéä¹åä¸åè°ç¨ã æ³¨æå¨æ­¤æåµä¸åºå½ä½¿ç¨ ``Py_XDECREF()`` èä¸æ¯ ``Py_DECREF()``ï¼å ä¸º *obj* å¯è½ä¸º ``NULL``ã å¦ææåï¼è¿å ``0``ãå¦æåçéè¯¯ï¼å¼åå¼å¸¸å¹¶è¿å ``-1``ã ä»å¨ä½¿ç¨åé¶æ®µåå§ååå»ºçæ¨¡åä¸ææã å¨ 3.5 çä¹åï¼æ­¤æåæ»æ¯è¢«è®¾ä¸º ``NULL``ï¼å¹¶è¢«å®ä¹ä¸º: æ§è¡åæ°*def*ä¸­ç»åºçä»»ææ§è¡æ§½ï¼:c:data:`Py_mod_exec`ï¼ã Python ä¼å¨å¯¼å¥ä¸ä¸ªæ¨¡ååèªå¨è°ç¨ ``PyState_AddModule``ï¼å æ­¤ä»æ¨¡ååå§åä»£ç ä¸­è°ç¨å®æ¯æ²¡æå¿è¦çï¼ä½ä¹æ²¡æå®³å¤ï¼ã æ¾å¼çè°ç¨ä»å¨æ¨¡åèªå·±çåå§åä»£ç åç»§è°ç¨äº ``PyState_FindModule`` çæåµä¸ææ¯å¿è¦çã æ­¤å½æ°ä¸»è¦æ¯ä¸ºäºå®ç°æ¿ä»£å¯¼å¥æºå¶ï¼ææ¯éè¿ç´æ¥è°ç¨å®ï¼ææ¯éè¿å¼ç¨å®çå®ç°æ¥è·åæéçç¶ææ´æ°è¯¦æï¼ã ä»è§£éå¨ç¶æä¸­ç§»é¤ç± *def* åå»ºçæ¨¡åå¯¹è±¡ã æåæ¶è¿å 0ï¼èå¤±è´¥æ¶è¿å -1ã è¿å *module* ç :attr:`__name__` å¼ã å¦ææ¨¡åæªæä¾è¯¥å¼ï¼æèå¦æå®ä¸æ¯ä¸ä¸ªå­ç¬¦ä¸²ï¼åä¼å¼å :exc:`SystemError` å¹¶è¿å ``NULL``ã æåæ¯è¿å 0 æèå¤±è´¥æ¶è¿å -1ã å¦æ*value*ä¸º ``NULL``ï¼è¿å ``NULL``ãå¨è°ç¨å®æ¶åçè¿ç§æåµï¼å¿é¡»æåºå¼å¸¸ã è¿åæ°çæ¨¡åå¯¹è±¡ï¼å¶å±æ§ :attr:`__name__`  ä¸º *name* ãæ¨¡åçå¦ä¸å±æ§ :attr:`__name__`, :attr:`__doc__`, :attr:`__package__`, and :attr:`__loader__` é½ä¼è¢«èªå¨å¡«åãï¼ææå±æ§é¤äº :attr:`__name__` é½è¢«è®¾ä¸º ``None``ï¼ãè°ç¨æ¶åºå½æä¾ :attr:`__file__` å±æ§ã è¿åæåæ¨¡ååå»ºæä½¿ç¨ç :c:type:`PyModuleDef` ç»æä½çæéï¼æèå¦ææ¨¡åä¸æ¯ä½¿ç¨ç»æä½å®ä¹åå»ºçåè¿å ``NULL``ã è¿åæ¨¡åçâç¶æâï¼ä¹å°±æ¯è¯´ï¼è¿åæåå¨æ¨¡ååå»ºæ¶åéçåå­åçæéï¼æè ``NULL``ã åè§ :c:member:`PyModuleDef.m_size`ã è¿åå®ç° *module* çå½åç©ºé´çå­å¸å¯¹è±¡ï¼æ­¤å¯¹è±¡ä¸æ¨¡åå¯¹è±¡ç :attr:`~object.__dict__` å±æ§ç¸åã å¦æ *module* ä¸æ¯ä¸ä¸ªæ¨¡åå¯¹è±¡ï¼ææ¨¡åå¯¹è±¡çå­ç±»åï¼ï¼åä¼å¼å :exc:`SystemError` å¹¶è¿å ``NULL``ã è¿åä½¿ç¨ *module* ç :attr:`__file__` å±æ§æå è½½ç *æ¨¡å* çæä»¶åã å¦æå±æ§æªå®ä¹ï¼æèå¦æå®ä¸æ¯ä¸ä¸ª Unicode å­ç¬¦ä¸²ï¼åä¼å¼å :exc:`SystemError` å¹¶è¿å ``NULL``ï¼å¨å¶ä»æåµä¸å°è¿åä¸ä¸ªæå Unicode å¯¹è±¡çå¼ç¨ã å½ *p* ä¸ºæ¨¡åç±»åçå¯¹è±¡ä¸ä¸æ¯ :c:data:`PyModule_Type` çå­ç±»åçå¯¹è±¡æ¶è¿åçå¼ãè¯¥å½æ°æ°¸è¿æè¿åå¼ã å½ *p* ä¸ºæ¨¡åç±»åçå¯¹è±¡ï¼ææ¯æ¨¡åå­ç±»åçå¯¹è±¡æ¶è¿åçå¼ãè¯¥å½æ°æ°¸è¿æè¿åå¼ã è¿åè½¬æ¢ä¸º ``PyObject*`` ç *def* ï¼å¦æåçéè¯¯ï¼åè¿å ``NULL``ã è¿åå½åè§£éå¨ä¸­ç± *def* åå»ºçæ¨¡åå¯¹è±¡ãæ­¤æ¹æ³è¦æ±æ¨¡åå¯¹è±¡æ­¤åå·²éè¿ :c:func:`PyState_AddModule` å½æ°éå å°è§£éå¨ç¶æä¸­ãå¦ææ¾ä¸å°ç¸åºçæ¨¡åå¯¹è±¡ï¼ææ¨¡åå¯¹è±¡è¿æªéå å°è§£éå¨ç¶æï¼è¿å ``NULL``ã è¯·åé :PEP:`3121` äºè§£è¯¦æã æå³å¤é¶æ®µåå§åçæ´å¤ç»èï¼è¯·åéPEP:`489` å°*module*çææ¡£å­ç¬¦ä¸²è®¾ç½®ä¸º*docstring*ãå½ä½¿ç¨ ``PyModule_Create`` æ ``PyModule_FromDefAndSpec`` ä» ``PyModuleDef`` åå»ºæ¨¡åæ¶ï¼ä¼èªå¨è°ç¨æ­¤å½æ°ã å° ``m_size`` è®¾ç½®ä¸º ``-1``ï¼æå³çè¿ä¸ªæ¨¡åå·æå¨å±ç¶æï¼å æ­¤ä¸æ¯æå­è§£éå¨ã å°å¶è®¾ç½®ä¸ºéè´å¼ï¼æå³çæ¨¡åå¯ä»¥éæ°åå§åï¼å¹¶æå®å¶ç¶ææéè¦çé¢å¤åå­å¤§å°ãå¤é¶æ®µåå§åéè¦éè´ç ``m_size``ã ç±»ä¼¼äº :c:func:`PyModule_AddObjectRef`ï¼ä½ä¼å¨æåæ¶å·åä¸ä¸ªå¯¹ *value* çå¼ç¨ï¼å¦æå®è¿å ``0`` å¼ï¼ã ç±»ä¼¼äº :c:func:`PyModule_GetFilenameObject` ä½ä¼è¿åç¼ç ä¸º 'utf-8' çæä»¶åã ç±»ä¼¼äº :c:func:`PyModule_GetNameObject` ä½è¿å ``'utf-8'`` ç¼ç çåç§°ã è¿ç±»ä¼¼äº :c:func:`PyModule_NewObject`ï¼ ä½å¶åç§°ä¸º UTF-8 ç¼ç çå­ç¬¦ä¸²èä¸æ¯ Unicode å¯¹è±¡ã åé¶æ®µåå§å åé¶æ®µåå§ååå»ºå¯ä»¥å¨å½åè§£éå¨ä¸ä¸æä¸­è¢«æ¥æ¾çåä¾æ¨¡åãè¿ä½¿å¾ä»éè¿æ¨¡åå®ä¹çå¼ç¨ï¼å°±å¯ä»¥æ£ç´¢æ¨¡åå¯¹è±¡ã æå®ä¸ä¸ªä¾è°ç¨ä»¥ *æ§è¡* æ¨¡åçå½æ°ã è¿é ä»·äºæ§è¡ä¸ä¸ª Python æ¨¡åçä»£ç ï¼éå¸¸ï¼æ­¤å½æ°ä¼åæ¨¡åæ·»å ç±»åå¸¸éã æ­¤å½æ°çç­¾åä¸º: æå®ä¸ä¸ªå½æ°ä¾è°ç¨ä»¥åå»ºæ¨¡åå¯¹è±¡æ¬èº«ã è¯¥æ§½ä½ç *value* æéå¿é¡»æåä¸ä¸ªå·æå¦ä¸ç­¾åçå½æ°: æ¯æå½æ° SystemError (åç½®å¼å¸¸) *m_slots* æ°ç»å¿é¡»ä»¥ä¸ä¸ª id ä¸º 0 çæ§½ä½ç»æã æ¨¡åå®ä¹ç *m_slots* æåå¿é¡»æåä¸ä¸ª ``PyModuleDef_Slot`` ç»æä½æ°ç»: å¯ç¨çæ§½ä½ç±»åæ¯: è°ç¨æ¶å¿é¡»æºå¸¦GILã è¿ä¸ªä¾å­ä¹å¯ä»¥åæä¸æ¾å¼å°æ£æ¥ *obj* æ¯å¦ä¸º ``NULL``:: å½ä½¿ç¨å¤é¶æ®µåå§åæ¶ï¼å°ä¼è°ç¨ä»¥ä¸å½æ°ãä¾å¦ï¼å¨å¨æåå»ºæ¨¡åå¯¹è±¡çæ¶åï¼å¯ä»¥ç´æ¥ä½¿ç¨å®ä»¬ãæ³¨æï¼å¿é¡»è°ç¨ ``PyModule_FromDefAndSpec`` å ``PyModule_ExecDef`` æ¥å®æ´å°åå§åä¸ä¸ªæ¨¡åã è¯¥å½æ°æ¥åä¸ä¸ª :py:class:`~importlib.machinery.ModuleSpec` å®ä¾ï¼å¦ :PEP:`451` æå®ä¹çï¼ä»¥åæ¨¡åå®ä¹ã å®åºå½è¿åä¸ä¸ªæ°çæ¨¡åå¯¹è±¡ï¼æèè®¾ç½®ä¸ä¸ªéè¯¯å¹¶è¿å ``NULL``ã åå§åå½æ°å¯ä»¥å :c:func:`PyModule_Create` ä¼ å¥ä¸ä¸ªæ¨¡åå®ä¹å®ä¾ï¼å¹¶è¿åç»ææ¨¡åå¯¹è±¡ï¼æèéè¿è¿åå®ä¹ç»æä½æ¬èº«æ¥è¯·æ±âå¤é¶æ®µåå§åâã æ¨¡åå®ä¹ç»æï¼å®ä¿å­åå»ºæ¨¡åå¯¹è±¡æéçææä¿¡æ¯ãæ¯ä¸ªæ¨¡åéå¸¸åªæä¸ä¸ªè¿ç§ç±»åçéæåå§ååé æ¨¡ååå§åå½æ°ï¼åé¶æ®µåå§åï¼æéè¿æ¨¡åçæ§è¡æ§½ä½è°ç¨çå½æ°ï¼å¤é¶æ®µåå§åï¼ï¼å¯ä»¥ä½¿ç¨ä»¥ä¸å½æ°ï¼æ¥å¸®å©åå§åæ¨¡åçç¶æï¼ æ¨¡ååå§åå½æ°å¯ä»¥ç´æ¥åå»ºå¹¶è¿åæ¨¡åå¯¹è±¡ï¼ç§°ä¸ºâåé¶æ®µåå§åâï¼ä½¿ç¨ä»¥ä¸ä¸¤ä¸ªæ¨¡ååå»ºå½æ°ä¸­çä¸ä¸ªï¼ æ¨èä½¿ç¨æ°ç :c:func:`PyModule_AddObjectRef` å½æ°ï¼å ä¸ºè¯¯ç¨ :c:func:`PyModule_AddObject` å½æ°å¾å®¹æå¯¼è´å¼ç¨æ³æ¼ã ä¸è¦æ±è¿åçå¯¹è±¡å¿é¡»ä¸º :c:type:`PyModule_Type` çå®ä¾ã ä»»ä½ç±»ååå¯ä½¿ç¨ï¼åªè¦å®æ¯æè®¾ç½®åè·åå¯¼å¥ç¸å³çå±æ§ã ä½æ¯ï¼å¦æ ``PyModuleDef`` å·æé ``NULL`` ç ``m_traverse``, ``m_clear``, ``m_free``ï¼éé¶ç ``m_size``ï¼æè ``Py_mod_create`` ä»¥å¤çæ§½ä½ååªè½è¿å ``PyModule_Type`` çå®ä¾ã è¿äºå½æ°ä¸éç¨äºéè¿å¤é¶æ®µåå§ååå»ºçæ¨¡åï¼å ä¸ºå¯ä»¥ä»ä¸ä¸ªæ¨¡åå®ä¹åå»ºå¤ä¸ªæ¨¡åå¯¹è±¡ã å¦ææ¨¡åç¶æå·²è¢«è¯·æ±ä½å°æªè¢«åéï¼åä¸ä¼è°ç¨æ­¤å½æ°ãä¾å¦å¨æ¨¡ååååå»ºå®æä¹åãè¢«æ§è¡ä¹åï¼:c:data:`Py_mod_exec` å½æ°ï¼æ¶çæåµãæ´åç¡®å°è¯´ï¼å¦æ :c:member:`m_size` å¤§äº0ï¼å¹¶ä¸æ¨¡åç¶æï¼ç± :c:func:`PyModule_GetState` è¿åï¼ä¸º ``NULL`` ï¼åä¸ä¼è°ç¨æ­¤å½æ°ã æ­¤å½æ°åºå½ä¿ææå°åã ç¹å«å°ï¼å®ä¸åºå½è°ç¨ä»»æ Python ä»£ç ï¼å ä¸ºå°è¯åæ¬¡å¯¼å¥åä¸ä¸ªæ¨¡åå¯è½ä¼å¯¼è´æ éå¾ªç¯ã è¿ä¸ª C ç±»åå®ä¾ :c:type:`PyTypeObject` ç¨æ¥è¡¨ç¤ºPythonä¸­çæ¨¡åç±»åãå¨ Python ç¨åºä¸­è¯¥å®ä¾è¢«æ´é²ä¸º ``types.ModuleType``ã è¿æå³çå¿é¡»æ£æ¥å®çè¿åå¼ï¼è°ç¨æ¹å¿é¡»å¨åçéè¯¯æ¶æå¨ä¸º*value*è°ç¨ :c:func:`Py_DECREF`ã è¿ä¸ªåå­åºåå¨æ¨¡ååå»ºæ¶æ ¹æ®*m_size*åéï¼å¹¶å¨è°ç¨ :c:member:`m_free` å½æ°ï¼å¦æå­å¨ï¼éæ¾æ¨¡åå¯¹è±¡åéæ¾ã è¦è¯·æ±å¤é¶æ®µåå§åï¼åå§åå½æ° (PyInit_modulename) è¿åä¸ä¸ªåå«éç©ºç :c:member:`~PyModuleDef.m_slots` å±æ§ç :c:type:`PyModuleDef` å®ä¾ãå¨å®è¢«è¿åä¹åï¼è¿ä¸ª ``PyModuleDef`` å®ä¾å¿é¡»åä½¿ç¨ä»¥ä¸å½æ°åå§åï¼ ä¸ä½¿ç¨åé¶æ®µåå§ååå»ºçæ¨¡åä¸åï¼è¿äºæ¨¡åä¸æ¯åä¾ï¼å¦æ*sys.modules*è¢«ç§»é¤ãæ¨¡åè¢«éæ°å¯¼å¥ï¼å°ä¼åå»ºä¸ä¸ªæ°çæ¨¡åå¯¹è±¡ï¼æ§æ¨¡åå°è¿å¥å¸¸è§çåå¾åæ¶ââå°±åPythonæ¨¡åé£æ ·ãé»è®¤æåµä¸ï¼æ ¹æ®åä¸ä¸ªå®ä¹åå»ºçå¤ä¸ªæ¨¡ååºè¯¥æ¯ç¸äºç¬ç«çï¼ä¿®æ¹å¶ä¸­ä¹ä¸ä¸åºè¯¥å½±åå¶å®æ¨¡åãè¿æå³çææç¶æé½åºè¯¥ç¹å®äºæ¨¡åå¯¹è±¡ï¼ä¾å¦ä½¿ç¨ :c:func:`PyModule_GetState`ï¼ï¼ææ¯å®çåå®¹ï¼ä¾å¦æ¨¡åç :attr:`__dict__` å±æ§ï¼ææ¯ä½¿ç¨ :c:func:`PyType_FromSpec` åå»ºçç¬ç«çç±»ï¼ã åå¶å®çªåå¼ç¨çå½æ°ä¸åï¼``PyModule_AddObject()`` åªå¨**æå**æ¶åå°*value*çå¼ç¨è®¡æ°ã æ§½ä½å¼ï¼å¶å«ä¹åå³äºæ§½ä½ IDã __dict__ (æ¨¡åå±æ§) __doc__ (æ¨¡åå±æ§) __file__ (æ¨¡åå±æ§) __loader__ (æ¨¡åå±æ§) __name__ (æ¨¡åå±æ§) __package__ (æ¨¡åå±æ§) module object -- å¯¹è±¡ 