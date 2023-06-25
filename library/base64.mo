Þ    =                    ì  (   í       g     Í   þ  Ð   Ì  ß        }  ®   ÿ  ?   ®     î  Å  	  I   H  |     ¡     ^   ±          0  í   Ê  ~   ¸     7  o   Å  n   5  n   ¤  n          ø         n     ]        è  \   n  \   Ë  \   (      ²  £  S   V  l   ª         -  M   2            ,  2  ¬   _       `        ý  [     [   q  J   Í  ÷        !     "     ³"  q  Ò"  S  D$  é   %     &     &     &  ½  ¢&  (   `(  l   (  Q   ö(  ¨   H)  ±   ñ)  Ñ   £*  g   u+     Ý+  =   _,     ,    -  U   ­.  l   /     p/  [   0     h0     0  Û   1     ó1     s2  u    3  t   v3  t   ë3  t   `4  ¢   Õ4  ê   x5  è   c6  k   L7  U   ¸7     8  T   8  T   ò8  `   G9  %  ¨9    Î:  K   n<  f   º<    !=     #>  N   (>  ¥   w>     ?    4?     I@     æ@  ]   iA     ÇA  ]   ÔA  ]   2B  C   B  ò   ÔB  _  ÇC     'E     5E  n  KE  "  ºF  Ò   ÝG     °H     ·H     ËH   **Source code:** :source:`Lib/base64.py` *adobe* controls whether the encoded byte sequence is framed with ``<~`` and ``~>``, which is used by the Adobe implementation. *adobe* controls whether the input sequence is in Adobe Ascii85 format (i.e. is framed with <~ and ~>). *foldspaces* is a flag that specifies whether the 'y' short sequence should be accepted as shorthand for 4 consecutive spaces (ASCII 0x20). This feature is not supported by the "standard" Ascii85 encoding. *foldspaces* is an optional flag that uses the special short sequence 'y' instead of 4 consecutive spaces (ASCII 0x20) as supported by 'btoa'. This feature is not supported by the "standard" Ascii85 encoding. *ignorechars* should be a :term:`bytes-like object` or ASCII string containing characters to ignore from the input. This should only contain whitespace characters, and by default contains all whitespace characters in ASCII. *pad* controls whether the input is padded to a multiple of 4 before encoding. Note that the ``btoa`` implementation always pads. *wrapcol* controls whether the output should have newline (``b'\n'``) characters added to it. If this is non-zero, each output line will be at most this many characters long. :mod:`base64` --- Base16, Base32, Base64, Base85 Data Encodings :rfc:`1521` - MIME (Multipurpose Internet Mail Extensions) Part One: Mechanisms for Specifying and Describing the Format of Internet Message Bodies :rfc:`4648` allows for optional mapping of the digit 0 (zero) to the letter O (oh), and for optional mapping of the digit 1 (one) to either the letter I (eye) or letter L (el).  The optional argument *map01* when not ``None``, specifies which letter the digit 1 should be mapped to (when *map01* is not ``None``, the digit 0 is always mapped to the letter O).  For security purposes the default is ``None``, so that 0 and 1 are not allowed in the input. A :exc:`binascii.Error` exception is raised if *s* is incorrectly padded. A :exc:`binascii.Error` is raised if *s* is incorrectly padded or if there are non-alphabet characters present in the input. A new security considerations section was added to :rfc:`4648` (section 12); it's recommended to review the security section for any code deployed to production. ASCII-only Unicode strings are now accepted by the decoding functions of the modern interface. An example usage of the module: Any :term:`bytes-like objects <bytes-like object>` are now accepted by all encoding and decoding functions in this module.  Ascii85/Base85 support added. Decode :term:`bytes-like object` or ASCII string *s* using the URL- and filesystem-safe alphabet, which substitutes ``-`` instead of ``+`` and ``_`` instead of ``/`` in the standard Base64 alphabet, and return the decoded :class:`bytes`. Decode :term:`bytes-like object` or ASCII string *s* using the standard Base64 alphabet and return the decoded :class:`bytes`. Decode the :term:`bytes-like object` *s*, which must contain one or more lines of base64 encoded data, and return the decoded :class:`bytes`. Decode the Ascii85 encoded :term:`bytes-like object` or ASCII string *b* and return the decoded :class:`bytes`. Decode the Base16 encoded :term:`bytes-like object` or ASCII string *s* and return the decoded :class:`bytes`. Decode the Base32 encoded :term:`bytes-like object` or ASCII string *s* and return the decoded :class:`bytes`. Decode the Base64 encoded :term:`bytes-like object` or ASCII string *s* and return the decoded :class:`bytes`. Decode the base85-encoded :term:`bytes-like object` or ASCII string *b* and return the decoded :class:`bytes`.  Padding is implicitly removed, if necessary. Decode the contents of the binary *input* file and write the resulting binary data to the *output* file. *input* and *output* must be :term:`file objects <file object>`. *input* will be read until ``input.readline()`` returns an empty bytes object. Encode :term:`bytes-like object` *s* using the URL- and filesystem-safe alphabet, which substitutes ``-`` instead of ``+`` and ``_`` instead of ``/`` in the standard Base64 alphabet, and return the encoded :class:`bytes`.  The result can still contain ``=``. Encode :term:`bytes-like object` *s* using the standard Base64 alphabet and return the encoded :class:`bytes`. Encode the :term:`bytes-like object` *b* using Ascii85 and return the encoded :class:`bytes`. Encode the :term:`bytes-like object` *b* using base85 (as used in e.g. git-style binary diffs) and return the encoded :class:`bytes`. Encode the :term:`bytes-like object` *s* using Base16 and return the encoded :class:`bytes`. Encode the :term:`bytes-like object` *s* using Base32 and return the encoded :class:`bytes`. Encode the :term:`bytes-like object` *s* using Base64 and return the encoded :class:`bytes`. Encode the :term:`bytes-like object` *s*, which can contain arbitrary binary data, and return :class:`bytes` containing the base64-encoded data, with newlines (``b'\n'``) inserted after every 76 bytes of output, and ensuring that there is a trailing newline, as per :rfc:`2045` (MIME). Encode the contents of the binary *input* file and write the resulting base64 encoded data to the *output* file. *input* and *output* must be :term:`file objects <file object>`. *input* will be read until ``input.read()`` returns an empty bytes object. :func:`encode` inserts a newline character (``b'\n'``) after every 76 bytes of the output, as well as ensuring that the output always ends with a newline, as per :rfc:`2045` (MIME). For more information about the strict base64 check, see :func:`binascii.a2b_base64` If *pad* is true, the input is padded with ``b'\0'`` so its length is a multiple of 4 bytes before encoding. If *validate* is ``False`` (the default), characters that are neither in the normal base-64 alphabet nor the alternative alphabet are discarded prior to the padding check.  If *validate* is ``True``, these non-alphabet characters in the input result in a :exc:`binascii.Error`. MIME May assert or raise a :exc:`ValueError` if the length of *altchars* is not 2. May assert or raise a :exc:`ValueError` if the length of *altchars* is not 2.  Raises a :exc:`TypeError` if *altchars* is not a :term:`bytes-like object`. Module :mod:`binascii` Optional *altchars* must be a :term:`bytes-like object` of length 2 which specifies an alternative alphabet for the ``+`` and ``/`` characters. This allows an application to e.g. generate URL or filesystem safe Base64 strings.  The default is ``None``, for which the standard Base64 alphabet is used. Optional *altchars* must be a :term:`bytes-like object` or ASCII string of length 2 which specifies the alternative alphabet used instead of the ``+`` and ``/`` characters. Optional *casefold* is a flag specifying whether a lowercase alphabet is acceptable as input.  For security purposes, the default is ``False``. Section 5.2, "Base64 Content-Transfer-Encoding," provides the definition of the base64 encoding. Security Considerations Similar to :func:`b32decode` but uses the Extended Hex Alphabet, as defined in :rfc:`4648`. Similar to :func:`b32encode` but uses the Extended Hex Alphabet, as defined in :rfc:`4648`. Support module containing ASCII-to-binary and binary-to-ASCII conversions. The :rfc:`4648` encodings are suitable for encoding binary data so that it can be safely sent by email, used as parts of URLs, or included as part of an HTTP POST request.  The encoding algorithm is not the same as the :program:`uuencode` program. The legacy interface does not support decoding from strings, but it does provide functions for encoding and decoding to and from :term:`file objects <file object>`.  It only supports the Base64 standard alphabet, and it adds newlines every 76 characters as per :rfc:`2045`.  Note that if you are looking for :rfc:`2045` support you probably want to be looking at the :mod:`email` package instead. The legacy interface: The modern interface provides: There are two interfaces provided by this module.  The modern interface supports encoding :term:`bytes-like objects <bytes-like object>` to ASCII :class:`bytes`, and decoding :term:`bytes-like objects <bytes-like object>` or strings containing ASCII to :class:`bytes`.  Both base-64 alphabets defined in :rfc:`4648` (normal, and URL- and filesystem-safe) are supported. This module provides functions for encoding binary data to printable ASCII characters and decoding such encodings back to binary data. It provides encoding and decoding functions for the encodings specified in :rfc:`4648`, which defines the Base16, Base32, and Base64 algorithms, and for the de-facto standard Ascii85 and Base85 encodings. This version does not allow the digit 0 (zero) to the letter O (oh) and digit 1 (one) to either the letter I (eye) or letter L (el) mappings, all these characters are included in the Extended Hex Alphabet and are not interchangeable. base64 base64 encoding encoding Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç ï¼** :source:`Lib/base64.py` *adobe* æ§å¶ç¼ç åçå­èåºåæ¯å¦è¦å ä¸ ``<~`` å ``~>``ï¼è¿æ¯ Adobe å®ç°æä½¿ç¨çã *adobe* æ§å¶è¾å¥åºåæ¯å¦ä¸º Adobe Ascii85 æ ¼å¼ (å³éå  <~ å ~>)ã *foldspaces* ææ æææ¯å¦åºæ¥å 'y' ç­åºåä½ä¸º 4 ä¸ªè¿ç»­ç©ºæ ¼ (ASCII 0x20) çå¿«æ·æ¹å¼ã æ­¤ç¹æ§ä¸è¢« "æ å" Ascii85 ç¼ç æ ¼å¼ææ¯æã *foldspaces* æ¯ä¸ä¸ªå¯éçæ å¿ï¼ä½¿ç¨ç¹æ®çç­åºå 'y' ä»£æ¿ 'btoa' æä¾ç 4 ä¸ªè¿ç»­ç©ºæ ¼ (ASCII 0x20)ãè¿ä¸ªç¹æ§ä¸è¢« "æ å" Ascii85 ç¼ç æ¯æã *ignorechars* åºå½æ¯ä¸ä¸ª :term:`bytes-like object` æ ASCII å­ç¬¦ä¸²ï¼å¶ä¸­åå«è¦ä»è¾å¥ä¸­å¿½ç¥çå­ç¬¦ã è¿åºå½åªåå«ç©ºç½å­ç¬¦ï¼å¹¶ä¸é»è®¤åå« ASCII ä¸­ææçç©ºç½å­ç¬¦ã *pad* æ§å¶å¨ç¼ç ä¹åè¾å¥æ¯å¦å¡«åä¸º4çåæ°ãè¯·æ³¨æï¼``btoa`` å®ç°æ»æ¯å¡«åã *wrapcol* æ§å¶äºè¾åºæ¯å¦åå«æ¢è¡ç¬¦ (``b'\n'``). å¦æè¯¥å¼éé¶, åæ¯ä¸è¡åªæè¯¥å¼æéå¶çå­ç¬¦é¿åº¦. :mod:`base64` --- Base16, Base32, Base64, Base85 æ°æ®ç¼ç  :rfc:`1521` - MIME (Multipurpose Internet Mail Extensions) ç¬¬ä¸é¨åï¼è§å®å¹¶æè¿°å ç¹ç½æ¶æ¯ä½çæ ¼å¼çæºå¶ã :rfc:`4648` åè®¸å¯ä»¥éæ©å°æ°ç  0 (zero) æ å°ä¸ºå­æ¯ O (oh)ï¼å¹¶å¯ä»¥éæ©å°æ°ç  1 (one) æ å°ä¸ºå­æ¯ I (eye) æå­æ¯ L (el)ã å¯éåæ° *map01* å¨ä¸ä¸º ``None`` æ¶ï¼æå®æ°ç  1 åºå½æ å°ä¸ºåªä¸ªå­æ¯ (å½ *map01* ä¸ä¸º ``None`` æ¶ï¼æ°ç  0 æ»æ¯è¢«æ å°ä¸ºå­æ¯ O)ã åºäºå®å¨èèå¶é»è®¤å¼ä¸º ``None``ï¼å èå¨è¾å¥ä¸­ä¸åè®¸ 0 å 1ã å¦æ *s* è¢«ä¸æ­£ç¡®å°å¡«åï¼ä¸ä¸ª :exc:`binascii.Error` éè¯¯å°è¢«æåºã å¦æ *s* è¢«éè¯¯å°å¡«åæè¾å¥ä¸­å­å¨å­æ¯è¡¨ä¹å¤çå­ç¬¦ï¼å°æåº :exc:`binascii.Error`ã å¨ :rfc:`4648` ä¸­æ°å¢äºå®å¨äºé¡¹é¨åï¼ç¬¬ 12 èï¼ï¼å¯¹äºè¦é¨ç½²å°çäº§ç¯å¢çä»»ä½ä»£ç é½å»ºè®®ååèèæ­¤å®å¨äºé¡¹é¨åã æ°çæ¥å£æä¾çè§£ç å½æ°ç°å¨å·²ç»æ¯æåªåå« ASCII ç Unicode å­ç¬¦ä¸²ã æ­¤æ¨¡åçä¸ä¸ªä½¿ç¨ç¤ºä¾: ææ :term:`ç±»å­èå¯¹è±¡ <bytes-like object>` ç°å¨å·²ç»è¢«ææç¼ç åè§£ç å½æ°æ¥åãæ·»å äºå¯¹ Ascii85/Base85 çæ¯æã è§£ç  :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *s*ï¼ä½¿ç¨ URL ä¸æä»¶ç³»ç»å®å¨çå­æ¯è¡¨ï¼ä½¿ç¨ ``-`` ä»¥å ``_`` ä»£æ¿æ å Base64 å­æ¯è¡¨ä¸­ç ``+`` å ``/``ãè¿åè§£ç è¿ç :class:`bytes` è§£ç  :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *s*ï¼ä½¿ç¨æ å Base64 å­æ¯è¡¨å¹¶è¿åç¼ç è¿ç :class:`bytes`ã è§£ç  :term:`bytes-like object` *s*ï¼è¯¥å¯¹è±¡å¿é¡»åå«ä¸è¡æå¤è¡ base64 ç¼ç çæ°æ®ï¼å¹¶è¿åå·²è§£ç ç :class:`bytes`ã è§£ç  Ascii85 ç¼ç è¿ç :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *s* å¹¶è¿åè§£ç è¿ç :class:`bytes`ã è§£ç  Base16 ç¼ç è¿ç :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *s* å¹¶è¿åè§£ç è¿ç :class:`bytes`ã è§£ç  Base32 ç¼ç è¿ç :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *s* å¹¶è¿åè§£ç è¿ç :class:`bytes`ã è§£ç  Base64 ç¼ç è¿ç :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *s* å¹¶è¿åè§£ç è¿ç :class:`bytes`ã è§£ç  base85 ç¼ç è¿ç :term:`bytes-like object` æ ASCII å­ç¬¦ä¸² *b* å¹¶è¿åè§£ç è¿ç :class:`bytes`ã å¦æå¿è¦ï¼å¡«åä¼è¢«éå¼å°ç§»é¤ã è§£ç äºè¿å¶ *input* æä»¶çåå®¹å¹¶å°ç»æäºè¿å¶æ°æ®åå¥ *output* æä»¶ã *input* å *output* å¿é¡»ä¸º :term:`æä»¶å¯¹è±¡ <file object>`. *input* å°è¢«è¯»åç´è³ ``input.readline()`` è¿åç©ºå­èä¸²å¯¹è±¡ã ç¼ç  :term:`bytes-like object` *s*ï¼ä½¿ç¨ URL ä¸æä»¶ç³»ç»å®å¨çå­æ¯è¡¨ï¼ä½¿ç¨ ``-`` ä»¥å ``_`` ä»£æ¿æ å Base64 å­æ¯è¡¨ä¸­ç ``+`` å ``/``ãè¿åç¼ç è¿ç :class:`bytes`ãç»æä¸­å¯è½åå« ``=``ã ç¼ç  :term:`bytes-like object` *s*ï¼ä½¿ç¨æ å Base64 å­æ¯è¡¨å¹¶è¿åç¼ç è¿ç :class:`bytes`ã ç¨ Ascii85 ç¼ç  :term:`bytes-like object` *s* å¹¶è¿åç¼ç è¿ç :class:`bytes` ç¨ base85ï¼å¦ git é£æ ¼çäºè¿å¶ diff æ°æ®æç¨æ ¼å¼ï¼ç¼ç  :term:`bytes-like object` *b* å¹¶è¿åç¼ç åç :class:`bytes`ã ç¨ Base16 ç¼ç  :term:`bytes-like object` *s* å¹¶è¿åç¼ç è¿ç :class:`bytes` ç¨ Base32 ç¼ç  :term:`bytes-like object` *s* å¹¶è¿åç¼ç è¿ç :class:`bytes` å¯¹ :term:`bytes-like object` *s* è¿è¡ Base64 ç¼ç ï¼å¹¶è¿åç¼ç åç :class:`bytes`ã ç¼ç  :term:`bytes-like object` *s*ï¼å¶ä¸­å¯ä»¥åå«ä»»æäºè¿å¶æ°æ®ï¼å¹¶è¿ååå«ç» base64 ç¼ç æ°æ®ç :class:`bytes`ï¼æ¯è¾åº 76 ä¸ªå­èä¹åå°å¸¦ä¸ä¸ªæ¢è¡ç¬¦ (``b'\n'``)ï¼å¹¶ä¼ç¡®ä¿å¨æ«å°¾ä¹æä¸ä¸ªæ¢è¡ç¬¦ï¼å¦ :rfc:`2045` (MIME) æè§å®çé£æ ·ã ç¼ç äºè¿å¶ *input* æä»¶çåå®¹å¹¶å°ç» base64 ç¼ç çæ°æ®åå¥ *output* æä»¶ã *input* å *output* å¿é¡»ä¸º :term:`æä»¶å¯¹è±¡ <file object>`ã *input* å°è¢«è¯»åç´å° ``input.read()`` è¿åç©ºå­èä¸²å¯¹è±¡ã :func:`encode` ä¼å¨æ¯è¾åº 76 ä¸ªå­èä¹åæå¥ä¸ä¸ªæ¢è¡ç¬¦ (``b'\n'``)ï¼å¹¶ä¼ç¡®ä¿è¾åºæ»æ¯ä»¥æ¢è¡ç¬¦æ¥ç»æï¼å¦ :rfc:`2045` (MIME) æè§å®çé£æ ·ã æå³ä¸¥æ ¼ base64 æ£æ¥çè¯¦æï¼è¯·åé :func:`binascii.a2b_base64` å¦æ *pad* ä¸ºçå¼ï¼è¾å¥å°ä»¥ ``b'\0'`` å¡«åä»¥ä½¿å¶ç¼ç åé¿åº¦ä¸º 4 å­èçåæ°ã å¦æ *validate* å¼ä¸º ``False`` ï¼é»è®¤æåµï¼ï¼åå¨å¡«åæ£æ¥åï¼å°ä¸¢å¼æ¢ä¸å¨æ å base-64 å­æ¯è¡¨ä¹ä¸­ä¹ä¸å¨å¤ç¨å­æ¯è¡¨ä¸­çå­ç¬¦ãå¦æ *validate* ä¸º ``True``ï¼è¿äºé base64 å­ç¬¦å°å¯¼è´ :exc:`binascii.Error`ã MIME å¦æ *altchars* ä¸ä¸º 2 åå¯ä»¥æ­è¨è®¾å®æå¼å :exc:`ValueError`ã å¦æ *altchars* çé¿åº¦ä¸ä¸º 2 åå¯ä»¥æ­è¨æå¼å :exc:`ValueError`ã å¦æ *altchars* ä¸æ¯ :term:`bytes-like object` åä¼å¼å :exc:`TypeError`ã æ¨¡å :mod:`binascii` å¯éé¡¹ *altchars* å¿é¡»æ¯ä¸ä¸ªé¿åº¦ä¸º 2 ç :term:`bytes-like object`ï¼å®æå®äºç¨äºæ¿æ¢ ``+`` å ``/`` çå­ç¬¦è¡¨ã è¿åè®¸åºç¨ç¨åºçæå¯¹ URL ææä»¶ç³»ç»å®å¨ç Base64 å­ç¬¦ä¸²ã é»è®¤å¼ä¸º ``None``ï¼å³ä½¿ç¨æ å Base64 å­ç¬¦è¡¨ã å¯éé¡¹ *altchars* å¿é¡»æ¯ä¸ä¸ªé¿åº¦ä¸º 2 ç :term:`bytes-like object` æ ASCII å­ç¬¦ä¸²ï¼å®æå®äºç¨äºæ¿æ¢ ``+`` å ``/`` çå­ç¬¦è¡¨ã å¯éç *casefold* æ¯ä¸ä¸ªæå®å°åå­å¹æ¯å¦å¯æ¥åä¸ºè¾å¥çæ å¿ãä¸ºäºå®å¨èèï¼é»è®¤å¼ä¸º ``False``ã ç¬¬ 5.2 èï¼âBase64 åå®¹è½¬æ¢ç¼ç æ ¼å¼â æä¾äº base64 ç¼ç æ ¼å¼çå®ä¹ã å®å¨èé ç±»ä¼¼äº :func:`b32decode` ä½æ¯ä½¿ç¨ Extended Hex Alphabetï¼å¦ :rfc:`4648` æå®ä¹ã ç±»ä¼¼äº :func:`b32encode` ä½æ¯ä½¿ç¨ Extended Hex Alphabetï¼å¦ :rfc:`4648` æå®ä¹ã æ¯ææ¨¡åï¼åå«ASCIIå°äºè¿å¶åäºè¿å¶å°ASCIIè½¬æ¢ã :rfc:`4648` ä¸­çç¼ç æ ¼å¼éç¨äºç¼ç äºè¿å¶æ°æ®ä½¿å¾å®è½å®å¨å°éè¿çµå­é®ä»¶åéãç¨ä½ URL çä¸é¨åï¼æèåæ¬å¨ HTTP POST è¯·æ±ä¹ä¸­ã æ­¤ç¼ç æ ¼å¼ç®æ³ä¸ :program:`uuencode` ç¨åºå¹¶ä¸ç¸åã æ§çæ¥å£ä¸æä¾ä»å­ç¬¦ä¸²çè§£ç æä½ï¼ä½æä¾äºæä½ :term:`æä»¶å¯¹è±¡ <file object>` çç¼ç åè§£ç å½æ°ãæ§æ¥å£åªæ¯ææ åç Base64 å­æ¯è¡¨ï¼å¹¶ä¸æç§ :rfc:`2045` çè§èæ¯ 76 ä¸ªå­ç¬¦å¢å ä¸ä¸ªæ¢è¡ç¬¦ãæ³¨æï¼å¦æä½ éè¦æ¯æ :rfc:`2045`ï¼é£ä¹ä½¿ç¨ :mod:`email` æ¨¡åå¯è½æ´å åéã æ§å¼æ¥å£: æ°çæ¥å£æä¾ï¼ æ­¤æ¨¡åæä¾äºä¸¤ä¸ªæ¥å£ã è¾æ°çæ¥å£æ¯æå° :term:`å­èç±»å¯¹è±¡ <bytes-like object>` ç¼ç ä¸º ASCII :class:`bytes`ï¼ä»¥åå° :term:`å­èç±»å¯¹è±¡ <bytes-like object>` æåå« ASCII çå­ç¬¦ä¸²è§£ç ä¸º :class:`bytes`ã å¨ :rfc:`4648` ä¸­å®ä¹çå ç§ base-64 å­æ¯è¡¨ï¼æ®éçä»¥å URL åæä»¶ç³»ç»å®å¨çï¼é½åå°æ¯æã æ­¤æ¨¡åæä¾äºå°äºè¿å¶æ°æ®ç¼ç ä¸ºå¯æå°ç ASCII å­ç¬¦ä»¥åå°è¿ç§ç¼ç æ ¼å¼è§£ç åäºè¿å¶æ°æ®çå½æ°ã å®ä¸º :rfc:`4648` æå®ä¹ç Base16, Base32 å Base64 ç®æ³åå·²æä¸ºäºå®æ åç Ascii85 å Base85 ç¼ç æ ¼å¼æä¾äºç¼ç åè§£ç å½æ°ã è¿ä¸ªçæ¬ä¸åè®¸æ°å­ 0ï¼é¶ï¼ä¸å­æ¯ Oï¼ohï¼åæ°å­ 1ï¼ä¸ï¼ä¸å­æ¯ Iï¼eyeï¼æå­æ¯ L ï¼elï¼çæ å°ï¼ææè¿äºå­ç¬¦é½åå«å¨æ©å±çåå­è¿å¶å­æ¯è¡¨ä¸­ï¼ä¸è½äºæ¢ã base64 base64 ç¼ç æ ¼å¼ encoding 