Þ    '      T                                            ¡     §     ©     «     °  C   Ç          #  ¯   )     Ù  L   á  ·   .  6   æ       2   7     j       ~     j     B     Z   Ë  E   &     l                         ¥     ­     Â     ×     ì       ½       Õ	     ×	     Û	     á	     ã	     é	     ï	     ñ	     ó	     ø	  @   
     R
  	   n
     x
       C   
  ¦   N  2   õ  ,   (  E   U  &     &   Â     é  \   z  9   ×  z     B        Ï     â     ë     ô     ý               "     7     L     a   1 1-8 17-24 2 25-28 29-32 3 4 9-16 API and ABI Versioning All the given macros are defined in :source:`Include/patchlevel.h`. Bits (big endian order) Bytes CPython exposes its version number in the following macros. Note that these correspond to the version code is **built** with, not necessarily the version used at **run time**. Meaning See :ref:`stable` for a discussion of API and ABI stability across versions. The Python runtime version number encoded in a single constant integer, with the same format as the :c:macro:`PY_VERSION_HEX` macro. This contains the Python version used at run time. The Python version number encoded in a single integer. The ``1`` in ``3.4.1a2``. The ``2`` in ``3.4.1a2``. Zero for final releases. The ``3`` in ``3.4.1a2``. The ``4`` in ``3.4.1a2``. The ``a`` in ``3.4.1a2``. This can be ``0xA`` for alpha, ``0xB`` for beta, ``0xC`` for release candidate or ``0xF`` for final. The underlying version information can be found by treating it as a 32 bit number in the following manner: This version is also available via the symbol :c:var:`Py_Version`. Thus ``3.4.1a2`` is hexversion ``0x030401a2`` and ``3.10.0`` is hexversion ``0x030a00f0``. Use this for numeric comparisons, e.g. ``#if PY_VERSION_HEX >= ...``. Value for ``3.4.1a2`` ``0x01`` ``0x03`` ``0x04`` ``0x2`` ``0xA`` ``PY_MAJOR_VERSION`` ``PY_MICRO_VERSION`` ``PY_MINOR_VERSION`` ``PY_RELEASE_LEVEL`` ``PY_RELEASE_SERIAL`` Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-29 02:08+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 1 1-8 17-24 2 25-28 29-32 3 4 9-16 API å ABI çæ¬ç®¡ç æææå°çå®é½å®ä¹å¨ :source:`Include/patchlevel.h`ã ä½æ°ï¼å¤§ç«¯å­èåºï¼ å­èä¸² CPython å¨ä¸åå®ä¸­æ´é²å¶çæ¬å·ã è¯·æ³¨æè¿å¯¹åºäº **ç¼è¯** ç¨çæ¬ä»£ç ï¼èä¸æ¯ **è¿è¡æ¶** ä½¿ç¨ççæ¬ã å«æ è¯·åé :ref:`stable` æ¥çè·¨çæ¬ç API å ABI ç¨³å®æã Python è¿è¡æ¶çæ¬å·ç¼ç å¨ä¸ä¸ªæ´æ°å¸¸éä¸­ï¼æç¨æ ¼å¼ä¸ :c:macro:`PY_VERSION_HEX` å®çç¸åã è¿åå«äºå¨è¿è¡æ¶ä½¿ç¨ç Python çæ¬ã ç¼ç ä¸ºåä¸ªæ´æ°å½¢å¼ç Python çæ¬å·ã ``1`` (``3.4.1a2`` ä¸­ç¬¬ä¸æ®µçæ°å­)ã ``2`` (``3.4.1a2`` ä¸­çæ«å°¾æ°å­)ã é¶ä»£è¡¨æç»åå¸çã ``3`` (``3.4.1a2`` ä¸­çç¬¬ä¸æ®µ)ã ``4`` (``3.4.1a2`` ä¸­çç¬¬äºæ®µ)ã ``a`` (``3.4.1a2`` ä¸­ç¬¬3æ®µçå­æ¯)ã å¯è½ä¸º ``0xA`` å³ alpha, ``0xB`` å³ beta, ``0xC`` å³ release candidate æ ``0xF`` å³ finalã åºå±ççæ¬ä¿¡æ¯å¯éè¿æä»¥ä¸æ¹å¼å°å¶å½ä½ 32 æ¯ç¹çæ°å­å¤çæ¥è·å: è¯¥çæ¬è¿å¯éè¿ç¬¦å· :c:var:`Py_Version` è·åã è¿æ · ``3.4.1a2`` å³åå­è¿å¶çæ¬å·ç ``0x030401a2`` è ``3.10.0`` å³åå­è¿å¶çæ¬å·ç ``0x030a00f0``ã ç¨äºè¿è¡æ°å¼æ¯è¾ï¼ä¾å¦ ``#if PY_VERSION_HEX >= ...``ã ``3.4.1a2`` çå¼ ``0x01`` ``0x03`` ``0x04`` ``0x2`` ``0xA`` ``PY_MAJOR_VERSION`` ``PY_MICRO_VERSION`` ``PY_MINOR_VERSION`` ``PY_RELEASE_LEVEL`` ``PY_RELEASE_SERIAL`` 