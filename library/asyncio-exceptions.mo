Þ          ¼               \  4   ]  a     e   ô  E   Z  "      r   Ã  
   6  ;   A  ;   }  :   ¹  <   ô  J   1  !   |  4     2   Ó  )     4   0     e  0   ü  ½  -  2   ë  i     e     :   î     )	  ]   H	     ¦	  :   ­	  7   è	  6    
  3   W
  G   
     Ó
  '   ì
  ,        A  -   ]       )      **Source code:** :source:`Lib/asyncio/exceptions.py` :exc:`CancelledError` is now a subclass of :class:`BaseException` rather than :class:`Exception`. A deprecated alias of :exc:`TimeoutError`, raised when the operation has exceeded the given deadline. A string of :class:`bytes` read before the end of stream was reached. A subclass of :exc:`RuntimeError`. Can be raised in situations like setting a result value for a *Future* object that already has a result value set. Exceptions Invalid internal state of :class:`Task` or :class:`Future`. Raised by the :ref:`asyncio stream APIs <asyncio-streams>`. Raised by the :ref:`asyncio stream APIs<asyncio-streams>`. Reached the buffer size limit while looking for a separator. The "sendfile" syscall is not available for the given socket or file type. The operation has been cancelled. The requested read operation did not complete fully. The total number (:class:`int`) of expected bytes. The total number of to be consumed bytes. This class was made an alias of :exc:`TimeoutError`. This exception can be caught to perform custom operations when asyncio Tasks are cancelled.  In almost all situations the exception must be re-raised. This exception is a subclass of :exc:`EOFError`. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-07 14:14+0000
PO-Revision-Date: 2021-06-28 00:54+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç :** :source:`Lib/asyncio/exceptions.py` :exc:`CancelledError` ç°å¨æ¯ :class:`BaseException` çå­ç±»èä¸æ¯ :class:`Exception` çå­ç±»ã :exc:`TimeoutError` çä¸ä¸ªå·²è¢«å¼ç¨çå«åï¼ä¼å¨æä½è¶åºäºç»å®çæ¶éæ¶å¼åã å°è¾¾æµç»æä¹åè¯»åç :class:`bytes` å­ç¬¦ä¸²ã å­ç±» :exc:`RuntimeError` ã å¨ä¸ºå·²è®¾ç½®ç»æå¼çæªæ¥å¯¹è±¡è®¾ç½®ç»æå¼ç­æåµä¸ï¼å¯ä»¥å¼åæ­¤é®é¢ã å¼å¸¸ :class:`Task` æ :class:`Future` çåé¨ç¶ææ æã ç± :ref:`asyncio stream APIs <asyncio-streams>` æåº ç± :ref:`asyncio stream APIs<asyncio-streams>` æåº å¨æ¥æ¾åéç¬¦æ¶è¾¾å°ç¼å²åºå¤§å°éå¶ã "sendfile" ç³»ç»è°ç¨ä¸éç¨äºç»å®çå¥æ¥å­ææä»¶ç±»åã è¯¥æä½å·²è¢«åæ¶ã è¯·æ±çè¯»åæä½æªå®å¨å®æã é¢æå­èçæ»æ°ï¼ :class:`int` ï¼ã è¦æ¶èçå­èæ»æ°ã è¿ä¸ªç±»æ¯ :exc:`TimeoutError` çå«åã åæ¶asyncioä»»å¡æ¶ï¼å¯ä»¥æè·æ­¤å¼å¸¸ä»¥æ§è¡èªå®ä¹æä½ãå¨å ä¹æææåµä¸ï¼é½å¿é¡»éæ°å¼åå¼å¸¸ã æ­¤å¼å¸¸æ¯ :exc:`EOFError` çå­ç±»ã 