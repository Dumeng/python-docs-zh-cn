Þ                          !        /     7  f   @  6  §  v   Þ  Ó   U  ç   )  ¹     ¼   Ë  ¶     1   ?  K   q  `   ½  I   	     h	  f   ì	  d   S
  g   ¸
  a      U     P   Ø  6   )  4   `  ¼     U   R  À   ¨  >   i    ¨     0  ½  7  #   õ          !  c   0  N    k   ã  È   O  ä     ´   ý  ´   ²  ±   g  3     I   M  _     I   ÷  w   A  b   ¹  d     d     a   æ  ^   H  S   §  9   û  6   5  Ð   l  O   =  É     6   W  x           *no_block* has no effect anymore. Capsule Capsules Create a :c:type:`PyCapsule` encapsulating the *pointer*.  The *pointer* argument may not be ``NULL``. Determines whether or not *capsule* is a valid capsule.  A valid capsule is non-``NULL``, passes :c:func:`PyCapsule_CheckExact`, has a non-``NULL`` pointer stored in it, and its internal name matches the *name* parameter.  (See :c:func:`PyCapsule_GetPointer` for information on how capsule names are compared.) If the *destructor* argument is not ``NULL``, it will be called with the capsule as its argument when it is destroyed. If this capsule will be stored as an attribute of a module, the *name* should be specified as ``modulename.attributename``.  This will enable other modules to import the capsule using :c:func:`PyCapsule_Import`. Import a pointer to a C object from a capsule attribute in a module.  The *name* parameter should specify the full name to the attribute, as in ``module.attribute``.  The *name* stored in the capsule must match this string exactly. It is legal for a capsule to have a ``NULL`` context.  This makes a ``NULL`` return code somewhat ambiguous; use :c:func:`PyCapsule_IsValid` or :c:func:`PyErr_Occurred` to disambiguate. It is legal for a capsule to have a ``NULL`` destructor.  This makes a ``NULL`` return code somewhat ambiguous; use :c:func:`PyCapsule_IsValid` or :c:func:`PyErr_Occurred` to disambiguate. It is legal for a capsule to have a ``NULL`` name.  This makes a ``NULL`` return code somewhat ambiguous; use :c:func:`PyCapsule_IsValid` or :c:func:`PyErr_Occurred` to disambiguate. On failure, set an exception and return ``NULL``. Refer to :ref:`using-capsules` for more information on using these objects. Retrieve the *pointer* stored in the capsule.  On failure, set an exception and return ``NULL``. Return ``0`` on success.  Return nonzero and set an exception on failure. Return a nonzero value if the object is valid and matches the name passed in. Return ``0`` otherwise.  This function will not fail. Return the capsule's internal *pointer* on success.  On failure, set an exception and return ``NULL``. Return the current context stored in the capsule.  On failure, set an exception and return ``NULL``. Return the current destructor stored in the capsule.  On failure, set an exception and return ``NULL``. Return the current name stored in the capsule.  On failure, set an exception and return ``NULL``. Return true if its argument is a :c:type:`PyCapsule`.  This function always succeeds. See :c:func:`PyCapsule_New` for the semantics of PyCapsule_Destructor callbacks. Set the context pointer inside *capsule* to *context*. Set the destructor inside *capsule* to *destructor*. Set the name inside *capsule* to *name*.  If non-``NULL``, the name must outlive the capsule.  If the previous *name* stored in the capsule was not ``NULL``, no attempt is made to free it. Set the void pointer inside *capsule* to *pointer*.  The pointer may not be ``NULL``. The *name* string may either be ``NULL`` or a pointer to a valid C string.  If non-``NULL``, this string must outlive the capsule.  (Though it is permitted to free it inside the *destructor*.) The type of a destructor callback for a capsule.  Defined as:: This subtype of :c:type:`PyObject` represents an opaque value, useful for C extension modules who need to pass an opaque value (as a :c:expr:`void*` pointer) through Python code to other C code.  It is often used to make a C function pointer defined in one module available to other modules, so the regular import mechanism can be used to access C APIs defined in dynamically loaded modules. object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-28 14:13+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 *no_block* ä¸åæä»»ä½å½±åã Capsule Capsule å¯¹è±¡ åå»ºä¸ä¸ªå°è£äº *pointer* ç :c:type:`PyCapsule`ã *pointer* åèå¯ä»¥ä¸ä¸º ``NULL``ã ç¡®å® *capsule* æ¯å¦æ¯ä¸ä¸ªææçã ææç capsule å¿é¡»ä¸ä¸º ``NULL``ï¼ä¼ é :c:func:`PyCapsule_CheckExact`ï¼å¨å¶ä¸­å­å¨ä¸ä¸ªä¸ä¸º ``NULL`` çæéï¼å¹¶ä¸å¶åé¨åç§°ä¸ *name* å½¢åç¸å¹éã ï¼è¯·åé :c:func:`PyCapsule_GetPointer` äºè§£å¦ä½å¯¹ capsule åç§°è¿è¡æ¯è¾çæå³ä¿¡æ¯ãï¼ å¦æ *destructor* åæ°ä¸ä¸º ``NULL``ï¼åå½å®è¢«éæ¯æ¶å°éå¸¦ capsule ä½ä¸ºåæ°æ¥è°ç¨ã å¦ææ­¤ capsule å°è¢«ä¿å­ä¸ºä¸ä¸ªæ¨¡åçå±æ§ï¼å *name* åºå½è¢«æå®ä¸º ``modulename.attributename``ã è¿å°åè®¸å¶ä»æ¨¡åä½¿ç¨ :c:func:`PyCapsule_Import` æ¥å¯¼å¥æ­¤ capsuleã ä»ä¸ä¸ªæ¨¡ååçåè£å±æ§å¯¼å¥ä¸ä¸ªæå C å¯¹è±¡çæéã *name* å½¢ååºå½æå®è¯¥å±æ§çå®æ´åç§°ï¼å°±å ``module.attribute`` è¿æ ·ã å¨å­å¨åè£ä¸­ç *name* å¿é¡»ä¸æ­¤å­ç¬¦ä¸²å®å¨å¹éã capsule å·æ ``NULL`` ä¸ä¸ææ¯å¨æ³çã è¿ä¼ä½¿å¾ ``NULL`` è¿åç æäºæ­§ä¹ï¼è¯·ä½¿ç¨ :c:func:`PyCapsule_IsValid` æ :c:func:`PyErr_Occurred` æ¥æ¶é¤æ­§ä¹ã capsule å·æ ``NULL`` ææå¨æ¯åæ³çã è¿ä¼ä½¿å¾ ``NULL`` è¿åç æäºæ­§ä¹ï¼è¯·ä½¿ç¨ :c:func:`PyCapsule_IsValid` æ :c:func:`PyErr_Occurred` æ¥æ¶é¤æ­§ä¹ã capsule å·æ ``NULL`` åç§°æ¯åæ³çã è¿ä¼ä½¿å¾ ``NULL`` è¿åç æäºæ­§ä¹ï¼è¯·ä½¿ç¨ :c:func:`PyCapsule_IsValid` æ :c:func:`PyErr_Occurred` æ¥æ¶é¤æ­§ä¹ã å¨å¤±è´¥æ¶è®¾ç½®ä¸ä¸ªå¼å¸¸å¹¶è¿å ``NULL``ã æå³ä½¿ç¨è¿äºå¯¹è±¡çæ´å¤ä¿¡æ¯è¯·åé :ref:`using-capsules`ã æåä¿å­å¨ capsule ä¸­ç *pointer*ã å¨å¤±è´¥æ¶è®¾ç½®ä¸ä¸ªå¼å¸¸å¹¶è¿å ``NULL``ã æåæ¶è¿å ``0``ã å¤±è´¥æ¶è¿åéé¶å¼å¹¶è®¾ç½®ä¸ä¸ªå¼å¸¸ã å¦æå¯¹è±¡ææå¹¶ä¸å¹éä¼ å¥çåç§°åè¿åéé¶å¼ã å¦åè¿å ``0``ã æ­¤å½æ°ä¸å®ä¸ä¼å¤±è´¥ã æåæ¶è¿å capsule çåé¨ *æé*ã  å¨å¤±è´¥æ¶è®¾ç½®ä¸ä¸ªå¼å¸¸å¹¶è¿å ``NULL``ã è¿åä¿å­å¨ capsule ä¸­çå½åä¸ä¸æã å¨å¤±è´¥æ¶è®¾ç½®ä¸ä¸ªå¼å¸¸å¹¶è¿å ``NULL``ã è¿åä¿å­å¨ capsule ä¸­çå½åææå¨ã å¨å¤±è´¥æ¶è®¾ç½®ä¸ä¸ªå¼å¸¸å¹¶è¿å ``NULL``ã è¿åä¿å­å¨ capsule ä¸­çå½ååç§°ã å¨å¤±è´¥æ¶è®¾ç½®ä¸ä¸ªå¼å¸¸å¹¶è¿å ``NULL``ã å¦æåæ°æ¯ä¸ä¸ª :c:type:`PyCapsule` åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã åé :c:func:`PyCapsule_New` æ¥è·å PyCapsule_Destructor è¿åå¼çè¯­ä¹ã å° *capsule* åé¨çä¸ä¸ææéè®¾ä¸º *context*ã å° *capsule* åé¨çææå¨è®¾ä¸º *destructor*ã å° *capsule* åé¨çåç§°è®¾ä¸º *name*ã å¦æä¸ä¸º ``NULL``ï¼ååç§°çå­å¨æå¿é¡»æ¯ capsule æ´é¿ã å¦æä¹åä¿å­å¨ capsule ä¸­ç *name* ä¸ä¸º ``NULL``ï¼åä¸ä¼å°è¯éæ¾å®ã å° *capsule* åé¨çç©ºæéè®¾ä¸º *pointer*ã æéä¸å¯ä¸º ``NULL``ã å­ç¬¦ä¸² *name* å¯ä»¥æ¯ ``NULL`` ææ¯ä¸ä¸ªæåææç C å­ç¬¦ä¸²çæéã å¦æä¸ä¸º ``NULL``ï¼åæ­¤å­ç¬¦ä¸²å¿é¡»æ¯ capsule é¿ï¼è½ç¶ä¹åè®¸å¨ *destructor* ä¸­éæ¾å®ãï¼ Capsule çææå¨åè°çç±»åã å®ä¹å¦ä¸ï¼ è¿ä¸ª :c:type:`PyObject` çå­ç±»åä»£è¡¨ä¸ä¸ªéèçå¼ï¼éç¨äºéè¦å°éèå¼ï¼ä½ä¸º :c:expr:`void*` æéï¼éè¿ Python ä»£ç ä¼ éå°å¶ä» C ä»£ç ç C æ©å±æ¨¡åã å®å¸¸å¸¸è¢«ç¨æ¥è®©å¨ä¸ä¸ªæ¨¡åä¸­å®ä¹ç C å½æ°æéå¨å¶ä»æ¨¡åä¸­å¯ç¨ï¼è¿æ ·å°±å¯ä»¥ä½¿ç¨å¸¸è§å¯¼å¥æºå¶æ¥è®¿é®å¨å¨æå è½½çæ¨¡åä¸­å®ä¹ç C APIã object -- å¯¹è±¡ 