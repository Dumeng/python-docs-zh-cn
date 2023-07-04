Þ    .                    ü  &   ý  2   $     W     ]     b     i  .   þ     -  á  K  R   -  ¢        #  ¡   Ã  ý   e     c	  R   i	  2   ¼	  _   ï	  ¬  O
  ë  ü  ¡   è  ±        <  	  Ì      Ö  b   ÷  ?   Z  .     =   É  /     U   7        T   .  #     Ô   §    |  1        =  4   Û  +     4   <  Q   q    Ã  m   Ë     9  ½  ?  &   ý  +   $     P     V     [     b  2   ö     )  ß  G  E   '     m               ç   !     "  Y   "  *   g"  ]   "  y  ð"  Ý  j$     H'  ¬   Ø'     (    )     *  `   /*  @   *  $   Ñ*  -   ö*  0   $+  \   U+     ²+  D   O,  '   ,  ²   ¼,  Y  o-  $   É.     î.  -   n/  0   /  /   Í/  \   ý/    Z0  a   a1     Ã1   **Source code:** :source:`Lib/aifc.py` :mod:`aifc` --- Read and write AIFF and AIFC files A-LAW AIFF AIFF-C Add a mark with the given id (larger than 0), and the given name at the given position.  This method can be called at any time before :meth:`close`. Any :term:`bytes-like object` is now accepted. Audio Interchange File Format Audio files have a number of parameters that describe the audio data. The sampling rate or frame rate is the number of times per second the sound is sampled.  The number of channels indicate if the audio is mono, stereo, or quadro.  Each frame consists of one sample per channel.  The sample size is the size in bytes of each sample.  Thus a frame consists of ``nchannels * samplesize`` bytes, and a second's worth of audio consists of ``nchannels * samplesize * framerate`` bytes. Close the AIFF file.  After calling this method, the object can no longer be used. Close the AIFF file.  The header of the file is updated to reflect the actual size of the audio data. After calling this method, the object can no longer be used. Create an AIFF file.  The default is that an AIFF-C file is created, unless the name of the file ends in ``'.aiff'`` in which case the default is an AIFF file. Create an AIFF-C file.  The default is that an AIFF-C file is created, unless the name of the file ends in ``'.aiff'`` in which case the default is an AIFF file. For example, CD quality audio has a sample size of two bytes (16 bits), uses two channels (stereo) and has a frame rate of 44,100 frames/second.  This gives a frame size of 4 bytes (2\*2), and a second's worth occupies 2\*2\*44100 bytes (176,400 bytes). G.722 Like :meth:`writeframes`, except that the header of the audio file is not updated. Module :mod:`aifc` defines the following function: Objects returned by :func:`.open` when a file is opened for reading have the following methods: Objects returned by :func:`.open` when a file is opened for writing have all the above methods, except for :meth:`readframes` and :meth:`setpos`.  In addition the following methods exist.  The :meth:`get\*` methods can only be called after the corresponding :meth:`set\*` methods have been called.  Before the first :meth:`writeframes` or :meth:`writeframesraw`, all parameters except for the number of frames must be filled in. Open an AIFF or AIFF-C file and return an object instance with methods that are described below.  The argument *file* is either a string naming a file or a :term:`file object`.  *mode* must be ``'r'`` or ``'rb'`` when the file must be opened for reading, or ``'w'``  or ``'wb'`` when the file must be opened for writing. If omitted, ``file.mode`` is used if it exists, otherwise ``'rb'`` is used.  When used for writing, the file object should be seekable, unless you know ahead of time how many samples you are going to write in total and use :meth:`writeframesraw` and :meth:`setnframes`. The :func:`.open` function may be used in a :keyword:`with` statement.  When the :keyword:`!with` block completes, the :meth:`~aifc.close` method is called. Read and return the next *nframes* frames from the audio file.  The returned data is a string containing for each frame the uncompressed samples of all channels. Return a bytes array convertible to a human-readable description of the type of compression used in the audio file.  For AIFF files, the returned value is ``b'not compressed'``. Return a bytes array of length 4 describing the type of compression used in the audio file.  For AIFF files, the returned value is ``b'NONE'``. Return a list of markers in the audio file.  A marker consists of a tuple of three elements.  The first is the mark ID (an integer), the second is the mark position in frames from the beginning of the data (an integer), the third is the name of the mark (a string). Return the current frame number. Return the current write position in the output file.  Useful in combination with :meth:`setmark`. Return the number of audio channels (1 for mono, 2 for stereo). Return the number of audio frames in the file. Return the sampling rate (number of audio frames per second). Return the size in bytes of individual samples. Return the tuple as described in :meth:`getmarkers` for the mark with the given *id*. Returns a :func:`~collections.namedtuple` ``(nchannels, sampwidth, framerate, nframes, comptype, compname)``, equivalent to output of the :meth:`get\*` methods. Rewind the read pointer.  The next :meth:`readframes` will start from the beginning. Seek to the specified frame number. Set all the above parameters at once.  The argument is a tuple consisting of the various parameters.  This means that it is possible to use the result of a :meth:`getparams` call as argument to :meth:`setparams`. Specify the compression type.  If not specified, the audio data will not be compressed.  In AIFF files, compression is not possible. The name parameter should be a human-readable description of the compression type as a bytes array, the type parameter should be a bytes array of length 4.  Currently the following compression types are supported: ``b'NONE'``, ``b'ULAW'``, ``b'ALAW'``, ``b'G722'``. Specify the number of channels in the audio file. Specify the number of frames that are to be written to the audio file. If this parameter is not set, or not set correctly, the file needs to support seeking. Specify the sampling frequency in frames per second. Specify the size in bytes of audio samples. Support for the :keyword:`with` statement was added. The :mod:`aifc` module is deprecated (see :pep:`PEP 594 <594#aifc>` for details). This module provides support for reading and writing AIFF and AIFF-C files. AIFF is Audio Interchange File Format, a format for storing digital audio samples in a file.  AIFF-C is a newer version of the format that includes the ability to compress the audio data. Write data to the output file.  This method can only be called after the audio file parameters have been set. u-LAW Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:54+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç ï¼** :source:`Lib/aifc.py` :mod:`aifc` --- è¯»å AIFF å AIFC æä»¶ A-LAW AIFF AIFF-C æ·»å å·æç»å® id (å¤§äº 0)ï¼ä»¥åå¨ç»å®ä½ç½®ä¸ç»å®åç§°çæ è®°ã æ­¤æ¹æ³å¯å¨ :meth:`close` ä¹åçä»»ä½æ¶åè¢«è°ç¨ã ç°å¨å¯æ¥åä»»æ :term:`bytes-like object`ã Audio Interchange File Format é³é¢æä»¶åæè®¸å¤åæ°ï¼ç¨äºæè¿°é³é¢æ°æ®ãéæ ·çæå¸§çæ¯æ¯ç§å¯¹å£°é³éæ ·çæ¬¡æ°ãééæ°è¡¨ç¤ºé³é¢æ¯åå£°éï¼åå£°éè¿æ¯åå£°éãæ¯ä¸ªééçæ¯ä¸ªå¸§åå«ä¸æ¬¡éæ ·ãéæ ·å¤§å°æ¯ä»¥å­èè¡¨ç¤ºçæ¯æ¬¡éæ ·çå¤§å°ãå æ­¤ï¼ä¸å¸§ç± ``nchannels * samplesize`` ï¼ééæ°*éæ ·å¤§å°ï¼å­èç»æï¼èä¸ç§éçé³é¢åå« ``nchannels * samplesize * framerate`` ï¼ééæ°*éæ ·å¤§å°*å¸§çï¼å­èã å³é­ AIFF æä»¶ãè°ç¨æ­¤æ¹æ³åï¼å¯¹è±¡å°æ æ³åä½¿ç¨ã å³é­ AIFF æä»¶ã æä»¶çæ å¤´ä¼è¢«æ´æ°ä»¥åæ é³é¢æ°æ®çå®éå¤§å°ã å¨è°ç¨æ­¤æ¹æ³ä¹åï¼å¯¹è±¡å°æ æ³åè¢«ä½¿ç¨ã åå»ºä¸ä¸ª AIFF æä»¶ï¼é»è®¤åå»º AIFF-C æä»¶ï¼é¤éæä»¶åä»¥ ``'.aiff'`` ä¸ºåç¼ï¼å¨æ­¤æåµä¸é»è®¤åå»º AIFF æä»¶ã åå»ºä¸ä¸ª AIFF-C æä»¶ã é»è®¤åå»º AIFF-C æä»¶ï¼é¤éæä»¶åä»¥ ``'.aiff'`` ä¸ºåç¼ï¼å¨æ­¤æåµä¸é»è®¤åå»º AIFF æä»¶ã ä¾å¦ï¼CD è´¨éçé³é¢éæ ·å¤§å°ä¸º 2 å­èï¼16ä½ï¼ï¼ä½¿ç¨ 2 ä¸ªå£°éï¼ç«ä½å£°ï¼ï¼ä¸å¸§éçä¸º 44,100 å¸§/ç§ãè¿è¡¨ç¤ºå¸§å¤§å°ä¸º 4 å­è (2\*2)ï¼ä¸ç§éå ç¨ 2\*2\*44100 å­èï¼176,400 å­èï¼ã G.722 ç±»ä¼¼äº :meth:`writeframes`ï¼ä¸åä¹å¤å¨äºé³é¢æä»¶çæ å¤´ä¸ä¼è¢«æ´æ°ã :mod:`aifc` æ¨¡åå®ä¹äºä»¥ä¸å½æ°ï¼ å½æå¼æä»¶ç¨äºè¯»åæ¶ï¼ç± :func:`.open` è¿åçå¯¹è±¡å·æä»¥ä¸å ç§æ¹æ³ï¼ æå¼æä»¶ç¨äºåå¥æ¶ï¼:func:`.open` è¿åçå¯¹è±¡å·æä¸è¿°æææ¹æ³ï¼ä½ :meth:`readframes` å :meth:`setpos` é¤å¤ï¼å¹¶é¢å¤å·å¤äºä»¥ä¸æ¹æ³ãåªæè°ç¨äº :meth:`set\*` æ¹æ³ä¹åï¼æè½è°ç¨ç¸åºç :meth:`get\*` æ¹æ³ãå¨é¦æ¬¡è°ç¨ :meth:`writeframes` æ :meth:`writeframesraw` ä¹åï¼å¿é¡»å¡«åé¤å¸§æ°ä»¥å¤çææåæ°ã æå¼ä¸ä¸ª AIFF æ AIFF-C æä»¶å¹¶è¿åä¸ä¸ªå¯¹è±¡å®ä¾ï¼è¯¥å®ä¾å·æä¸æ¹æè¿°çæ¹æ³ãåæ° *file* æ¯æä»¶åç§°å­ç¬¦ä¸²æ :term:`æä»¶å¯¹è±¡ <file object>`ãå½æå¼æä»¶ç¨äºè¯»åæ¶ï¼*mode* å¿é¡»ä¸º ``'r'`` æ ``'rb'``ï¼å½æå¼æä»¶ç¨äºåå¥æ¶ï¼*mode* å¿é¡»ä¸º ``'w'`` æ ``'wb'``ãå¦æè¯¥åæ°çç¥ï¼åä½¿ç¨ ``file.mode`` çå¼ï¼å¦ææï¼ï¼å¦åä½¿ç¨ ``'rb'``ãå½æä»¶ç¨äºåå¥æ¶ï¼æä»¶å¯¹è±¡åºè¯¥æ¯æ seek æä½ï¼é¤éæåè·ç¥åå¥çéæ ·æ»æ°ï¼å¹¶ä½¿ç¨ :meth:`writeframesraw` å :meth:`setnframes`ã:func:`.open` å½æ°å¯ä»¥å¨ :keyword:`with` è¯­å¥ä¸­ä½¿ç¨ãå½ :keyword:`!with` åæ§è¡å®æ¯ï¼å°è°ç¨ :meth:`~aifc.close` æ¹æ³ã ä»é³é¢æä»¶è¯»åå¹¶è¿ååç»­ *nframes* ä¸ªå¸§ãè¿åçæ°æ®æ¯ä¸ä¸ªå­ç¬¦ä¸²ï¼åå«æ¯ä¸ªå¸§ææééçæªåç¼©éæ ·å¼ã è¿åä¸ä¸ªå­èæ°ç»ï¼å¯è½¬æ¢ä¸ºäººç±»å¯è¯»çæè¿°ï¼æè¿°çæ¯é³é¢æä»¶ä¸­ä½¿ç¨çåç¼©ç±»åãå¯¹äº AIFF æä»¶ï¼è¿åå¼ä¸º ``b'not compressed'``ã è¿åä¸ä¸ªé¿åº¦ä¸º 4 çå­èæ°ç»ï¼æè¿°äºé³é¢æä»¶ä¸­ä½¿ç¨çåç¼©ç±»åãå¯¹äº AIFF æä»¶ï¼è¿åå¼ä¸º ``b'NONE'``ã è¿åä¸ä¸ªåè¡¨ï¼åå«é³é¢æä»¶ä¸­çæææ è®°ãæ è®°ç±ä¸ä¸ª 3 åç´ çåç»ç»æãç¬¬ä¸ä¸ªåç´ æ¯æ è®° IDï¼æ´æ°ï¼ï¼ç¬¬äºä¸ªæ¯æ è®°ä½ç½®ï¼ä»æ°æ®å¼å¤´ç®èµ·çå¸§æ°ï¼æ´æ°ï¼ï¼ç¬¬ä¸ä¸ªæ¯æ è®°çåç§°ï¼å­ç¬¦ä¸²ï¼ã è¿åå½åçå¸§å·ã è¿åè¾åºæä»¶ä¸­çå½ååå¥ä½ç½®ã éç¨äºä¸ :meth:`setmark` è¿è¡ååéåã è¿åé³é¢çééæ°ï¼åå£°éä¸º 1ï¼ç«ä½å£°ä¸º 2ï¼ã è¿åæä»¶ä¸­çé³é¢å¸§æ»æ°ã è¿åéæ ·çï¼æ¯ç§çé³é¢å¸§æ°ï¼ã è¿åä»¥å­èè¡¨ç¤ºçåä¸ªéæ ·çå¤§å°ã æ ¹æ®ä¼ å¥çæ è®° *id* è¿ååç»ï¼åç»ä¸ :meth:`getmarkers` ä¸­æè¿°çä¸è´ã è¿åä¸ä¸ª :func:`~collections.namedtuple` ``(nchannels, sampwidth, framerate, nframes, comptype, compname)``ï¼ä¸ :meth:`get\*` æ¹æ³çè¾åºç¸åã ååè¯»åæéãä¸ä¸æ¬¡ :meth:`readframes` å°ä»å¤´å¼å§ã ç§»å¨è¯»åæéå°æå®çå¸§ä¸ã ä¸æ¬¡æ§è®¾ç½®ä¸è¿°ææåæ°ã è¯¥åæ°æ¯ç±å¤ä¸ªå½¢åç»æçåç»ã è¿æå³çå¯ä»¥ä½¿ç¨ :meth:`getparams` è°ç¨çç»æä½ä¸º :meth:`setparams` çåæ°ã ææåç¼©ç±»åã å¦ææªææï¼åé³é¢æ°æ®å°ä¸ä¼è¢«åç¼©ã å¨ AIFF æä»¶ä¸­ï¼åç¼©æ¯æ æ³å®ç°çã name å½¢ååºå½ä¸ºä»¥å­èæ°ç»è¡¨ç¤ºçäººç±»å¯è¯»çåç¼©ç±»åæè¿°ï¼type å½¢ååºå½ä¸ºé¿åº¦ä¸º 4 çå­èæ°ç»ã ç®åæ¯æçåç¼©ç±»åå¦ä¸: ``b'NONE'``, ``b'ULAW'``, ``b'ALAW'``, ``b'G722'``ã ææé³é¢æä»¶ä¸­çééæ°ã ææè¦åå¥å°é³é¢æä»¶çå¸§æ°ã å¦ææªè®¾å®æ­¤å½¢åæèæªæ­£ç¡®è®¾å®ï¼åæä»¶éè¦æ¯æä½ç½®æ¥æ¾ã ææä»¥æ¯ç§å¸§æ°è¡¨ç¤ºçéæ ·é¢çã ææä»¥å­èä¸ºåä½çé³é¢éæ ·å¤§å°ã æ·»å äºå¯¹ :keyword:`with` è¯­å¥çæ¯æã :mod:`aifc` æ¨¡åå·²è¢«å¼ç¨ï¼è¯·åé (see :pep:`PEP 594 <594#aifc>` äºè§£è¯¦æï¼ã æ¬æ¨¡åæä¾è¯»å AIFF å AIFF-C æä»¶çæ¯æãAIFF æ¯é³é¢äº¤æ¢æä»¶æ ¼å¼ (Audio Interchange File Format)ï¼ä¸ç§ç¨äºå¨æä»¶ä¸­å­å¨æ°å­é³é¢éæ ·çæ ¼å¼ãAIFF-C æ¯è¯¥æ ¼å¼çæ´æ°çæ¬ï¼å¶ä¸­åæ¬åç¼©é³é¢æ°æ®çåè½ã å°æ°æ®åå¥å°è¾åºæä»¶ã æ­¤æ¹æ³åªè½å¨è®¾ç½®äºé³é¢æä»¶å½¢åä¹åè¢«è°ç¨ã u-LAW 