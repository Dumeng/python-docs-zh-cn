Þ          Ì               |  "   }  ¨         I  T  Y  M  ®  ¹   ü      ¶  )   W  M    N   Ï  a     @     Ö   Á     	  ¡   ¦	  K   H
  [   
  ¹   ð
  8  ª  .   ã       ½  $  +   â          ¢  L  ²  O  ÿ  ¼   O       1      1  Ò  R     s   W  G   Ë  Ð        ä  Æ   ñ  =   ¸  [   ö  «   R    þ  '        6   :c:data:`Py_Ellipsis` is immortal. Adjust start/end slice indices assuming a sequence of the specified length. Out of bounds indices are clipped in a manner consistent with the handling of normal slices. Ellipsis Object Extract the start, stop and step data members from a slice object as C integers.  Silently reduce values larger than ``PY_SSIZE_T_MAX`` to ``PY_SSIZE_T_MAX``, silently boost the start and stop values less than ``PY_SSIZE_T_MIN`` to ``PY_SSIZE_T_MIN``, and silently boost the step values less than ``-PY_SSIZE_T_MAX`` to ``-PY_SSIZE_T_MAX``. If ``Py_LIMITED_API`` is not set or set to the value between ``0x03050400`` and ``0x03060000`` (not including) or ``0x03060100`` or higher :c:func:`!PySlice_GetIndicesEx` is implemented as a macro using :c:func:`!PySlice_Unpack` and :c:func:`!PySlice_AdjustIndices`. Arguments *start*, *stop* and *step* are evaluated more than once. If ``Py_LIMITED_API`` is set to the value less than ``0x03050400`` or between ``0x03060000`` and ``0x03060100`` (not including) :c:func:`!PySlice_GetIndicesEx` is a deprecated function. Retrieve the start, stop and step indices from the slice object *slice*, assuming a sequence of length *length*. Treats indices greater than *length* as errors. Return ``-1`` on error, ``0`` on success. Return a new slice object with the given values.  The *start*, *stop*, and *step* parameters are used as the values of the slice object attributes of the same names.  Any of the values may be ``NULL``, in which case the ``None`` will be used for the corresponding attribute.  Return ``NULL`` if the new object could not be allocated. Return the length of the slice.  Always successful.  Doesn't call Python code. Return true if *ob* is a slice object; *ob* must not be ``NULL``.  This function always succeeds. Returns ``0`` on success and ``-1`` on error with exception set. Returns ``0`` on success and ``-1`` on error with no exception set (unless one of the indices was not :const:`None` and failed to be converted to an integer, in which case ``-1`` is returned with an exception set). Slice Objects The Python ``Ellipsis`` object.  This object has no methods.  Like :c:data:`Py_None`, it is an `immortal <https://peps.python.org/pep-0683/>`_. singleton object. The parameter type for the *slice* parameter was ``PySliceObject*`` before. The type object for slice objects.  This is the same as :class:`slice` in the Python layer. This function is considered not safe for resizable sequences. Its invocation should be replaced by a combination of :c:func:`PySlice_Unpack` and :c:func:`PySlice_AdjustIndices` where :: Usable replacement for :c:func:`PySlice_GetIndices`.  Retrieve the start, stop, and step indices from the slice object *slice* assuming a sequence of length *length*, and store the length of the slice in *slicelength*.  Out of bounds indices are clipped in a manner consistent with the handling of normal slices. You probably do not want to use this function. is replaced by :: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-30 14:13+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :c:data:`Py_Ellipsis` æ¯æ°¸ä¹æ§å¯¹è±¡ã å° start/end åçç´¢å¼å·æ ¹æ®æå®çåºåé¿åº¦è¿è¡è°æ´ã è¶åºèå´çç´¢å¼å·ä¼ä»¥ä¸æ®éåçä¸è´çæ¹å¼è¿è¡åªåã Ellipsis å¯¹è±¡ ä»åçå¯¹è±¡ä¸­å° start, stop å step æ°æ®æåæåä¸º C æ´æ°ã ä¼éé»å°å°å¤§äº ``PY_SSIZE_T_MAX`` çå¼åå°ä¸º ``PY_SSIZE_T_MAX``ï¼éé»å°å°å°äº ``PY_SSIZE_T_MIN`` ç start å stop å¼å¢å¤§ä¸º ``PY_SSIZE_T_MIN``ï¼å¹¶éé»å°å°å°äº ``-PY_SSIZE_T_MAX`` ç step å¼å¢å¤§ä¸º ``-PY_SSIZE_T_MAX``ã å¦æ ``Py_LIMITED_API`` æªè®¾ç½®æè®¾ç½®ä¸º ``0x03050400`` ä¸ ``0x03060000`` ä¹é´çå¼ï¼ä¸åæ¬è¾¹çï¼æ ``0x03060100`` ææ´å¤§å :c:func:`!PySlice_GetIndicesEx` ä¼è¢«å®ç°ä¸ºä¸ä¸ªä½¿ç¨ :c:func:`!PySlice_Unpack` å :c:func:`!PySlice_AdjustIndices` çå®ã åæ° *start*, *stop* å *step* ä¼è¢«å¤è¢«æ±å¼ã å¦æ ``Py_LIMITED_API`` è®¾ç½®ä¸ºå°äº ``0x03050400`` æ ``0x03060000`` ä¸ ``0x03060100`` ä¹é´çå¼ï¼ä¸åæ¬è¾¹çï¼å :c:func:`!PySlice_GetIndicesEx` ä¸ºå·²å¼ç¨çå½æ°ã ä»åçå¯¹è±¡ *slice* æå start, stop å step ç´¢å¼å·ï¼å°åºåé¿åº¦è§ä¸º *length*ã å¤§äº *length* çåºåå·å°è¢«å½ä½éè¯¯ã åºéæ¶è¿å ``-1``ï¼æåæ¶è¿å ``0``ã è¿åä¸ä¸ªå·æç»å®å¼çæ°åçå¯¹è±¡ã *start*, *stop* å *step* å½¢åä¼è¢«ç¨ä½ slice å¯¹è±¡ç¸åºåç§°çå±æ§çå¼ã è¿äºå¼ä¸­çä»»ä½ä¸ä¸ªé½å¯ä»¥ä¸º ``NULL``ï¼å¨è¿ç§æåµä¸å°ä½¿ç¨ ``None`` ä½ä¸ºå¯¹åºå±æ§çå¼ã å¦ææ°å¯¹è±¡æ æ³è¢«åéåè¿å ``NULL``ã è¿ååççé¿åº¦ã æ­¤æä½æ»æ¯ä¼æåã ä¸ä¼è°ç¨ Python ä»£ç ã å¦æ *ob* æ¯ä¸ä¸ª slice å¯¹è±¡åè¿åçå¼ï¼*ob* å¿é¡»ä¸ä¸º ``NULL``ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã æåæ¶è¿å ``0``ï¼åºéæ¶è¿å ``-1`` å¹¶ä¸ä¸è®¾ç½®å¼å¸¸ã æåæ¶è¿å ``0``ï¼åºéæ¶è¿å ``-1`` å¹¶ä¸ä¸è®¾ç½®å¼å¸¸ï¼é¤éæä¸ªåºåå·ä¸ä¸º :const:`None` ä¸æ æ³è¢«è½¬æ¢ä¸ºæ´æ°ï¼å¨è¿ç§æåµä¸ä¼è¿å ``-1`` å¹¶ä¸è®¾ç½®ä¸ä¸ªå¼å¸¸ï¼ã åçå¯¹è±¡ Python ``Ellipsis`` å¯¹è±¡ã æ­¤æ²¡ææ²¡æä»»ä½æ¹æ³ã å :c:data:`Py_None` ä¸æ ·ï¼å®æ¯ä¸ä¸ª `æ°¸ä¹æ§å¯¹è±¡immortal <https://peps.python.org/pep-0683/>`_ã å¹¶ä¸å±äºåä¾å¯¹è±¡ã ä¹å *slice* å½¢åçå½¢åç±»åæ¯ ``PySliceObject*``ã åçå¯¹è±¡çç±»åå¯¹è±¡ã å®ä¸ Python å±é¢ç :class:`slice` æ¯ç¸åçå¯¹è±¡ã æ­¤å½æ°å¯¹äºå¯åå¤§å°åºåæ¥è¯´æ¯ä¸å®å¨çã å¯¹å®çè°ç¨åºè¢«æ¿æ¢ä¸º :c:func:`PySlice_Unpack` å :c:func:`PySlice_AdjustIndices` çç»åï¼å¶ä¸­ :: :c:func:`PySlice_GetIndices` çå¯ç¨æ¿ä»£ã ä»åçå¯¹è±¡ *slice* æå start, stop å step ç´¢å¼å·ï¼å°åºåé¿åº¦è§ä¸º *length*ï¼å¹¶å°åççé¿åº¦ä¿å­å¨ *slicelength* ä¸­ï¼è¶åºèå´çç´¢å¼å·ä¼ä»¥ä¸æ®éåçä¸è´çæ¹å¼è¿è¡åªåã ä½ å¯è½ä¸ä¼æç®ä½¿ç¨æ­¤å½æ°ã ä¼è¢«æ¿æ¢ä¸º :: 