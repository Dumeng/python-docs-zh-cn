Þ    %      D              l  #   m            !   µ  +   ×  *     (   .  9   W  À     #   R     v  Q     M   Ø  J   &  0   q  C   ¢  C   æ  M   *  /   x  "   ¨  A   Ë  +     :   9  M   t  ;   Â  ,   þ  (   +  Z   T  o   ¯  >   	  0   ^	     	  +   
  d   K
  .   °
  0   ß
  ½    *   Î  	   ù       '     +   G  *   s  (     9   Ç  µ     "   ·  	   Ú  N   ä  N   3  F     &   É  C   ð  C   4  h   x  :   á  (     G   E  4     6   Â  J   ù  -   D  5   r  +   ¨  c   Ô  m   8  +   ¦     Ò     ñ  *   t  \     !   ü  4      *name* type must be a :class:`str`. Frame Objects Get the *frame* code. Get the *frame* next outer frame. Get the *frame*'s ``f_builtins`` attribute. Get the *frame*'s ``f_globals`` attribute. Get the *frame*'s ``f_lasti`` attribute. Get the *frame*'s ``f_locals`` attribute (:class:`dict`). Get the generator, coroutine, or async generator that owns this frame, or ``NULL`` if this frame is not owned by a generator. Does not raise an exception, even if the return value is ``NULL``. Get the variable *name* of *frame*. Internal Frames Previously, this function was only available after including ``<frameobject.h>``. Previously, this type was only available after including ``<frameobject.h>``. Raise :exc:`NameError` and return ``NULL`` if the variable does not exist. Raise an exception and return ``NULL`` on error. Return a :term:`strong reference` to the code object for the frame. Return a :term:`strong reference` to the variable value on success. Return a :term:`strong reference`, or ``NULL`` if *frame* has no outer frame. Return a :term:`strong reference`, or ``NULL``. Return a :term:`strong reference`. Return a :term:`strong reference`. The result cannot be ``NULL``. Return non-zero if *obj* is a frame object. Return the byte offset into the last executed instruction. Return the currently executing line number, or -1 if there is no line number. Return the line number that *frame* is currently executing. Returns -1 if ``frame.f_lasti`` is ``None``. See also :ref:`Reflection <reflection>`. Similar to :c:func:`PyFrame_GetVar`, but the variable name is a C string encoded in UTF-8. The :c:func:`PyEval_GetFrame` and :c:func:`PyThreadState_GetFrame` functions can be used to get a frame object. The C structure of the objects used to describe frame objects. The interpreter's internal frame representation. The members of this structure were removed from the public C API. Refer to the :ref:`What's New entry <pyframeobject-3.11-hiding>` for details. The result (frame code) cannot be ``NULL``. The type of frame objects. It is the same object as :py:class:`types.FrameType` in the Python layer. There are no public members in this structure. Unless using :pep:`523`, you will not need this. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2022-11-05 19:48+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 *name* å¿é¡»æ¯ :class:`str` ç±»åçã å¸§å¯¹è±¡ è·å *frame* çä»£ç ã è·å *frame* ä¸ºä¸ä¸ä¸ªå¤é¨å¸§ã è·å *frame* ç ``f_builtins`` å±æ§ã è·å *frame* ç ``f_globals`` å±æ§ã è·å *frame* ç ``f_lasti`` å±æ§ã è·å *frame* ç ``f_locals`` å±æ§ (:class:`dict`)ã è·åæ¥æè¯¥å¸§ççæå¨ãåç¨æå¼æ­¥çæå¨ï¼æèå¦æè¯¥å¸§ä¸è¢«æä¸ªçæå¨ææ¥æåä¸º ``NULL``ã ä¸ä¼å¼åå¼å¸¸ï¼å³ä½¿å¶è¿åå¼ä¸º ``NULL``ã è·å *frame* çåé *name*ã åé¨å¸§ å¨ä¹åçæ¬ä¸­ï¼åªå½æ°ä»å¨åæ¬ ``<frameobject.h>`` ä¹åå¯ç¨ã å¨ä¹åçæ¬ä¸­ï¼æ­¤ç±»åä»å¨åæ¬ ``<frameobject.h>`` ä¹åå¯ç¨ã å¼å :exc:`NameError` å¹¶è¿å ``NULL`` å¦æè¯¥åéä¸å­å¨ã å¼åå¼å¸¸å¹¶è¿å``NULL``éè¯¯ã è¿åä¸ä¸ªæåå¸§çä»£ç å¯¹è±¡ç :term:`strong reference`ã æåæ¶è¿åä¸ä¸ªæååéå¼ç :term:`strong reference`ã åèè¿åä¸ä¸ª :term:`strong reference`ï¼æèå¦æ  *frame* æ²¡æå¤é¨å¸§åè¿å ``NULL``ã è¿åä¸ä¸ª :term:`strong reference`ï¼æè ``NULL``ã è¿åä¸ä¸ª :term:`strong reference`ã è¿åä¸ä¸ª :term:`strong reference`ã æ­¤ç»æä¸å¯ä¸º ``NULL``ã å¦æ *obj* æ¯ä¸ä¸ªå¸§å¯¹è±¡åè¿åéé¶å¼ã å°å­èåç§»éè¿åå°æåæ§è¡çæä»¤ä¸­ã è¿åæ­£å¨æ§è¡çæä»¤çè¡æ°ï¼å¦ææ²¡æè¡æ°ï¼åè¿å-1ã è¿å *frame* å½åæ­£å¨æ§è¡çè¡å·ã å¦æ ``frame.f_lasti`` ä¸º ``None`` åè¿å -1ã å¯åèï¼:ref:`Reflection 1<reflection>` å :c:func:`PyFrame_GetVar` ç¸ä¼¼ï¼ä½è¯¥åéåæ¯ä¸ä¸ªä½¿ç¨ UTF-8 ç¼ç ç C å­ç¬¦ä¸²ã å¯ä»¥ä½¿ç¨å½æ° :c:func:`PyEval_GetFrame` ä¸ :c:func:`PyThreadState_GetFrame` å»è·åä¸ä¸ªå¸§å¯¹è±¡ã ç¨äºæè¿°å¸§å¯¹è±¡çå¯¹è±¡Cç»æä½ã è§£éå¨çåé¨å¸§è¡¨ç¤ºã æ­¤ç»æä½çæåå·²ä»å¬æ C API ä¸­ç§»é¤ã è¯·åé :ref:`What's New entry <pyframeobject-3.11-hiding>` äºè§£è¯¦æã ç»æï¼å¸§ä»£ç ï¼ä¸å¯ä¸º ``NULL``ã å¸§å¯¹è±¡çç±»åã å®ä¸ Python å±ä¸­ç :py:class:`types.FrameType` æ¯åä¸å¯¹è±¡ã æ­¤ç»æä½ä¸­æ å¬ææåã é¤éä½¿ç¨:pep:`523`ï¼å¦åä½ ä¸ä¼éè¦å®ã 