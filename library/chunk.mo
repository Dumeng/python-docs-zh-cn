Þ    (      \                a     '   ÿ     '     +     -     4     6     8  &   @  7   g  $        Ä     É     Ð     î    ÷  Q        ã  >   ì  	   +     5     <  9   C     }  '       ª	  +   Á	     í	  L    
     M
  J  l
  @   ·  ñ   ø  S   ê  =   >  À   |     =  "  Å  p  è  ½  Y  X     %   p                    ¤     ¦     ¨  (   °  *   Ù          $     )     0     N  +  W  F        Ê  ;   Ñ                 >   "     a    f       !        ¿  B   Ó         /  -   B  ¿   p  Y   0  <     ¼   Ç  x       ý  K     "EA IFF 85" Standard for Interchange Format Files, Jerry Morrison, Electronic Arts, January 1985. **Source code:** :source:`Lib/chunk.py` *n* 0 0 or 1 4 8 8 + *n* :mod:`chunk` --- Read IFF chunked data A :class:`Chunk` object supports the following methods: A chunk has the following structure: AIFF AIFF-C Audio Interchange File Format Chunk ID Class which represents a chunk.  The *file* argument is expected to be a file-like object.  An instance of this class is specifically allowed.  The only method that is needed is :meth:`~io.IOBase.read`.  If the methods :meth:`~io.IOBase.seek` and :meth:`~io.IOBase.tell` are present and don't raise an exception, they are also used. If these methods are present and raise an exception, they are expected to not have altered the object.  If the optional argument *align* is true, chunks are assumed to be aligned on 2-byte boundaries.  If *align* is false, no alignment is assumed.  The default value is true.  If the optional argument *bigendian* is false, the chunk size is assumed to be in little-endian order. This is needed for WAVE audio files. The default value is true.  If the optional argument *inclheader* is true, the size given in the chunk header includes the size of the header.  The default value is false. Close and skip to the end of the chunk.  This does not close the underlying file. Contents Data bytes, where *n* is the size given in the preceding field Footnotes Length Offset Pad byte needed if *n* is odd and chunk alignment is used RMFF Read at most *size* bytes from the chunk (less if the read hits the end of the chunk before obtaining *size* bytes).  If the *size* argument is negative or omitted, read all data until the end of the chunk.  An empty bytes object is returned when the end of the chunk is encountered immediately. Real Media File Format Return the current position into the chunk. Returns ``False``. Returns the name (ID) of the chunk.  This is the first 4 bytes of the chunk. Returns the size of the chunk. Set the chunk's current position.  The *whence* argument is optional and defaults to ``0`` (absolute file positioning); other values are ``1`` (seek relative to the current position) and ``2`` (seek relative to the file's end).  There is no return value. If the underlying file does not allow seek, only forward seeks are allowed. Size of chunk in big-endian byte order, not including the header Skip to the end of the chunk.  All further calls to :meth:`read` for the chunk will return ``b''``.  If you are not interested in the contents of the chunk, this method should be called so that the file points to the start of the next chunk. The :mod:`chunk` module is deprecated (see :pep:`PEP 594 <594#chunk>` for details). The ID is a 4-byte string which identifies the type of chunk. The remaining methods will raise :exc:`OSError` if called after the :meth:`close` method has been called.  Before Python 3.3, they used to raise :exc:`IOError`, now an alias of :exc:`OSError`. The size field (a 32-bit value, encoded using big-endian byte order) gives the size of the chunk data, not including the 8-byte header. This module provides an interface for reading files that use EA IFF 85 chunks. [#]_  This format is used in at least the Audio Interchange File Format (AIFF/AIFF-C) and the Real Media File Format (RMFF).  The WAVE audio file format is closely related and can also be read using this module. Usually an IFF-type file consists of one or more chunks.  The proposed usage of the :class:`Chunk` class defined here is to instantiate an instance at the start of each chunk and read from the instance until it reaches the end, after which a new instance can be instantiated. At the end of the file, creating a new instance will fail with an :exc:`EOFError` exception. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:56+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 "EA IFF 85" äº¤æ¢æ ¼å¼æä»¶æ å, Jerry Morrison, Electronic Arts, 1985 å¹´ 1 æã **æºä»£ç :** :source:`Lib/chunk.py` *n* 0 0 æ 1 4 8 8 + *n* :mod:`chunk` --- è¯»å IFF ååæ°æ® :class:`Chunk` å¯¹è±¡æ¯æä¸åæ¹æ³ï¼ ä¸ä¸ªååå·æä»¥ä¸ç»æ: AIFF AIFF-C Audio Interchange File Format åºåID ä»£è¡¨ä¸ä¸ªååçç±»ã *file* åæ°é¢æä¸ºä¸ä¸ªæä»¶ç±»å¯¹è±¡ã ç¹å«å°ä¹åè®¸è¯¥ç±»çå®ä¾ã å¯ä¸å¿éçæ¹æ³æ¯ :meth:`~io.IOBase.read`ã å¦æå­å¨ :meth:`~io.IOBase.seek` å :meth:`~io.IOBase.tell` æ¹æ³å¹¶ä¸æ²¡æå¼åå¼å¸¸ï¼å®ä»¬ä¹ä¼è¢«ä½¿ç¨ã å¦æå­å¨è¿äºæ¹æ³å¹¶ä¸å¼åäºå¼å¸¸ï¼åå®ä»¬ä¸åºæ¹åç®æ å¯¹è±¡ã å¦æå¯éåæ° *align* ä¸ºçå¼ï¼ååååºå½ä»¥ 2 å­èè¾¹çå¯¹é½ã å¦æ *align* ä¸ºåå¼ï¼åä¸ä½¿ç¨å¯¹é½ã æ­¤åæ°é»è®¤ä¸ºçå¼ã å¦æå¯éåæ° *bigendian* ä¸ºåå¼ï¼ååå¤§å°åºå½ä¸ºå°ç«¯åºã è¿å¯¹äº WAVE é³é¢æä»¶æ¯å¿é¡»çã æ­¤åæ°é»è®¤ä¸ºçå¼ã å¦æå¯éåæ° *inclheader* ä¸ºçå¼ï¼åååæ å¤´ä¸­ç»åºçå¤§å°å°åæ¬æ å¤´çå¤§å°ã æ­¤åæ°é»è®¤ä¸ºåå¼ã å³é­å¹¶è·³è½¬å°ååçæ«å°¾ã è¿ä¸ä¼å³é­ä¸å±çæä»¶ã ç®å½ æ°æ®å­èï¼å¶ä¸­ *n* æ¯åä¸å­æ®µä¸­ç»åºçå¤§å° å¤æ³¨ é¿åº¦ åç§» å¦æ *n* ä¸ºå¥æ°ä¸ä½¿ç¨åå¯¹é½ï¼åéè¦å¡«åå­è RMFF ä»ååè¯»åè³å¤ *size* ä¸ªå­èï¼å¦æå¨è·å¾ *size* ä¸ªå­èä¹åå·²å°è¾¾ååæ«å°¾åè¯»åçå­èä¼å°äºæ­¤æ°éï¼ã å¦æ *size* åæ°ä¸ºè´å¼æè¢«çç¥ï¼åè¯»åææå­èç´å°ååæ«å°¾ã å½ç«å³éå°ååæ«å°¾åè¿åç©ºå­èä¸²å¯¹è±¡ã Real Media File Format å°å½åä½ç½®è¿åå°ååã è¿å ``False``ã è¿åååçåç§°ï¼IDï¼ã è¿æ¯ååçå¤´ 4 ä¸ªå­èã è¿åååçå¤§å°ã è®¾ç½®ååçå½åä½ç½®ã *whence* åæ°ä¸ºå¯éé¡¹å¹¶ä¸é»è®¤ä¸º ``0`` (ç»å¯¹æä»¶å®ä½)ï¼å¶ä»å¼è¿æ ``1`` (ç¸å¯¹å½åä½ç½®æ¥æ¾) å ``2`` (ç¸å¯¹æä»¶æ«å°¾æ¥æ¾)ã æ²¡æè¿åå¼ã å¦æä¸å±æä»¶ä¸æ¯ææ¥æ¾ï¼ååªåè®¸ååæ¥æ¾ã å¤§ç«¯å­èé¡ºåºçåå¤§å°ï¼ä¸åæ¬å¤´ è·³å°ååæ«å°¾ãæ­¤åå¯¹åååæ¬¡è°ç¨ :meth:`read` å°è¿å ``b''``ã å¦æä½ å¯¹ååçåå®¹ä¸æå´è¶£ï¼ååºå½è°ç¨æ­¤æ¹æ³ä»¥ä½¿æä»¶æåä¸ä¸ååçå¼å¤´ã :mod:`chunk` æ¨¡åå·²è¢«å¼ç¨ï¼è¯·åé :pep:`PEP 594 <594#chunk>` äºè§£è¯¦æï¼ã IDæ¯ä¸ä¸ª4å­èçå­ç¬¦ä¸²ï¼ç¨äºæ è¯åçç±»åã å¨ :meth:`close` æ¹æ³å·²è¢«è°ç¨åå¶ä½æ¹æ³å°ä¼å¼å :exc:`OSError`ã å¨ Python 3.3 ä¹åï¼å®ä»¬æ¾ä¼å¼å :exc:`IOError`ï¼ç°å¨è¿æ¯ :exc:`OSError` çä¸ä¸ªå«åã å¤§å°å­æ®µï¼32 ä½çå¼ï¼ä½¿ç¨å¤§ç«¯å­èåºç¼ç ï¼ç»åºååæ°æ®çå¤§å°ï¼ä¸åæ¬ 8 å­èçæ å¤´ã æ¬æ¨¡åæä¾äºä¸ä¸ªè¯»åä½¿ç¨ EA IFF 85 ååçæ°æ®çæ¥å£chunks. [#]_  è¿ç§æ ¼å¼ä½¿ç¨çåºåæ Audio Interchange File Format (AIFF/AIFF-C) å Real Media File Format (RMFF) ç­ã ä¸å®ä»¬å¯åç¸å³ç WAVE é³é¢æä»¶ä¹å¯ä½¿ç¨æ­¤æ¨¡åæ¥è¯»åã ä½¿ç¨ç±ä¸ä¸ªææ´å¤ååç»æç IFF ç±»åæä»¶ã æ­¤å¤å®ä¹ç :class:`Chunk` ç±»çå»ºè®®ä½¿ç¨æ¹å¼æ¯å¨æ¯ä¸ªååå¼å§æ¶å®ä¾åä¸ä¸ªå®ä¾å¹¶ä»å®ä¾è¯»åç´å°å¶æ«å°¾ï¼å¨é£ä¹åå¯ä»¥åå®ä¾åæ°çå®ä¾ã å°è¾¾æä»¶æ«å°¾æ¶ï¼åå»ºæ°å®ä¾å°ä¼å¤±è´¥å¹¶å¼å :exc:`EOFError` å¼å¸¸ã 