Þ    (      \                j     ¾     Ê   Ç       4   ¥     Ú    è  ì   ñ  Ç  Þ    ¦	  Æ   D  Þ     ·   ê     ¢  è   ¹  ½   ¢  ç   `  M   H  L     R   ã  Ï   6  F     6   M  `        å  q   x  w   ê  Ï   b     2     À  8  D  |  }  I   ú  s  D  Ó   ¸       
        ©     ­  ½  ´  p   r  Á   ã  É   ¥     o  '   |  	   ¤  ÿ   ®  è   ®   x  !  ¶  $  Ê   Ç%  Ñ   &  §   d'     (  ö   #(  ¯   )  ô   Ê)  G   ¿*  G   +  I   O+  ¢   +  2   <,  9   o,  F   ©,     ð,  {   u-  ~   ñ-     p.  x   /  {   /     0  7  1  G   S2  O  2  Ï   ë3     »4     È4     Ý4     á4   Calling this API without :term:`GIL` held had been allowed for historical reason. It is no longer allowed. Clear watcher identified by *watcher_id* previously returned from :c:func:`PyDict_AddWatcher`. Return ``0`` on success, ``-1`` on error (e.g. if the given *watcher_id* was never registered.) Determine if dictionary *p* contains *key*.  If an item in *p* is matches *key*, return ``1``, otherwise return ``0``.  On error, return ``-1``. This is equivalent to the Python expression ``key in p``. Dictionary Objects Empty an existing dictionary of all key-value pairs. For example:: Insert *val* into the dictionary *p* using *key* as a key. *key* should be a :c:expr:`const char*`.  The key object is created using ``PyUnicode_FromString(key)``.  Return ``0`` on success or ``-1`` on failure.  This function *does not* steal a reference to *val*. Insert *val* into the dictionary *p* with a key of *key*.  *key* must be :term:`hashable`; if it isn't, :exc:`TypeError` will be raised. Return ``0`` on success or ``-1`` on failure.  This function *does not* steal a reference to *val*. Iterate over all key-value pairs in the dictionary *p*.  The :c:type:`Py_ssize_t` referred to by *ppos* must be initialized to ``0`` prior to the first call to this function to start the iteration; the function returns true for each pair in the dictionary, and false once all pairs have been reported.  The parameters *pkey* and *pvalue* should either point to :c:expr:`PyObject*` variables that will be filled in with each key and value, respectively, or may be ``NULL``.  Any references returned through them are borrowed.  *ppos* should not be altered during iteration. Its value represents offsets within the internal dictionary structure, and since the structure is sparse, the offsets are not consecutive. Iterate over mapping object *b* adding key-value pairs to dictionary *a*. *b* may be a dictionary, or any object supporting :c:func:`PyMapping_Keys` and :c:func:`PyObject_GetItem`. If *override* is true, existing pairs in *a* will be replaced if a matching key is found in *b*, otherwise pairs will only be added if there is not a matching key in *a*. Return ``0`` on success or ``-1`` if an exception was raised. Mark dictionary *dict* as watched. The callback granted *watcher_id* by :c:func:`PyDict_AddWatcher` will be called when *dict* is modified or deallocated. Return ``0`` on success or ``-1`` on error. Note that exceptions which occur while calling :meth:`__hash__` and :meth:`__eq__` methods and creating a temporary string object will get suppressed. To get error reporting use :c:func:`PyDict_GetItemWithError()` instead. Note that exceptions which occur while calling :meth:`__hash__` and :meth:`__eq__` methods will get suppressed. To get error reporting use :c:func:`PyDict_GetItemWithError()` instead. PyUnicode_FromString() Register *callback* as a dictionary watcher. Return a non-negative integer id which must be passed to future calls to :c:func:`PyDict_Watch`. In case of error (e.g. no more watcher IDs available), return ``-1`` and set an exception. Remove the entry in dictionary *p* which has a key specified by the string *key*. If *key* is not in the dictionary, :exc:`KeyError` is raised. Return ``0`` on success or ``-1`` on failure. Remove the entry in dictionary *p* with key *key*. *key* must be :term:`hashable`; if it isn't, :exc:`TypeError` is raised. If *key* is not in the dictionary, :exc:`KeyError` is raised. Return ``0`` on success or ``-1`` on failure. Return a :c:type:`PyListObject` containing all the items from the dictionary. Return a :c:type:`PyListObject` containing all the keys from the dictionary. Return a :c:type:`PyListObject` containing all the values from the dictionary *p*. Return a :class:`types.MappingProxyType` object for a mapping which enforces read-only behavior.  This is normally used to create a view to prevent modification of the dictionary for non-dynamic class types. Return a new dictionary that contains the same key-value pairs as *p*. Return a new empty dictionary, or ``NULL`` on failure. Return the number of items in the dictionary.  This is equivalent to ``len(p)`` on a dictionary. Return the object from dictionary *p* which has a key *key*.  Return ``NULL`` if the key *key* is not present, but *without* setting an exception. Return true if *p* is a dict object or an instance of a subtype of the dict type.  This function always succeeds. Return true if *p* is a dict object, but not an instance of a subtype of the dict type.  This function always succeeds. The dictionary *p* should not be mutated during iteration.  It is safe to modify the values of the keys as you iterate over the dictionary, but only so long as the set of keys does not change.  For example:: This instance of :c:type:`PyTypeObject` represents the Python dictionary type.  This is the same object as :class:`dict` in the Python layer. This is the same as :c:func:`PyDict_GetItem`, but *key* is specified as a :c:expr:`const char*`, rather than a :c:expr:`PyObject*`. This is the same as ``PyDict_Merge(a, b, 1)`` in C, and is similar to ``a.update(b)`` in Python except that :c:func:`PyDict_Update` doesn't fall back to the iterating over a sequence of key value pairs if the second argument has no "keys" attribute.  Return ``0`` on success or ``-1`` if an exception was raised. This is the same as the Python-level :meth:`dict.setdefault`.  If present, it returns the value corresponding to *key* from the dictionary *p*.  If the key is not in the dict, it is inserted with value *defaultobj* and *defaultobj* is returned.  This function evaluates the hash function of *key* only once, instead of evaluating it independently for the lookup and the insertion. This subtype of :c:type:`PyObject` represents a Python dictionary object. Update or merge into dictionary *a*, from the key-value pairs in *seq2*. *seq2* must be an iterable object producing iterable objects of length 2, viewed as key-value pairs.  In case of duplicate keys, the last wins if *override* is true, else the first wins. Return ``0`` on success or ``-1`` if an exception was raised. Equivalent Python (except for the return value):: Variant of :c:func:`PyDict_GetItem` that does not suppress exceptions. Return ``NULL`` **with** an exception set if an exception occurred.  Return ``NULL`` **without** an exception set if the key wasn't present. built-in function dictionary len object Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 å¨ä¸ä¿æ :term:`GIL` çæåµä¸è°ç¨æ­¤ API æ¾å åå²åå èè¢«åè®¸ã ç°å¨å·²ä¸åè¢«åè®¸ã æ¸ç©ºç±ä¹åä» :c:func:`PyDict_AddWatcher` è¿åç *watcher_id* ææ è¯ç watcherã æåæ¶è¿å ``0``ï¼åºéæ¶ï¼ä¾å¦å½ç»å®ç *watcher_id* æªè¢«æ³¨åï¼è¿å ``-1``ã ç¡®å® *key* æ¯å¦åå«å¨å­å¸ *p* ä¸­ãå¦æ *key* å¹éä¸ *p* çæä¸é¡¹ï¼åè¿å ``1`` ï¼å¦åè¿å ``0`` ãè¿å ``-1`` è¡¨ç¤ºåºéãè¿ç­åäºPythonè¡¨è¾¾å¼ ``key in p`` ã å­å¸å¯¹è±¡ æ¸ç©ºç°æå­å¸çææé®å¼å¯¹ã ä¾å¦ï¼ ä½¿ç¨ *key* ä½ä¸ºé®å° *val* æå¥å°å­å¸ *p* ä¸­ã *key* åºä¸º :c:expr:`const char*`ã é®å¯¹è±¡æ¯ä½¿ç¨ ``PyUnicode_FromString(key)`` åå»ºçãæåæ¶è¿å ``0``ï¼å¤±è´¥æ¶è¿å ``-1``ã æ­¤å½æ° *ä¸ä¼* çªåå¯¹ *val* çå¼ç¨ã ä½¿ç¨ *key* ä½ä¸ºé®å° *val* æå¥å­å¸ *p*ã *key* å¿é¡»ä¸º :term:`hashable`ï¼å¦æä¸æ¯ï¼åå°å¼å :exc:`TypeError`ã æåæ¶è¿å ``0``ï¼å¤±è´¥æ¶è¿å ``-1``ã æ­¤å½æ° *ä¸ä¼* éå¸¦å¯¹ *val* çå¼ç¨ã è¿­ä»£å­å¸ *p* ä¸­çææé®å¼å¯¹ã å¨ç¬¬ä¸æ¬¡è°ç¨æ­¤å½æ°å¼å§è¿­ä»£ä¹åï¼ç± *ppos* æå¼ç¨ç :c:type:`Py_ssize_t` å¿é¡»è¢«åå§åä¸º ``0``ï¼è¯¥å½æ°å°ä¸ºå­å¸ä¸­çæ¯ä¸ªé®å¼å¯¹è¿åçå¼ï¼ä¸æ¦ææé®å¼å¯¹é½æ¥åå®æ¯åè¿ååå¼ã å½¢å *pkey* å *pvalue* åºå½æå :c:expr:`PyObject*` åéï¼å®ä»¬å°åå«ä½¿ç¨æ¯ä¸ªé®åå¼æ¥å¡«åï¼æèä¹å¯ä»¥ä¸º ``NULL``ã éè¿å®ä»¬è¿åçä»»ä½å¼ç¨é½æ¯æåçã *ppos* å¨è¿­ä»£æé´ä¸åºè¢«æ´æ¹ã å®çå¼è¡¨ç¤ºåé¨å­å¸ç»æä¸­çåç§»éï¼å¹¶ä¸ç±äºç»ææ¯ç¨ççï¼å æ­¤åç§»éå¹¶ä¸è¿ç»­ã å¯¹æ å°å¯¹è±¡ *b* è¿è¡è¿­ä»£ï¼å°é®å¼å¯¹æ·»å å°å­å¸ *a*ã *b* å¯ä»¥æ¯ä¸ä¸ªå­å¸ï¼æä»»ä½æ¯æ :c:func:`PyMapping_Keys` å :c:func:`PyObject_GetItem` çå¯¹è±¡ã å¦æ *override* ä¸ºçå¼ï¼åå¦æå¨ *b* ä¸­æ¾å°ç¸åçé®å *a* ä¸­å·²å­å¨çç¸åºé®å¼å¯¹å°è¢«æ¿æ¢ï¼å¦åå¦æå¨ *a* ä¸­æ²¡æç¸åçé®ååªæ¯æ·»å é®å¼å¯¹ã å½æåæ¶è¿å ``0`` æèå½å¼åå¼å¸¸æ¶è¿å ``-1``ã å°å­å¸ *dict* æ è®°ä¸º watchedã ç± :c:func:`PyDict_AddWatcher` ææ *watcher_id* å¯¹åºçåè°å°å¨ *dict* è¢«ä¿®æ¹æéæ¾æ¶è¢«è°ç¨ã æåæ¶è¿å ``0``ï¼åºéæ¶è¿å ``-1``ã éè¦æ³¨æçæ¯ï¼è°ç¨ :meth:`__hash__` ã :meth:`__eq__` æ¹æ³ååå»ºä¸ä¸ªä¸´æ¶çå­ç¬¦ä¸²å¯¹è±¡æ¶äº§ççå¼å¸¸ä¸ä¼è¢«æåºãæ¹ç¨ :c:func:`PyDict_GetItemWithError()` è·å¾éè¯¯æ¥åã éè¦æ³¨æçæ¯ï¼è°ç¨ :meth:`__hash__` å :meth:`__eq__` æ¹æ³äº§ççå¼å¸¸ä¸ä¼è¢«æåºãæ¹ç¨ :c:func:`PyDict_GetItemWithError()` è·å¾éè¯¯æ¥åã PyUnicode_FromString() å¨å­å¸ä¸æ³¨å *callback* æ¥ä½ä¸º watcherãè¿åå¼ä¸ºéè´æ°çæ´æ° idï¼ä½ä¸ºå°æ¥è°ç¨ :c:func:`PyDict_Watch` çæ¶åä½¿ç¨ãå¦æåºç°éè¯¯ï¼æ¯å¦æ²¡æè¶³å¤çå¯ç¨ watcher IDï¼ï¼è¿å ``-1`` å¹¶ä¸è®¾ç½®å¼å¸¸ã ç§»é¤å­å¸ *p* ä¸­ç±å­ç¬¦ä¸² *key* æå®çé®çæ¡ç®ã å¦æå­å¸ä¸­æ²¡æ *key*ï¼åä¼å¼å :exc:`KeyError`ã æåæ¶è¿å ``0``ï¼å¤±è´¥æ¶è¿å ``-1``ã ç§»é¤å­å¸ *p* ä¸­é®ä¸º *key* çæ¡ç®ã *key* å¿é¡»æ¯ :term:`hashable`ï¼å¦æä¸æ¯ï¼åä¼å¼å :exc:`TypeError`ã å¦æå­å¸ä¸­æ²¡æ *key*ï¼åä¼å¼å :exc:`KeyError`ã æåæ¶è¿å ``0`` æèå¤±è´¥æ¶è¿å ``-1``ã è¿åä¸ä¸ªåå«å­å¸ä¸­ææé®å¼é¡¹ç :c:type:`PyListObject`ã è¿åä¸ä¸ªåå«å­å¸ä¸­ææé®(keys)ç :c:type:`PyListObject`ã è¿åä¸ä¸ªåå«å­å¸ä¸­ææå¼(values)ç :c:type:`PyListObject`ã è¿å :class:`types.MappingProxyType` å¯¹è±¡ï¼ç¨äºå¼ºå¶æ§è¡åªè¯»è¡ä¸ºçæ å°ãè¿éå¸¸ç¨äºåå»ºè§å¾ä»¥é²æ­¢ä¿®æ¹éå¨æç±»ç±»åçå­å¸ã è¿åä¸ *p* åå«ç¸åé®å¼å¯¹çæ°å­å¸ã è¿åä¸ä¸ªæ°çç©ºå­å¸ï¼å¤±è´¥æ¶è¿å ``NULL``ã è¿åå­å¸ä¸­é¡¹ç®æ°ï¼ç­ä»·äºå¯¹å­å¸ *p* ä½¿ç¨ ``len(p)``ã ä»å­å¸ *p* ä¸­è¿åä»¥ *key* ä¸ºé®çå¯¹è±¡ã å¦æé®å *key* ä¸å­å¨ä½ *æ²¡æ* è®¾ç½®ä¸ä¸ªå¼å¸¸åè¿å ``NULL``ã å¦æ *p* æ¯ä¸ä¸ª dict å¯¹è±¡æè dict ç±»åçå­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æ *p* æ¯ä¸ä¸ª dict å¯¹è±¡ä½ä¸æ¯ dict ç±»åçå­ç±»åçå®ä¾åè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å­å¸ *p* ä¸åºè¯¥å¨éåæé´åçæ¹åãå¨éåå­å¸æ¶ï¼æ¹åé®ä¸­çå¼æ¯å®å¨çï¼ä½ä»éäºé®çéåä¸åçæ¹åãä¾å¦:: Pythonå­å¸ç±»åè¡¨ç¤ºä¸º :c:type:`PyTypeObject` çå®ä¾ãè¿ä¸Pythonå±é¢ç :class:`dict` æ¯ç¸åçå¯¹è±¡ã è¿ä¸ :c:func:`PyDict_GetItem` ä¸æ ·ï¼ä½æ¯ *key* è¢«æå®ä¸º :c:expr:`const char*`ï¼èä¸æ¯ :c:expr:`PyObject*`ã è¿ä¸ C ä¸­ç ``PyDict_Merge(a, b, 1)`` ä¸æ ·ï¼ä¹ç±»ä¼¼äº Python ä¸­ç ``a.update(b)``ï¼å·®å«å¨äº :c:func:`PyDict_Update` å¨ç¬¬äºä¸ªåæ°æ²¡æ "keys" å±æ§æ¶ä¸ä¼åéå°è¿­ä»£é®å¼å¯¹çåºåã å½æåæ¶è¿å ``0`` æèå½å¼åå¼å¸¸æ¶è¿å ``-1``ã è¿è·Pythonå±é¢ç :meth:`dict.setdefault` ä¸æ ·ãå¦æé® *key* å­å¨ï¼å®è¿åå¨å­å¸ *p* éé¢å¯¹åºçå¼ãå¦æé®ä¸å­å¨ï¼å®ä¼åå¼ *defaultobj*Â ä¸èµ·æå¥å¹¶è¿å *defaultobj*Â ãè¿ä¸ªå½æ°åªè®¡ç® *key* çåå¸å½æ°ä¸æ¬¡ï¼èä¸æ¯å¨æ¥æ¾åæå¥æ¶åå«è®¡ç®å®ã è¿ä¸ª :c:type:`PyObject` çå­ç±»åä»£è¡¨ä¸ä¸ªPythonå­å¸å¯¹è±¡ã å° *seq2* ä¸­çé®å¼å¯¹æ´æ°æåå¹¶å°å­å¸ *a*ã *seq2* å¿é¡»ä¸ºäº§çé¿åº¦ä¸º 2 çç¨ä½é®å¼å¯¹çåç´ çå¯è¿­ä»£å¯¹è±¡ã å½å­å¨éå¤çé®æ¶ï¼å¦æ *override* çå¼åæååºç°çé®èåºã å½æåæ¶è¿å ``0`` æèå½å¼åå¼å¸¸æ¶è¿å ``-1``ã ç­ä»·ç Python ä»£ç ï¼è¿åå¼é¤å¤ï¼:: :c:func:`PyDict_GetItem` çåç§ï¼å®ä¸ä¼å±è½å¼å¸¸ã å½å¼å¸¸åçæ¶å°è¿å ``NULL`` **å¹¶ä¸** è®¾ç½®ä¸ä¸ªå¼å¸¸ã å¦æé®ä¸å­å¨åè¿å ``NULL`` **å¹¶ä¸ä¸ä¼** è®¾ç½®ä¸ä¸ªå¼å¸¸ã åç½®å½æ° dictionary -- å­å¸ len object -- å¯¹è±¡ 