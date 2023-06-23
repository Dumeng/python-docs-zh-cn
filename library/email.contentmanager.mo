Þ    *      l              ¼  6   ½  2   ô  Ð   '  J   ø  !   C  a   e  ×   Ç          ¹  	   Ú    ä  [  ý  q   Y	  _   Ë	     +
    ¯
  U   µ  ±    f  ½  ~   $  Ñ   £  ª   u  4     X   U  ÷  ®  /  ¦  M   Ö  ¶   $  s   Û  °  O       d        î            (     A   Æ       N   "  #   q  *     ½  À  4   ~  /   ³  Ï   ã  S   ³   &   !  n   .!  §   !     E"    ["     l#  +  s#    $  p   %&  j   &     '  ÿ   '  b   (  ¤  ï(  R  *  u   ç+  Ô   ],  ¢   2-  D  Õ-  d   /  ½  /    =1  I   B2  ½   2  s   J3  ä  ¾3  =  £5  X   á7     :8     Å8     Ê8      ×8  ;   ø8     49  L   K9  $   9  )   ½9   **Source code:** :source:`Lib/email/contentmanager.py` :mod:`email.contentmanager`: Managing MIME Content A *cte* of ``binary`` does not actually work correctly yet. The ``EmailMessage`` object as modified by ``set_content`` is correct, but :class:`~email.generator.BytesGenerator` does not serialize it correctly. Add a :mailheader:`Content-Type` header with a ``maintype/subtype`` value. Add headers and payload to *msg*: Also add a :mailheader:`MIME-Version` header if one is not present (see also :class:`.MIMEPart`). Base class for content managers.  Provides the standard registry mechanisms to register converters between MIME content and other representations, as well as the ``get_content`` and ``set_content`` dispatch methods. Content Manager Instances Currently the email package provides only one concrete content manager, :data:`raw_data_manager`, although more may be added in the future. :data:`raw_data_manager` is the :attr:`~email.policy.EmailPolicy.content_manager` provided by :attr:`~email.policy.EmailPolicy` and its derivatives. Footnotes For :class:`~email.message.EmailMessage` objects, set the maintype to ``message``, and set the subtype to *subtype* if it is specified or ``rfc822`` if it is not.  If *subtype* is ``partial``, raise an error (``bytes`` objects must be used to construct ``message/partial`` parts). For :class:`~email.message.EmailMessage`, per :rfc:`2046`, raise an error if a *cte* of ``quoted-printable`` or ``base64`` is requested for *subtype* ``rfc822``, and for any *cte* other than ``7bit`` for *subtype* ``external-body``.  For ``message/rfc822``, use ``8bit`` if *cte* is not specified.  For all other values of *subtype*, use ``7bit``. For ``bytes``, use the specified *maintype* and *subtype*, or raise a :exc:`TypeError` if they are not specified. For ``str`` objects, if *cte* is not set use heuristics to determine the most compact encoding. For ``str``, set the MIME ``maintype`` to ``text``, and set the subtype to *subtype* if it is specified, or ``plain`` if it is not. If *charset* is provided (which is valid only for ``str``), encode the string to bytes using the specified character set.  The default is ``utf-8``.  If the specified *charset* is a known alias for a standard MIME charset name, use the standard charset instead. If *cid* is specified, add a :mailheader:`Content-ID` header with *cid* as its value. If *cte* is set, encode the payload using the specified content transfer encoding, and set the :mailheader:`Content-Transfer-Encoding` header to that value.  Possible values for *cte* are ``quoted-printable``, ``base64``, ``7bit``, ``8bit``, and ``binary``.  If the input cannot be encoded in the specified encoding (for example, specifying a *cte* of ``7bit`` for an input that contains non-ASCII values), raise a :exc:`ValueError`. If *disposition* is set, use it as the value of the :mailheader:`Content-Disposition` header.  If not specified, and *filename* is specified, add the header with the value ``attachment``. If *disposition* is not specified and *filename* is also not specified, do not add the header.  The only valid values for *disposition* are ``attachment`` and ``inline``. If *filename* is specified, use it as the value of the ``filename`` parameter of the :mailheader:`Content-Disposition` header. If *headers* is specified and is a list of strings of the form ``headername: headervalue`` or a list of ``header`` objects (distinguished from strings by having a ``name`` attribute), add the headers to *msg*. If *params* is specified, iterate its ``items`` method and use the resulting ``(key, value)`` pairs to set additional parameters on the :mailheader:`Content-Type` header. If none of the above match, repeat all of the checks above for each of the types in the :term:`MRO` (``typ.__mro__``).  Finally, if no other key yields a handler, check for a handler for the key ``None``.  If there is no handler for ``None``, raise a :exc:`KeyError` for the fully qualified name of the type. If none of these keys produce a handler, raise a :exc:`KeyError` for the full MIME type. If the ``maintype`` is ``multipart``, raise a :exc:`TypeError`; otherwise look up a handler function based on the type of *obj* (see next paragraph), call :meth:`~email.message.EmailMessage.clear_content` on the *msg*, and call the handler function, passing through all arguments.  The expectation is that the handler will transform and store *obj* into *msg*, possibly making other changes to *msg* as well, such as adding various MIME headers to encode information needed to interpret the stored data. Look up a handler function based on the ``mimetype`` of *msg* (see next paragraph), call it, passing through all arguments, and return the result of the call.  The expectation is that the handler will extract the payload from *msg* and return an object that encodes information about the extracted data. Originally added in 3.4 as a :term:`provisional module <provisional package>` Record *handler* as the function to call when an object of a type matching *typekey* is passed to :meth:`set_content`.  For the possible values of *typekey*, see :meth:`set_content`. Record the function *handler* as the handler for *key*.  For the possible values of *key*, see :meth:`get_content`. Return the payload of the part as either a string (for ``text`` parts), an :class:`~email.message.EmailMessage` object (for ``message/rfc822`` parts), or a ``bytes`` object (for all other non-multipart types).  Raise a :exc:`KeyError` if called on a ``multipart``.  If the part is a ``text`` part and *errors* is specified, use it as the error handler when decoding the payload to unicode.  The default error handler is ``replace``. This content manager provides only a minimum interface beyond that provided by :class:`~email.message.Message` itself:  it deals only with text, raw byte strings, and :class:`~email.message.Message` objects.  Nevertheless, it provides significant advantages compared to the base API: ``get_content`` on a text part will return a unicode string without the application needing to manually decode it, ``set_content`` provides a rich set of options for controlling the headers added to a part and controlling the content transfer encoding, and it enables the use of the various ``add_`` methods, thereby simplifying the creation of multipart messages. To find the handler, look for the following keys in the registry, stopping with the first one found: To find the handler, obtain the type of *obj* (``typ = type(obj)``), and look for the following keys in the registry, stopping with the first one found: [1]_ the empty string the string representing the ``maintype`` the string representing the full MIME type (``maintype/subtype``) the type itself (``typ``) the type's fully qualified name (``typ.__module__ + '.' + typ.__qualname__``). the type's name (``typ.__name__``). the type's qualname (``typ.__qualname__``) Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:04+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç :** :source:`Lib/email/contentmanager.py` :mod:`email.contentmanager`: ç®¡ç MIME åå®¹ *cte* å¼ä¸º ``binary`` å®éä¸è¿ä¸è½æ­£ç¡®å·¥ä½ã ç± ``set_content`` æä¿®æ¹ç ``EmailMessage`` å¯¹è±¡æ¯æ­£ç¡®çï¼ä½ :class:`~email.generator.BytesGenerator` ä¸ä¼æ­£ç¡®å°å°å¶åºååã æ·»å ä¸ä¸ªå¸¦æ ``maintype/subtype`` å¼ç :mailheader:`Content-Type` æ å¤´ã å *msg* æ·»å æ å¤´åææè½½è·: å¹¶ä¼æ·»å ä¸ä¸ª :mailheader:`MIME-Version` æ å¤´ï¼å¦ææ²¡æçè¯ (å¦è¯·åè§ :class:`.MIMEPart`)ã åå®¹ç®¡çå¨çåºç±»ã æä¾æ³¨å MIME åå®¹åå¶ä»è¡¨ç¤ºå½¢å¼é´è½¬æ¢å¨çæ åæ³¨åæºå¶ï¼ä»¥å ``get_content`` å ``set_content`` åéæ¹æ³ã åå®¹ç®¡çå¨å®ä¾ ç®å email ååªæä¾äºä¸ä¸ªå®ä½åå®¹ç®¡çå¨ :data:`raw_data_manager`ï¼ä¸è¿å¨æªæ¥å¯è½ä¼æ·»å æ´å¤ã :data:`raw_data_manager` æ¯ç± :attr:`~email.policy.EmailPolicy` åå¶è¡çå·¥å·ææä¾ç :attr:`~email.policy.EmailPolicy.content_manager`ã å¤æ³¨ å¯¹äº :class:`~email.message.EmailMessage` å¯¹è±¡ï¼å° maintype è®¾ä¸º ``message``ï¼å¹¶å°æå®ç subtype è®¾ä¸º *subtype*ï¼å¦ææªæå®åè®¾ä¸º ``rfc822``ã å¦æ *subtype* ä¸º ``partial``ï¼åå¼åä¸ä¸ªéè¯¯ï¼å¿é¡»ä½¿ç¨ ``bytes`` å¯¹è±¡æ¥æé  ``message/partial`` é¨åï¼ã å¯¹äº :class:`~email.message.EmailMessage`ï¼æç§ :rfc:`2046`ï¼å¦æä¸º *subtype* ``rfc822`` è¯·æ±ç *cte* ä¸º ``quoted-printable`` æ ``base64`` ï¼èä¸º ``7bit`` ä»¥å¤çä»»ä½ *cte* ä¸º *subtype* ``external-body`` åä¼å¼åä¸ä¸ªéè¯¯ã å¯¹äº ``message/rfc822``ï¼å¦æ *cte* æªæå®åä¼ä½¿ç¨ ``8bit``ã å¯¹äºææå¶ä» *subtype* å¼ï¼é½ä¼ä½¿ç¨ ``7bit``ã å¯¹äº ``bytes``ï¼å°ä½¿ç¨æå®ç *maintype* å *subtype*ï¼å¦ææªæå®åä¼å¼å :exc:`TypeError`ã å¯¹äº ``str`` å¯¹è±¡ï¼å¦æ *cte* æªè®¾ç½®åä¼ä½¿ç¨å¯åæ¹å¼æ¥ç¡®å®æç´§åçç¼ç æ ¼å¼ã å¯¹äº ``str``ï¼å° MIME ``maintype`` è®¾ä¸º ``text``ï¼å¦ææå®äºå­ç±»å *subtype* åè®¾ä¸ºæå®å¼ï¼å¦åè®¾ä¸º ``plain``ã å¦ææä¾äº *charset* (è¿åªå¯¹ ``str`` éç¨)ï¼åä½¿ç¨æå®çå­ç¬¦éå°å­ç¬¦ä¸²ç¼ç ä¸ºå­èä¸²ã é»è®¤å¼ä¸º ``utf-8``ã å¦ææå®ç *charset* æ¯æä¸ªæ å MIME å­ç¬¦éåç§°çå·²ç¥å«åï¼åä¼æ¹ç¨è¯¥æ åå­ç¬¦éã å¦æè®¾ç½®äº *cid*ï¼åæ·»å ä¸ä¸ª :mailheader:`Content-ID` æ å¤´å¹¶å°å¶å¼è®¾ä¸º *cid*ã å¦æè®¾ç½®äº *cte*ï¼åä½¿ç¨æå®çåå®¹ä¼ è¾ç¼ç æ ¼å¼å¯¹ææè½½è·è¿è¡ç¼ç ï¼å¹¶å° :mailheader:`Content-Transfer-Encoding` æ å¤´è®¾ä¸ºè¯¥å¼ã å¯è½ç *cte* å¼æ ``quoted-printable``, ``base64``, ``7bit``, ``8bit`` å ``binary``ã å¦æè¾å¥æ æ³ä»¥æå®çç¼ç æ ¼å¼è¢«ç¼ç  (ä¾å¦ï¼å¯¹äºåå«é ASCII å¼çè¾å¥æå® *cte* å¼ä¸º ``7bit``)ï¼åä¼å¼å :exc:`ValueError`ã å¦æè®¾ç½®äº *disposition*ï¼å®ä¼è¢«ç¨ä½ :mailheader:`Content-Disposition` æ å¤´çå¼ã å¦ææªè®¾ç½®ï¼å¹¶ä¸æå®äº *filename*ï¼åæ·»å å¼ä¸º ``attachment`` çæ å¤´ã å¦ææªè®¾ç½® *disposition* å¹¶ä¸ä¹æªæå® *filename*ï¼åä¸æ·»å æ å¤´ã *disposition* çææå¼ä»æ ``attachment`` å ``inline``ã å¦æè®¾ç½®äº *filename*ï¼åå°å¶ç¨ä½ :mailheader:`Content-Disposition` æ å¤´ç ``filename`` åæ°çå¼ã å¦æè®¾ç½®äº *headers* å¹¶ä¸ä¸º ``headername: headervalue`` å½¢å¼çå­ç¬¦ä¸²çåè¡¨æä¸º ``header`` å¯¹è±¡çåè¡¨ï¼éè¿ä¸ä¸ª ``name`` å±æ§ä¸å­ç¬¦ä¸²ç¸åºåï¼ï¼åå°æ å¤´æ·»å å° *msg*ã å¦æè®¾ç½®äº *params*ï¼åè¿­ä»£å¶ ``items`` æ¹æ³å¹¶ä½¿ç¨è¾åºç ``(key, value)`` ç»æå¯¹å¨ :mailheader:`Content-Type` æ å¤´ä¸è®¾ç½®éå åæ°ã å¦ææªå¹éå°ä¸è¿°çä»»ä½ä¸é¡¹ï¼åå¨ :term:`MRO` (``typ.__mro__``) ä¸­ä¸ºæ¯ä¸ªç±»åéå¤ä¸è¿°çæææ£æµã æåï¼å¦ææ²¡æå¶ä»é®äº§çå¤çç¨åºï¼åä¸º ``None`` é®æ£æµå¤çç¨åºã å¦æä¹æ²¡æ ``None`` çå¤çç¨åºï¼åä¸ºè¯¥ç±»åçå®æ´éå®åç§°å¼å :exc:`KeyError`ã å¦æè¿äºé®é½æ²¡æäº§çå¤çç¨åºï¼åä¸ºå®æ´ MIME ç±»åå¼åä¸ä¸ª :exc:`KeyError`ã å¦æ ``maintype`` ä¸º ``multipart``ï¼åå¼å :exc:`TypeError`ï¼å¦ååºäº *obj* çç±»åï¼åè§ä¸ä¸æ®µï¼æ¥æ¾å¤çå½æ°ï¼å¨ *msg* ä¸è°ç¨ :meth:`~email.message.EmailMessage.clear_content`ï¼å¹¶è°ç¨å¤çå½æ°ï¼ä¼ éææåæ°ã é¢æçæææ¯å¤çç¨åºå°è½¬æ¢ *obj* å¹¶å­å¥ *msg*ï¼å¹¶å¯è½å¯¹ *msg* è¿è¡å¶ä»æ´æ¹ï¼ä¾å¦æ·»å åç§ MIME æ å¤´æ¥ç¼ç éè¦ç¨æ¥è§£éæå­å¨æ°æ®çä¿¡æ¯ã åºäº *msg* ç ``mimetype`` æ¥æ¾å¤çå½æ°ï¼åè§ä¸ä¸æ®µï¼ï¼è°ç¨è¯¥å½æ°ï¼ä¼ éææåæ°ï¼å¹¶è¿åè°ç¨çç»æã é¢æçæææ¯å¤çç¨åºå°ä» *msg* ä¸­æåææè½½è·å¹¶è¿åç¼ç äºæå³è¢«æåæ°æ®ä¿¡æ¯çå¯¹è±¡ã æåå¨ 3.4 ä¸­ä½ä¸º :term:`æå®æ¨¡å <provisional package>` æ·»å  å° *handler* è®°å½ä¸ºå½ä¸ä¸ªå¹é *typekey* çç±»åå¯¹è±¡è¢«ä¼ éç» :meth:`set_content` æ¶æè¦è°ç¨çå½æ°ã å¯¹äºå¯è½ç *typekey* å¼ï¼è¯·åé :meth:`set_content`ã å° *handler* å½æ°è®°å½ä¸º *key* çå¤çç¨åºã å¯¹äºå¯è½ç *key* é®ï¼è¯·åé :meth:`get_content`ã å°æå®é¨åçææè½½è·ä½ä¸ºå­ç¬¦ä¸²ï¼å¯¹äº ``text`` é¨åï¼, :class:`~email.message.EmailMessage` å¯¹è±¡ï¼å¯¹äº ``message/rfc822`` é¨åï¼æ ``bytes`` å¯¹è±¡ï¼å¯¹äºææå¶ä»éå¤é¨åç±»åï¼è¿åã å¦ææ¯å¨ ``multipart`` ä¸è°ç¨åä¼å¼å :exc:`KeyError`ã å¦ææå®é¨åæ¯ä¸ä¸ª ``text`` é¨åå¹¶ä¸ææäº *errors*ï¼åä¼å¨å°è½½è·è§£ç ä¸º unicode æ¶å°å¶ç¨ä½éè¯¯å¤çç¨åºã é»è®¤çéè¯¯å¤çç¨åºæ¯ ``replace``ã è¿ä¸ªåå®¹ç®¡çå¨ä»æä¾äºè¶åº :class:`~email.message.Message` æ¬èº«æä¾åå®¹çæå°æ¥å£ï¼å®åªå¤çææ¬ãåå§å­èä¸²å :class:`~email.message.Message` å¯¹è±¡ã ä¸è¿ç¸æ¯åºç¡ APIï¼å®å·ææ¾èçä¼å¿ï¼å¨ææ¬é¨åä¸æ§è¡ ``get_content`` å°è¿åä¸ä¸ª unicode å­ç¬¦ä¸²èæ éç±åºç¨ç¨åºæ¥æå¨è§£ç ï¼``set_content`` ä¸ºæ§å¶æ·»å å°ä¸ä¸ªé¨åçæ å¤´åæ§å¶åå®¹ä¼ è¾ç¼ç æ ¼å¼æä¾äºä¸°å¯çéé¡¹éåï¼å¹¶ä¸å®è¿å¯ç¨äºå¤ç§ ``add_`` æ¹æ³ï¼ä»èç®åäºå¤é¨åæ¶æ¯çåå»ºè¿ç¨ã è¦æ¾å°å¤çç¨åºï¼å°å¨æ³¨åè¡¨ä¸­æ¥æ¾ä»¥ä¸é®ï¼æ¾å°ç¬¬ä¸ä¸ªé®å³åæ­¢: è¦æ¾å°å¤çç¨åºï¼å°è·å *obj* çç±»å (``typ = type(obj)``)ï¼å¹¶å¨æ³¨åè¡¨ä¸­æ¥æ¾ä»¥ä¸é®ï¼æ¾å°ç¬¬ä¸ä¸ªé®å³åæ­¢: [1]_ ç©ºå­ç¬¦ä¸² è¡¨ç¤º ``maintype`` çå­ç¬¦ä¸² è¡¨ç¤ºå®æ´ MIME ç±»åçå­ç¬¦ä¸² (``maintype/subtype``) ç±»åæ¬èº« (``typ``) ç±»åçå®æ´éå®åç§° (``typ.__module__ + '.' + typ.__qualname__``)ã ç±»åç name (``typ.__name__``)ã ç±»åç qualname (``typ.__qualname__``) 