Þ                         ü   ;   ý      9     Ë     â  í   ÷    å  .      4     7  9   È  *        -  l   ®  ½    2   Ù	     
     ¦
     ½
  ¡   Ò
    t    y  ø     {   ~  8   ú     3  f   R  T   ¹   :mod:`distutils` --- Building and installing Python modules :mod:`distutils` is deprecated with removal planned for Python 3.12. See the :ref:`What's New <distutils-deprecated>` entry for more information. :ref:`distutils-index` :ref:`install-index` For the benefits of packaging tool authors and users seeking a deeper understanding of the details of the current packaging and distribution system, the legacy :mod:`distutils` based user documentation and API reference remain available: Most Python users will *not* want to use this module directly, but instead use the cross-version tools maintained by the Python Packaging Authority. In particular, `setuptools <https://setuptools.readthedocs.io/en/latest/>`__ is an enhanced alternative to :mod:`distutils` that provides: The :mod:`distutils` package provides support for building and installing additional modules into a Python installation.  The new modules may be either 100%-pure Python, or may be extension modules written in C, or may be collections of Python packages which include modules coded in both Python and C. The recommended `pip <https://pip.pypa.io/>`__ installer runs all ``setup.py`` scripts with ``setuptools``, even if the script itself only imports ``distutils``. Refer to the `Python Packaging User Guide <https://packaging.python.org>`_ for more information. additional mechanisms for configuring which files to include in source releases (including plugins for integration with version control systems) consistent behaviour across all supported Python versions support for declaring project dependencies the ability to automatically generate Windows command line executables at installation time rather than needing to prebuild them the ability to declare project "entry points", which can be used as the basis for application plugin systems Project-Id-Version: Python 3.11
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
 :mod:`distutils` --- æå»ºåå®è£ Python æ¨¡å :mod:`distutils` å·²è¢«å¼ç¨å¹¶è®¡åå¨ Python 3.12 ä¸­ç§»é¤ã è¯·åé :ref:`æä»ä¹æ°åå <distutils-deprecated>` æ¡ç®äºè§£æ´å¤ä¿¡æ¯ã :ref:`distutils-index` :ref:`install-index` ä¸ºäºæåå·¥å·çä½èåç¨æ·è½æ´å¥½çè§£å½åçæååååç³»ç»ï¼éççåºäº :mod:`distutils` çç¨æ·ææ¡£å API åèä¿æå¯ç¨ï¼ å¤§å¤æ° Python ç¨æ· *ä¸ä¼* æ³è¦ç´æ¥ä½¿ç¨è¿ä¸ªåï¼èæ¯ä½¿ç¨ Python åå®æ¹ç»´æ¤çè·¨çæ¬å·¥å·ãç¹å«å°ï¼ `setuptools <https://setuptools.readthedocs.io/en/latest/>`__ æ¯ä¸ä¸ªå¯¹äº :mod:`distutils` çå¢å¼ºéé¡¹ï¼å®è½æä¾ï¼ :mod:`distutils` åä¸ºå°å¾æå»ºåå®è£çé¢å¤çæ¨¡åï¼æåæ Python å®è£åæä¾æ¯æãæ°æ¨¡åæ¢å¯ä»¥æ¯ç¾åç¾ççº¯ Pythonï¼ä¹å¯ä»¥æ¯ç¨ C åçæ©å±æ¨¡åï¼æèå¯ä»¥æ¯ä¸ç»åå«äºåæ¶ç¨ Python å C ç¼ç ç Python åã æ¨èç  `pip <https://pip.pypa.io/>`__ å®è£å¨ç¨ ``setuptools`` è¿è¡ææç ``setup.py`` èæ¬ï¼å³ä½¿èæ¬æ¬èº«åªå¼äº ``distutils`` åãåè `Python Packaging User Guide <https://packaging.python.org>`_Â  è·å¾æ´å¤ä¿¡æ¯ã é¢å¤çç¨äºéç½®åªäºæä»¶åå«å¨æºä»£ç åå¸ä¸­çæºå¶ï¼åæ¬ä¸çæ¬æ§å¶ç³»ç»éæéè¦çæä»¶ï¼ è·¨ææåæ¯æç Python çæ¬ä¸çä¸è´çè¡¨ç° å¯¹å£°æé¡¹ç®ä¾èµçæ¯æ èªå¨å¨å®è£æ¶é´çæ Windows å½ä»¤è¡å¯æ§è¡æä»¶çè½åï¼èä¸æ¯éè¦é¢ç¼è¯å®ä»¬ çæé¡¹ç®âè¿å¥ç¹âçè½åï¼è¿å¥ç¹å¯ç¨ä½åºç¨æä»¶ç³»ç»çåºç¡ 