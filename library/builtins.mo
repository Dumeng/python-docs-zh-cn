Þ          D               l   $   m   T     j  ç  ì   R  ½  ?      ý  0    )  O  Ó   y   :mod:`builtins` --- Built-in objects As an implementation detail, most modules have the name ``__builtins__`` made available as part of their globals.  The value of ``__builtins__`` is normally either this module or the value of this module's :attr:`~object.__dict__` attribute. Since this is an implementation detail, it may not be used by alternate implementations of Python. This module is not normally accessed explicitly by most applications, but can be useful in modules that provide objects with the same name as a built-in value, but in which the built-in of that name is also needed.  For example, in a module that wants to implement an :func:`open` function that wraps the built-in :func:`open`, this module can be used directly:: This module provides direct access to all 'built-in' identifiers of Python; for example, ``builtins.open`` is the full name for the built-in function :func:`open`.  See :ref:`built-in-funcs` and :ref:`built-in-consts` for documentation. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:56+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :mod:`builtins` --- åå»ºå¯¹è±¡ ä½ä¸ºä¸ä¸ªå®ç°ç»èï¼å¤§å¤æ°æ¨¡åé½å°åç§° ``__builtins__`` ä½ä¸ºå¶å¨å±åéçä¸é¨åæä¾ã ``__builtins__`` çå¼éå¸¸æ¯è¿ä¸ªæ¨¡åæèè¿ä¸ªæ¨¡åçå¼ :attr:`~object.__dict__` å±æ§ãç±äºè¿æ¯ä¸ä¸ªå®ç°ç»èï¼å æ­¤ Python çæ¿ä»£å®ç°å¯è½ä¸ä¼ä½¿ç¨å®ã å¤§å¤æ°åºç¨ç¨åºéå¸¸ä¸ä¼æ¾å¼è®¿é®æ­¤æ¨¡åï¼ä½å¨æä¾ä¸åç½®å¼ååçå¯¹è±¡çæ¨¡åä¸­å¯è½å¾æç¨ï¼ä½å¶ä¸­è¿éè¦åç½®è¯¥åç§°ãä¾å¦ï¼å¨ä¸ä¸ªæ³è¦å®ç° :func:`open` å½æ°çæ¨¡åä¸­ï¼å®åè£äºåç½®ç :func:`open` ï¼è¿ä¸ªæ¨¡åå¯ä»¥ç´æ¥ä½¿ç¨:: è¯¥æ¨¡åæä¾å¯¹Pythonçææâåç½®âæ è¯ç¬¦çç´æ¥è®¿é®ï¼ä¾å¦ï¼``builtins.open`` æ¯åç½®å½æ°çå¨å :func:`open` ãè¯·åé :ref:`built-in-funcs` å :ref:`built-in-consts` çææ¡£ã 