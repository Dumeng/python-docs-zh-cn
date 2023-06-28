Þ    $      <              \  c   ]  I   Á       m   "         §  ?   È  A     A   J          ¦  d   µ      ®   ¶	  N   e
  M   ´
                  n   ­  X    ¯  u    %  -   Ä     ò  M        Ó  A   ä  C   &  C   j  #   ®  8   Ò  4        @     O  ½  V  ^     T   s     È  \   Ø  :  5  Ó  p  ;   D  ;     ;   ¼     ø       O       k     þ  N     K   í     9     Í  ²   d          ¢   à  ¸!  Õ  #  (   o%     %  Q   +&     }&  :   &  :   Å&  :    '  *   ;'  F   f'  4   ­'  	   â'     ì'   Create a :c:type:`PyFloatObject` object based on the string value in *str*, or ``NULL`` on failure. Create a :c:type:`PyFloatObject` object from *v*, or ``NULL`` on failure. Floating Point Objects Note that on a non-IEEE platform this will refuse to unpack a bytes string that represents a NaN or infinity. On non-IEEE platforms with more precision, or larger dynamic range, than IEEE 754 supports, not all values can be packed; on non-IEEE platforms with less precision, or smaller dynamic range, not all values can be unpacked. What happens in such cases is partly accidental (alas). On platforms that appear to use IEEE 754 formats these functions work by copying bits. On other platforms, the 2-byte format is identical to the IEEE 754 binary16 half-precision format, the 4-byte format (32-bit) is identical to the IEEE 754 binary32 single precision format, and the 8-byte format to the IEEE 754 binary64 double precision format, although the packing of INFs and NaNs (if such things exist on the platform) isn't handled correctly, and attempting to unpack a bytes string containing an IEEE INF or NaN will raise an exception. Pack a C double as the IEEE 754 binary16 half-precision format. Pack a C double as the IEEE 754 binary32 single precision format. Pack a C double as the IEEE 754 binary64 double precision format. Pack and Unpack functions Pack functions Return a C :c:expr:`double` representation of the contents of *pyfloat*, but without error checking. Return a C :c:expr:`double` representation of the contents of *pyfloat*.  If *pyfloat* is not a Python floating point object but has a :meth:`__float__` method, this method will first be called to convert *pyfloat* into a float. If ``__float__()`` is not defined then it falls back to :meth:`__index__`. This method returns ``-1.0`` upon failure, so one should call :c:func:`PyErr_Occurred` to check for errors. Return a structseq instance which contains information about the precision, minimum and maximum values of a float. It's a thin wrapper around the header file :file:`float.h`. Return the maximum representable finite float *DBL_MAX* as C :c:expr:`double`. Return the minimum normalized positive float *DBL_MIN* as C :c:expr:`double`. Return true if its argument is a :c:type:`PyFloatObject` or a subtype of :c:type:`PyFloatObject`.  This function always succeeds. Return true if its argument is a :c:type:`PyFloatObject`, but not a subtype of :c:type:`PyFloatObject`.  This function always succeeds. Return value: The unpacked double.  On error, this is ``-1.0`` and :c:func:`PyErr_Occurred` is true (and an exception is set, most likely :exc:`OverflowError`). Return value: ``0`` if all is OK, ``-1`` if error (and an exception is set, most likely :exc:`OverflowError`). The pack and unpack functions provide an efficient platform-independent way to store floating-point values as byte strings. The Pack routines produce a bytes string from a C :c:expr:`double`, and the Unpack routines produce a C :c:expr:`double` from such a bytes string. The suffix (2, 4 or 8) specifies the number of bytes in the bytes string. The pack routines write 2, 4 or 8 bytes, starting at *p*. *le* is an :c:expr:`int` argument, non-zero if you want the bytes string in little-endian format (exponent last, at ``p+1``, ``p+3``, or ``p+6`` ``p+7``), zero if you want big-endian format (exponent first, at *p*). The :c:data:`PY_BIG_ENDIAN` constant can be used to use the native endian: it is equal to ``1`` on big endian processor, or ``0`` on little endian processor. The unpack routines read 2, 4 or 8 bytes, starting at *p*.  *le* is an :c:expr:`int` argument, non-zero if the bytes string is in little-endian format (exponent last, at ``p+1``, ``p+3`` or ``p+6`` and ``p+7``), zero if big-endian (exponent first, at *p*). The :c:data:`PY_BIG_ENDIAN` constant can be used to use the native endian: it is equal to ``1`` on big endian processor, or ``0`` on little endian processor. There are two problems on non-IEEE platforms: This instance of :c:type:`PyTypeObject` represents the Python floating point type.  This is the same object as :class:`float` in the Python layer. This subtype of :c:type:`PyObject` represents a Python floating point object. Unpack functions Unpack the IEEE 754 binary16 half-precision format as a C double. Unpack the IEEE 754 binary32 single precision format as a C double. Unpack the IEEE 754 binary64 double precision format as a C double. Use :meth:`__index__` if available. What this does is undefined if *x* is a NaN or infinity. ``-0.0`` and ``+0.0`` produce the same bytes string. floating point object Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 æ ¹æ®å­ç¬¦ä¸² *str* çå¼åå»ºä¸ä¸ª :c:type:`PyFloatObject`ï¼å¤±è´¥æ¶è¿å ``NULL``ã æ ¹æ® *v* åå»ºä¸ä¸ª :c:type:`PyFloatObject` å¯¹è±¡ï¼å¤±è´¥æ¶è¿å ``NULL``ã æµ®ç¹æ°å¯¹è±¡ è¯·æ³¨æå¨é IEEE å¹³å°ä¸æ­¤å½æ°å°æç»è§£åè¡¨ç¤º NaN ææ ç©·å¤§çå­èä¸²ã å¨å·ææ¯ IEEE 754 ææ¯æçæ´é«ç²¾åº¦ï¼ææ´å¤§å¨æèå´çé IEEE å¹³å°ä¸ï¼ä¸æ¯ææçå¼é½è½è¢«æåï¼å¨å·ææ´ä½ç²¾åº¦ï¼ææ´å°å¨æèå´çé IEEE å¹³å°ä¸ï¼åä¸æ¯ææçå¼é½è½è¢«è§£åã å¨è¿ç§æåµä¸åççäºææä¸é¨åå°æ¯å¶ç¶çï¼æ å¥ï¼ã å¨ææ¾ä½¿ç¨ IEEE 754 æ ¼å¼çå¹³å°ä¸è¿äºå½æ°æ¯éè¿æ·è´æ¯ç¹ä½æ¥å®ç°çã å¨å¶ä»å¹³å°ä¸ï¼2 å­èæ ¼å¼ä¸ IEEE 754 binary16 åç²¾åº¦æ ¼å¼ç¸åï¼4 å­èæ ¼å¼ (32 ä½) ä¸ IEEE 754 binary32 åç²¾åº¦æ ¼å¼ç¸åï¼è 8 å­èæ ¼å¼åä¸ IEEE 754 åç²¾åº¦æ ¼å¼ç¸åï¼ä¸è¿ INF å NaN (å¦æå¹³å°å­å¨è¿ä¸¤ç§å¼) æªå¾å°æ­£ç¡®å¤çï¼èè¯å¾å¯¹åå« IEEE INF æ NaN çå­èä¸²æ§è¡è§£åå°ä¼å¼åä¸ä¸ªå¼å¸¸ã å° C double æåä¸º IEEE 754 binary16 åç²¾åº¦æ ¼å¼ã å° C double æåä¸º IEEE 754 binary32 åç²¾åº¦æ ¼å¼ã å° C double æåä¸º IEEE 754 binary64 åç²¾åº¦æ ¼å¼ã æåä¸è§£åå½æ° æåå½æ° è¿å *pyfloat* ç C :c:expr:`double` è¡¨ç¤ºå½¢å¼ï¼ä½ä¸å¸¦éè¯¯æ£æµã è¿å *pyfloat* çåå®¹ç C :c:expr:`double` è¡¨ç¤ºå½¢å¼ã å¦æ *pyfloat* ä¸æ¯ä¸ä¸ª Python æµ®ç¹æ°å¯¹è±¡ä½æ¯å·æ :meth:`__float__` æ¹æ³ï¼åå°åè°ç¨æ­¤æ¹æ³æ¥å° *pyfloat* è½¬æ¢ä¸ºæµ®ç¹æ°ã å¦æ ``__float__()`` æªå®ä¹åå°åéè³ :meth:`__index__`ã æ­¤æ¹æ³å¨å¤±è´¥æ¶å°è¿å ``-1.0``ï¼å æ­¤å¼åèåºå½è°ç¨ :c:func:`PyErr_Occurred` æ¥æ£æµéè¯¯ã è¿åä¸ä¸ª structseq å®ä¾ï¼å¶ä¸­åå«æå³ float çç²¾åº¦ãæå°å¼åæå¤§å¼çä¿¡æ¯ã å®æ¯å¤´æä»¶ :file:`float.h` çä¸ä¸ªç®ååè£ã è¿å C :c:expr:`double` å½¢å¼çæå¤§å¯è¡¨ç¤ºæéæµ®ç¹æ° *DBL_MAX*ã è¿å C :c:expr:`double` å½¢å¼çæå°æ­£è§åæ­£æµ®ç¹æ° *DBL_MIN*ã å¦æå®çåæ°æ¯ä¸ä¸ª :c:type:`PyFloatObject` æè :c:type:`PyFloatObject` çå­ç±»ååè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã å¦æå®çåæ°æ¯ä¸ä¸ª :c:type:`PyFloatObject` ä½ä¸æ¯ :c:type:`PyFloatObject` çå­ç±»ååè¿åçå¼ã æ­¤å½æ°æ»æ¯ä¼æåæ§è¡ã è¿åå¼: è§£ååç doubleã åºéæ¶ï¼è¿åå¼ä¸º ``-1.0`` ä¸ :c:func:`PyErr_Occurred` ä¸ºçå¼ (å¹¶ä¸ä¼è®¾ç½®ä¸ä¸ªå¼å¸¸ï¼æå¤§å¯è½ä¸º :exc:`OverflowError`)ã è¿åå¼: å¦æä¸åæ­£å¸¸åä¸º ``0``ï¼å¦æåºéåä¸º ``-1`` (å¹¶ä¼è®¾ç½®ä¸ä¸ªå¼å¸¸ï¼æå¤§å¯è½ä¸º :exc:`OverflowError`)ã æåä¸è§£åå½æ°æä¾äºç¬ç«äºå¹³å°çé«ææ¹å¼æ¥å°æµ®ç¹æ°å¼å­å¨ä¸ºå­èä¸²ã Pack ä¾ç¨æ ¹æ® C :c:expr:`double` äº§çå­èä¸²ï¼è Unpack ä¾ç¨æ ¹æ®è¿æ ·çå­èä¸²äº§ç C :c:expr:`double`ã åç¼ (2, 4 or 8) ææå­èä¸²ä¸­çå­èæ°ã æåä¾ç¨ä¼åå¥ 2, 4 æ 8 ä¸ªå­èï¼ä» *p* å¼å§ã *le* æ¯ä¸ä¸ª :c:expr:`int` åæ°ï¼å¦æä½ æ³è¦å­èä¸²ä¸ºå°ç«¯åºæ ¼å¼ (ææ°é¨åæ¾å¨åé¢ï¼ä½äº ``p+1``, ``p+3`` æ ``p+6`` ``p+7``) åå¶åºåéé¶å¼ï¼å¦æä½ æ³è¦å¤§ç«¯åºæ ¼å¼ (ææ°é¨åæ¾å¨åé¢ï¼ä½äº *p*) ååºåé¶å¼ã :c:data:`PY_BIG_ENDIAN` å¸¸éå¯è¢«ç¨äºä½¿ç¨æ¬æºåçç«¯åº: å¨å¤§ç«¯åºå¤çå¨ä¸ç­äº ``1``ï¼å¨å°ç«¯åºå¤çå¨ä¸åç­äº ``0``ã è§£åä¾ç¨ä¼è¯»å 2, 4 æ 8 ä¸ªå­èï¼ä» *p* å¼å§ã *le* æ¯ä¸ä¸ª :c:expr:`int` åæ°ï¼å¦æå­èä¸²ä¸ºå°ç«¯åºæ ¼å¼ (ææ°é¨åæ¾å¨åé¢ï¼ä½äº ``p+1``, ``p+3`` æ ``p+6`` and ``p+7``) åå¶åºåéé¶å¼ï¼å¦æä¸ºå¤§ç«¯åºæ ¼å¼ (ææ°é¨åæ¾å¨åé¢ï¼ä½äº *p*) ååºåé¶å¼ã :c:data:`PY_BIG_ENDIAN` å¸¸éå¯è¢«ç¨äºä½¿ç¨æ¬æºåçç«¯åº: å¨å¤§ç«¯åºå¤çå¨ä¸ç­äº ``1``ï¼å¨å°ç«¯åºå¤çå¨ä¸åç­äº ``0``ã å¨é IEEE å¹³å°ä¸å­å¨ä¸¤ä¸ªé®é¢: è¿æ¯ä¸ªå±äºCç±»å :c:type:`PyTypeObject` çä»£è¡¨Pythonæµ®ç¹ç±»åçå®ä¾ãå¨Pythonå±é¢çç±»å :class:`float` æ¯åä¸ä¸ªå¯¹è±¡ã è¿ä¸ªCç±»å :c:type:`PyObject` çå­ç±»åä»£è¡¨ä¸ä¸ªPythonæµ®ç¹æ°å¯¹è±¡ã è§£åå½æ° å° IEEE 754 binary16 åç²¾åº¦æ ¼å¼è§£åä¸º C doubleã å° IEEE 754 binary32 åç²¾åº¦æ ¼å¼è§£åä¸º C doubleã å° IEEE 754 binary64 åç²¾åº¦æ ¼å¼è§£åä¸º C doubleã å¦æå¯ç¨å°ä½¿ç¨ :meth:`__index__`ã å¦æ *x* ä¸º NaN ææ ç©·å¤§åæ­¤å½æ°çè¡ä¸ºæ¯æªå®ä¹çã ``-0.0`` å ``+0.0`` å°äº§çç¸åçå­èä¸²ã æµ®ç¹æ° object -- å¯¹è±¡ 