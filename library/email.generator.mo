Þ    *      l              ¼  F   ½  1     1   6  o  h  R   Ø     +  M  G  I      ß  ð  a  µ   R  	     6     Á   I  þ     [  
  T  f  ]  »  <      V    ç  Z     ¤   Þ          #    D     I   y   Ð   ¦  J!  I  ñ"  a   ;$  ô  $  «   &  }   >'  Ò   ¼'  N   (  L   Þ(  ;   +)  A   g)  ?   ©)  =   é)  ½  '*  G   å+  /   -,  *   ],    ,  N   .     [.  H  {.  H  Ä/  7  1  Ö  E4  ¶   6     Ó6  8   Ú6  º   7    Î7  f  Ö8  X  =:  K  ;  C  â=    &A  o  ¿C  V   /E     E     F  (  ¡F  þ   ÊG  {   ÉH  v   EI    ¼I  $  EK  I   jL  ­  ´L  «   bN  l   O  ¶   {O  C   2P  F   vP  7   ½P  =   õP  <   3Q  <   pQ   "[Non-text (%(type)s) part of message omitted, filename %(filename)s]" **Source code:** :source:`Lib/email/generator.py` :mod:`email.generator`: Generating MIME documents Act like :class:`Generator`, except that for any subpart of the message passed to :meth:`Generator.flatten`, if the subpart is of main type :mimetype:`text`, print the decoded payload of the subpart, and if the main type is not :mimetype:`text`, instead of printing it fill in the string *fmt* using information from the part and print the resulting filled-in string. Added support for re-encoding ``8bit`` message bodies, and the *linesep* argument. Added the *policy* keyword. As a convenience, :class:`~email.message.EmailMessage` provides the methods :meth:`~email.message.EmailMessage.as_bytes` and ``bytes(aMessage)`` (a.k.a. :meth:`~email.message.EmailMessage.__bytes__`), which simplify the generation of a serialized binary representation of a message object.  For more detail, see :mod:`email.message`. As a convenience, :class:`~email.message.EmailMessage` provides the methods :meth:`~email.message.EmailMessage.as_string` and ``str(aMessage)`` (a.k.a. :meth:`~email.message.EmailMessage.__str__`), which simplify the generation of a formatted string representation of a message object.  For more detail, see :mod:`email.message`. As with the :mod:`email.parser` module, you aren't limited to the functionality of the bundled generator; you could write one from scratch yourself.  However the bundled generator knows how to generate most email in a standards-compliant way, should handle MIME and non-MIME email messages just fine, and is designed so that the bytes-oriented parsing and generation operations are inverses, assuming the same non-transforming :mod:`~email.policy` is used for both.  That is, parsing the serialized byte stream via the :class:`~email.parser.BytesParser` class and then regenerating the serialized byte stream using :class:`BytesGenerator` should produce output identical to the input [#]_.  (On the other hand, using the generator on an :class:`~email.message.EmailMessage` constructed by program may result in changes to the :class:`~email.message.EmailMessage` object as defaults are filled in.) Because strings cannot represent binary data, the :class:`Generator` class must convert any binary data in any message it flattens to an ASCII compatible format, by converting them to an ASCII compatible :mailheader:`Content-Transfer_Encoding`.  Using the terminology of the email RFCs, you can think of this as :class:`Generator` serializing to an I/O stream that is not "8 bit clean".  In other words, most applications will want to be using :class:`BytesGenerator`, and not :class:`Generator`. Encode *s* using the ``ASCII`` codec and the ``surrogateescape`` error handler, and pass it to the *write* method of the *outfp* passed to the :class:`BytesGenerator`'s constructor. Footnotes If *fmt* is ``None``, use the following default *fmt*: If *linesep* is not ``None``, use it as the separator character between all the lines of the flattened message.  If *linesep* is ``None`` (the default), use the value specified in the *policy*. If *maxheaderlen* is not ``None``, refold any header lines that are longer than *maxheaderlen*, or if ``0``, do not rewrap any headers.  If *manheaderlen* is ``None`` (the default), wrap headers and other message lines according to the *policy* settings. If *policy* is specified, use that policy to control message generation.  If *policy* is ``None`` (the default), use the policy associated with the :class:`~email.message.Message` or :class:`~email.message.EmailMessage` object passed to ``flatten`` to control the message generation.  See :mod:`email.policy` for details on what *policy* controls. If *unixfrom* is ``True``, print the envelope header delimiter used by the Unix mailbox format (see :mod:`mailbox`) before the first of the :rfc:`5322` headers of the root message object.  If the root object has no envelope header, craft a standard one.  The default is ``False``. Note that for subparts, no envelope header is ever printed. If optional *mangle_from_* is ``True``, put a ``>`` character in front of any line in the body that starts with the exact string ``"From "``, that is ``From`` followed by a space at the beginning of a line.  *mangle_from_* defaults to the value of the :attr:`~email.policy.Policy.mangle_from_` setting of the *policy* (which is ``True`` for the :data:`~email.policy.compat32` policy and ``False`` for all others). *mangle_from_* is intended for use when messages are stored in Unix mbox format (see :mod:`mailbox` and `WHY THE CONTENT-LENGTH FORMAT IS BAD <https://www.jwz.org/doc/content-length.html>`_). If the :mod:`~email.policy` option :attr:`~email.policy.Policy.cte_type` is ``8bit`` (the default), copy any headers in the original parsed message that have not been modified to the output with any bytes with the high bit set reproduced as in the original, and preserve the non-ASCII :mailheader:`Content-Transfer-Encoding` of any body parts that have them. If ``cte_type`` is ``7bit``, convert the bytes with the high bit set as needed using an ASCII-compatible :mailheader:`Content-Transfer-Encoding`. That is, transform parts with non-ASCII :mailheader:`Content-Transfer-Encoding` (:mailheader:`Content-Transfer-Encoding: 8bit`) to an ASCII compatible :mailheader:`Content-Transfer-Encoding`, and encode RFC-invalid non-ASCII bytes in headers using the MIME ``unknown-8bit`` character set, thus rendering them RFC-compliant. If the :mod:`~email.policy` option :attr:`~email.policy.Policy.cte_type` is ``8bit``, generate the message as if the option were set to ``7bit``. (This is required because strings cannot represent non-ASCII bytes.) Convert any bytes with the high bit set as needed using an ASCII-compatible :mailheader:`Content-Transfer-Encoding`.  That is, transform parts with non-ASCII :mailheader:`Content-Transfer-Encoding` (:mailheader:`Content-Transfer-Encoding: 8bit`) to an ASCII compatible :mailheader:`Content-Transfer-Encoding`, and encode RFC-invalid non-ASCII bytes in headers using the MIME ``unknown-8bit`` character set, thus rendering them RFC-compliant. One of the most common tasks is to generate the flat (serialized) version of the email message represented by a message object structure.  You will need to do this if you want to send your message via :meth:`smtplib.SMTP.sendmail` or the :mod:`nntplib` module, or print the message on the console.  Taking a message object structure and producing a serialized representation is the job of the generator classes. Optional *_mangle_from_* and *maxheaderlen* are as with the :class:`Generator` base class. Print the textual representation of the message object structure rooted at *msg* to the output file specified when the :class:`BytesGenerator` instance was created. Print the textual representation of the message object structure rooted at *msg* to the output file specified when the :class:`Generator` instance was created. Return a :class:`BytesGenerator` object that will write any message provided to the :meth:`flatten` method, or any surrogateescape encoded text provided to the :meth:`write` method, to the :term:`file-like object` *outfp*. *outfp* must support a ``write`` method that accepts binary data. Return a :class:`Generator` object that will write any message provided to the :meth:`flatten` method, or any text provided to the :meth:`write` method, to the :term:`file-like object` *outfp*.  *outfp* must support a ``write`` method that accepts string data. Return an independent clone of this :class:`BytesGenerator` instance with the exact same option settings, and *fp* as the new *outfp*. Return an independent clone of this :class:`Generator` instance with the exact same options, and *fp* as the new *outfp*. The :class:`Generator` class can be used to flatten a message into a text (as opposed to binary) serialized representation, but since Unicode cannot represent binary data directly, the message is of necessity transformed into something that contains only ASCII characters, using the standard email RFC Content Transfer Encoding techniques for encoding email messages for transport over channels that are not "8 bit clean". The :mod:`email.generator` module also provides a derived class, :class:`DecodedGenerator`, which is like the :class:`Generator` base class, except that non-\ :mimetype:`text` parts are not serialized, but are instead represented in the output stream by a string derived from a template filled in with information about the part. The default behavior of the *mangle_from_* and *maxheaderlen* parameters is to follow the policy. This statement assumes that you use the appropriate setting for ``unixfrom``, and that there are no :mod:`policy` settings calling for automatic adjustments (for example, :attr:`~email.policy.Policy.refold_source` must be ``none``, which is *not* the default).  It is also not 100% true, since if the message does not conform to the RFC standards occasionally information about the exact original text is lost during parsing error recovery.  It is a goal to fix these latter edge cases when possible. To accommodate reproducible processing of SMIME-signed messages :class:`Generator` disables header folding for message parts of type ``multipart/signed`` and all subparts. To fill in *fmt*, execute ``fmt % part_info``, where ``part_info`` is a dictionary composed of the following keys and values: Write *s* to the *write* method of the *outfp* passed to the :class:`Generator`'s constructor.  This provides just enough file-like API for :class:`Generator` instances to be used in the :func:`print` function. ``description`` -- Description associated with the non-\ :mimetype:`text` part ``encoding`` -- Content transfer encoding of the non-\ :mimetype:`text` part ``filename`` -- Filename of the non-\ :mimetype:`text` part ``maintype`` -- Main MIME type of the non-\ :mimetype:`text` part ``subtype`` -- Sub-MIME type of the non-\ :mimetype:`text` part ``type`` -- Full MIME type of the non-\ :mimetype:`text` part Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:05+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 "[å¿½ç¥æ¶æ¯çéææ¬ (%(type)s) é¨åï¼æä»¶å %(filename)s]" **æºä»£ç :** :source:`Lib/email/generator.py` :mod:`email.generator`: çæ MIME ææ¡£ è¡ä¸ºç±»ä¼¼äº :class:`Generator`ï¼ä¸åä¹å¤å¨äºå¯¹ä¼ ç» :meth:`Generator.flatten` çæ¶æ¯çä»»ä½å­é¨åï¼å¦æè¯¥å­é¨åçä¸»ç±»åä¸º :mimetype:`text`ï¼åæå°è¯¥å­é¨åçå·²è§£ç è½½è·ï¼èå¦æå¶ä¸»ç±»åä¸ä¸º :mimetype:`text`ï¼åä¸ç´æ¥æå°å®èæ¯ä½¿ç¨æ¥èªè¯¥é¨åçä¿¡æ¯å¡«å¥å­ç¬¦ä¸² *fmt* å¹¶å°å¡«åå®æçå­ç¬¦ä¸²æå°åºæ¥ã æ·»å äºå¯¹éç¼ç  ``8bit`` æ¶æ¯ä½çæ¯æï¼ä»¥å *linesep* åæ°ã æ·»å äº *policy* å³é®å­ã ä½ä¸ºä¸ä¸ªä¾¿æ·å·¥å·ï¼:class:`~email.message.EmailMessage` æä¾äº :meth:`~email.message.EmailMessage.as_bytes` å ``bytes(aMessage)`` (å³ :meth:`~email.message.EmailMessage.__bytes__`) ç­æ¹æ³ï¼å®ä»¬ç®åå°çæä¸ä¸ªæ¶æ¯å¯¹è±¡çåºååäºè¿å¶è¡¨ç¤ºå½¢å¼ã æ´å¤ç»èè¯·åé :mod:`email.message`ã ä½ä¸ºä¸ä¸ªä¾¿æ·å·¥å·ï¼:class:`~email.message.EmailMessage` æä¾äº :meth:`~email.message.EmailMessage.as_string` å ``str(aMessage)`` (å³ :meth:`~email.message.EmailMessage.__str__`) ç­æ¹æ³ï¼å®ä»¬ç®åå°çæä¸ä¸ªæ¶æ¯å¯¹è±¡çå·²æ ¼å¼åå­ç¬¦ä¸²è¡¨ç¤ºå½¢å¼ã æ´å¤ç»èè¯·åé :mod:`email.message`ã ä¸ :mod:`email.parser` æ¨¡åä¸æ ·ï¼ä½ å¹¶ä¸ä¼åéäºå·²æç»çæå¨çåè½ï¼ä½ å¯ä»¥èªå·±ä»å¤´åä¸ä¸ªã ä¸è¿ï¼å·²æç»çæå¨ç¥éå¦ä½ä»¥ç¬¦åæ åçæ¹å¼æ¥çæå¤§å¤æ°çµå­é®ä»¶ï¼åºè¯¥è½å¤å¾å¥½å°å¤ç MIME åé MIME çµå­é®ä»¶æ¶æ¯ï¼å¹¶ä¸è¢«è®¾è®¡ä¸ºé¢åå­èçè§£æåçææä½æ¯äºéçï¼å®åå®ä¸¤èé½ä½¿ç¨åæ ·çéè½¬æ¢å :mod:`~email.policy`ã ä¹å°±æ¯è¯´ï¼éè¿ :class:`~email.parser.BytesParser` ç±»æ¥è§£æåºååå­èæµç¶ååä½¿ç¨ :class:`BytesGenerator` æ¥éæ°çæåºååå­èæµåºå½å¾å°ä¸è¾å¥ç¸åçç»æ [#]_ã ï¼èå¦ä¸æ¹é¢ï¼å¨ç±ç¨åºææé ç :class:`~email.message.EmailMessage` ä¸ä½¿ç¨çæå¨å¯è½å¯¼è´å¯¹é»è®¤å¡«å¥ç :class:`~email.message.EmailMessage` å¯¹è±¡çæ¹åããï¼ å ä¸ºå­ç¬¦ä¸²æ æ³è¡¨ç¤ºäºè¿å¶æ°æ®ï¼:class:`Generator` ç±»å¿é¡»å°ä»»ä½æ¶æ¯ä¸­æå¹³åçä»»ä½äºè¿å¶æ°æ®è½¬æ¢ä¸ºå¼å®¹ ASCII çæ ¼å¼ï¼å·ä½å°å¶è½¬æ¢ä¸ºå¼å®¹ ASCII ç :mailheader:`Content-Transfer_Encoding`ã ä½¿ç¨çµå­é®ä»¶ RFC çæ¯è¯­ï¼ä½ å¯ä»¥å°å¶è§ä½ :class:`Generator` åºååä¸ºä¸ "æ¯æ 8 æ¯ç¹" ç I/O æµã æ¢å¥è¯è¯´ï¼å¤§é¨ååºç¨ç¨åºå°éè¦ä½¿ç¨ :class:`BytesGenerator`ï¼èé :class:`Generator`ã ä½¿ç¨ ``ASCII`` ç¼è§£ç å¨å ``surrogateescape`` éè¯¯å¤çç¨åºç¼ç  *s*ï¼å¹¶å°å¶ä¼ éç»ä¼ å¥å° :class:`BytesGenerator` çæé å¨ç *outfp* ç *write* æ¹æ³ ã å¤æ³¨ å¦æ *fmt* ä¸º ``None``ï¼åä½¿ç¨ä¸åé»è®¤ *fmt*: å¦æ *linesep* ä¸ä¸º ``None``ï¼åä¼å°å¶ç¨ä½æå¹³åæ¶æ¯çææè¡ä¹é´çåéç¬¦ã å¦æ *linesep* ä¸º ``None`` (é»è®¤å¼)ï¼åä½¿ç¨å¨ *policy* ä¸­æå®çå¼ã å¦æ *maxheaderlen* ä¸ä¸º ``None``ï¼åéæ°æå ä»»ä½é¿äº *maxheaderlen* çæ å¤´è¡ï¼æèå¦æä¸º ``0``ï¼åä¸éæ°åè£ä»»ä½æ å¤´ã å¦æ *manheaderlen* ä¸º ``None`` (é»è®¤å¼)ï¼åæ ¹æ® *policy* è®¾ç½®åè£æ å¤´åå¶ä»æ¶æ¯è¡ã å¦ææå®äº *policy*ï¼åä½¿ç¨è¯¥ç­ç¥æ¥æ§å¶æ¶æ¯ççæã å¦æ *policy* ä¸º ``None`` (é»è®¤å¼)ï¼åä½¿ç¨ä¸ä¼ éç» ``flatten`` ç :class:`~email.message.Message` æ :class:`~email.message.EmailMessage` å¯¹è±¡ç¸å³èçç­ç¥æ¥æ§å¶æ¶æ¯ççæã è¯·åé :mod:`email.policy` äºè§£æå³ *policy* ææ§å¶åå®¹çè¯¦æã å¦æ *unixfrom* ä¸º ``True``ï¼åä¼å¨æ ¹æ¶æ¯å¯¹è±¡çç¬¬ä¸ä¸ª :rfc:`5322` æ å¤´ä¹åæå° Unix mailbox æ ¼å¼ (åè§ :mod:`mailbox`) æä½¿ç¨çå°åæ å¤´åéç¬¦ã å¦ææ ¹å¯¹è±¡æ²¡æå°åæ å¤´ï¼åä¼åå»ºä¸ä¸ªæ åæ å¤´ã é»è®¤å¼ä¸º ``False``ã è¯·æ³¨æå¯¹äºå­é¨åæ¥è¯´ï¼ä¸ä¼æå°ä»»ä½å°åæ å¤´ã å¦æå¯éç *mangle_from_* ä¸º ``True``ï¼åä¼å°ä¸ä¸ª ``>`` å­ç¬¦æ¾å°æ¶æ¯ä½ä¸­æ°å¥½ä»¥å­ç¬¦ä¸² ``"From "`` æå¤´ï¼å³å¼å¤´ææ¬ä¸º ``From`` å ä¸ä¸ªç©ºæ ¼çä»»ä½è¡çåé¢ã *mangle_from_* é»è®¤ä¸º *policy* ç :attr:`~email.policy.Policy.mangle_from_` è®¾ç½®å¼ (å¯¹äº :data:`~email.policy.compat32` ç­ç¥ä¸º ``True`` èå¯¹äºææå¶ä»ç­ç¥åä¸º ``False``)ã *mangle_from_* è¢«è®¾è®¡ä¸ºå¨å½æ¶æ¯ä»¥ Unix mbox æ ¼å¼å­å¨æ¶ä½¿ç¨ (åè§ :mod:`mailbox` å `WHY THE CONTENT-LENGTH FORMAT IS BAD <https://www.jwz.org/doc/content-length.html>`_)ã å¦æ :mod:`~email.policy` éé¡¹ :attr:`~email.policy.Policy.cte_type` ä¸º ``8bit`` (é»è®¤å¼)ï¼åä¼å°æªè¢«ä¿®æ¹çåå§å·²è§£ææ¶æ¯ä¸­çä»»ä½æ å¤´æ·è´å°è¾åºï¼å¶ä¸­ä¼éæ°çæä¸åå§æ°æ®ç¸åçé«æ¯ç¹ä½ç»å­èæ°æ®ï¼å¹¶ä¿çå·æå®ä»¬çä»»ä½æ¶æ¯ä½é¨åçé ASCII :mailheader:`Content-Transfer-Encoding`ã å¦æ ``cte_type`` ä¸º ``7bit``ï¼åä¼æ ¹æ®éè¦ä½¿ç¨å¼å®¹ ASCII ç :mailheader:`Content-Transfer-Encoding` æ¥è½¬æ¢é«æ¯ç¹ä½ç»å­èæ°æ®ã ä¹å°±æ¯è¯´ï¼å°å·æé ASCII :mailheader:`Content-Transfer-Encoding` (:mailheader:`Content-Transfer-Encoding: 8bit`) çé¨åè½¬æ¢ä¸ºå¼å®¹ ASCII ç :mailheader:`Content-Transfer-Encoding`ï¼å¹¶ä½¿ç¨ MIME ``unknown-8bit`` å­ç¬¦éæ¥ç¼ç æ å¤´ä¸­ä¸ç¬¦å RFC çé ASCII å­èæ°æ®ï¼ä»¥ä½¿å¶ç¬¦å RFCã å¦æ :mod:`~email.policy` éé¡¹ :attr:`~email.policy.Policy.cte_type` ä¸º ``8bit``ï¼åè§åéé¡¹è¢«è®¾ä¸º ``7bit`` æ¥çææ¶æ¯ã ï¼è¿æ¯å¿éçï¼å ä¸ºå­ç¬¦ä¸²æ æ³è¡¨ç¤ºé ASCII å­èæ°æ®ãï¼ å°ä½¿ç¨å¼å®¹ ASCII ç :mailheader:`Content-Transfer-Encoding` æéè½¬æ¢ä»»ä½å·æé«æ¯ç¹ä½ç»çå­èæ°æ®ã ä¹å°±æ¯è¯´ï¼å°å·æé ASCII :mailheader:`Content-Transfer-Encoding` (:mailheader:`Content-Transfer-Encoding: 8bit`) çé¨åè½¬æ¢ä¸ºå¼å®¹ ASCII ç :mailheader:`Content-Transfer-Encoding`ï¼å¹¶ä½¿ç¨ MIME ``unknown-8bit`` å­ç¬¦éæ¥ç¼ç æ å¤´ä¸­ä¸ç¬¦å RFC çé ASCII å­èæ°æ®ï¼ä»¥ä½¿å¶ç¬¦å RFCã ææ®éçä¸ç§ä»»å¡æ¯çæç±æ¶æ¯å¯¹è±¡ç»æä½è¡¨ç¤ºççµå­é®ä»¶æ¶æ¯çæå¹³ï¼åºååï¼çæ¬ã å¦æä½ æ³éè¿ :meth:`smtplib.SMTP.sendmail` æ :mod:`nntplib` æ¨¡åæ¥åéä½ çæ¶æ¯ææ¯å°æ¶æ¯æå°å°æ§å¶å°å°±å°éè¦è¿æ ·åã æ¥åä¸ä¸ªæ¶æ¯å¯¹è±¡ç»æä½å¹¶çæå¶åºååè¡¨ç¤ºå°±æ¯è¿äºçæå¨ç±»çå·¥ä½ã å¯éç *_mangle_from_* å *maxheaderlen* ä¸ :class:`Generator` åºç±»çç¸åã å°å°ä»¥ *msg* ä¸ºæ ¹çæ¶æ¯å¯¹è±¡ç»æä½çææ¬è¡¨ç¤ºå½¢å¼æå°å°åå»º :class:`BytesGenerator` å®ä¾æ¶æå®çè¾åºæä»¶ã å°ä»¥ *msg* ä¸ºæ ¹çæ¶æ¯å¯¹è±¡ç»æä½çææ¬è¡¨ç¤ºå½¢å¼æå°å°å½ :class:`Generator` å®ä¾è¢«åå»ºæ¶ææå®çè¾åºæä»¶ã è¿åä¸ä¸ª :class:`BytesGenerator` å¯¹è±¡ï¼è¯¥å¯¹è±¡å°ææä¾ç» :meth:`flatten` æ¹æ³çä»»ä½æ¶æ¯æèæä¾ç» :meth:`write` æ¹æ³çä»»ä½ç»è¿ä»£çè½¬ä¹ç¼ç çææ¬åå¥å° :term:`file-like object` *outfp*ã *outfp* å¿é¡»æ¯ææ¥åäºè¿å¶æ°æ®ç ``write`` æ¹æ³ã è¿åä¸ä¸ª :class:`Generator`ï¼å®å°ææä¾ç» :meth:`flatten` æ¹æ³çä»»ä½æ¶æ¯ï¼æèæä¾ç» :meth:`write` æ¹æ³çä»»ä½ææ¬åå¥å° :term:`file-like object` *outfp*ã *outfp* å¿é¡»æ¯ææ¥åå­ç¬¦ä¸²æ°æ®ç ``write`` æ¹æ³ã è¿åæ­¤ :class:`BytesGenerator` å®ä¾çç¬ç«åéï¼å·æå®å¨ç¸åçéé¡¹è®¾ç½®ï¼è *fp* ä¸ºæ°ç *outfp*ã è¿åæ­¤ :class:`Generator` å®ä¾çç¬ç«åéï¼å·æå®å¨ç¸åçéé¡¹è®¾ç½®ï¼è *fp* ä¸ºæ°ç *outfp*ã å¯ä»¥ä½¿ç¨ :class:`Generator` ç±»å°æ¶æ¯æå¹³åä¸ºææ¬ï¼èéäºè¿å¶æ°æ®ï¼çåºååè¡¨ç¤ºå½¢å¼ï¼ä½æ¯ç±äº Unicode æ æ³ç´æ¥è¡¨ç¤ºäºè¿å¶æ°æ®ï¼å æ­¤æ¶æ¯æå¿è¦è¢«è½¬æ¢ä¸ºä»åå« ASCII å­ç¬¦çæ°æ®ï¼è¿å°ä½¿ç¨æ åçµå­é®ä»¶ RFC åå®¹ä¼ è¾ç¼ç æ ¼å¼ææ¯æ¥ç¼ç çµå­é®ä»¶æ¶æ¯ä»¥ä¾¿éè¿é â8 æ¯ç¹ä½å¼å®¹âçä¿¡éæ¥ä¼ è¾ã :mod:`email.generator` æ¨¡åè¿æä¾äºä¸ä¸ªæ´¾çç±» :class:`DecodedGenerator`ï¼å®ç±»ä¼¼äº :class:`Generator` åºç±»ï¼ä¸åä¹å¤å¨äºé :mimetype:`text` é¨åä¸ä¼è¢«åºååï¼èæ¯è¢«è¡¨ç¤ºä¸º åºäºæ¨¡æ¿å¹¶å¡«åäºæå³è¯¥é¨åçä¿¡æ¯çå­ç¬¦ä¸²è¾åºæµçå½¢å¼ã *mangle_from_* å *maxheaderlen* å½¢åçé»è®¤è¡ä¸ºæ¯éµå¾ªç­ç¥ã æ­¤è¯­å¥åå®ä½ ä½¿ç¨äºæ­£ç¡®ç ``unixfrom`` è®¾ç½®ï¼å¹¶ä¸æ²¡æç¨äºèªå¨è°æ´ç :mod:`policy` è®¾ç½®è°ç¨ï¼ä¾å¦ :attr:`~email.policy.Policy.refold_source` å¿é¡»ä¸º ``none``ï¼è¿ *ä¸æ¯* é»è®¤å¼ï¼ã è¿ä¹ä¸æ¯ 100% ä¸ºçï¼å ä¸ºå¦ææ¶æ¯ä¸éµå¾ª RFC æ ååææ¶å®éåå§ææ¬çä¿¡æ¯ä¼å¨è§£æéè¯¯æ¢å¤æ¶ä¸¢å¤±ã å®çç®æ æ¯å¨å¯è½çæåµä¸ä¿®å¤è¿äºåç»­è¾¹ç¼æåµã ä¸ºäºéåº SMIME ç­¾åæ¶æ¯çå¯éç°å¤çè¿ç¨ï¼:class:`Generator` ç¦ç¨äºéå¯¹ ``multipart/signed`` ç±»åçæ¶æ¯é¨ååææå­é¨åçæ å¤´æå ã è¦å¡«å¥ *fmt*ï¼åæ§è¡ ``fmt % part_info``ï¼å¶ä¸­ ``part_info`` æ¯ç±ä¸åé®åå¼ç»æçå­å¸: å° *s* åå¥å°ä¼ ç» :class:`Generator` çæé å¨ç *outfp* ç *write* æ¹æ³ã è¿è¶³å¤ä¸º :class:`Generator` å®éæä¾å¯ç¨äº :func:`print` å½æ°çæä»¶ç±» APIã ``description`` -- ä¸é :mimetype:`text` é¨åç¸å³èçæè¿° ``encoding`` -- é :mimetype:`text` é¨åçåå®¹è½¬æ¢ç¼ç æ ¼å¼ ``filename`` -- é :mimetype:`text` é¨åçæä»¶å ``maintype`` -- é :mimetype:`text` é¨åçä¸» MIME ç±»å ``subtype`` -- é :mimetype:`text` é¨åçå­ MIME ç±»å ``type`` -- é :mimetype:`text` é¨åçå®æ´ MIME ç±»å 