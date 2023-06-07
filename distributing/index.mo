Þ    -                    ì  !   í  !     ,   1  Ý   ^     <     X  v   ^     Õ    f     {  ¼        E  	   Z  '   d  d       ñ     ö  '   	  x   :	  \   ³	  |   
  Ë   
  ¬   Y  î     7   õ  ó   -  £   !  Ò   Å  2     %   Ë     ñ  u        |  4     º  Å      h         k     C     C   Ï          ,  `  Á  ¿  "  $   â  '     $   /  Ì   T     !     6  t   C  k   ¸  º   $     ß  ¢   ò          ¨     µ    Ë     æ     ë         g   (   W      \   è      E!  l   Ð!  º   ="  9   ø"  À   2#     ó#  ¨   z$  <   #%     `%     |%  r   %     &  4   &  x  K&  \  Ä'  _  !)     *  b   	+  @   l+  ?   ­+     í+     ,  #  ,   (see Python Package Index (PyPI)) ... choose a name for my project? ... create and distribute binary extensions? As a popular open source development project, Python has an active supporting community of contributors and users that also make their software available for other Python developers to use under open source license terms. Distributing Python Modules Email For POSIX users (including macOS and Linux users), these instructions assume the use of a :term:`virtual environment`. For Windows users, these instructions assume that the option to adjust the system PATH environment variable was selected when installing Python. For corporate and other institutional users, be aware that many organisations have their own policies around using and contributing to open source software. Please take such policies into account when making use of the distribution and installation tools provided with Python. How do I...? In most parts of the world, software is automatically covered by copyright. This means that other developers require explicit permission to copy, use, modify and redistribute the software. Installing the tools Key terms Open source licensing and collaboration Open source licensing is a way of explicitly granting such permission in a relatively consistent way, allowing developers to share and collaborate efficiently by making common solutions to various problems freely available. This leaves many developers free to spend more time focusing on the problems that are relatively unique to their specific situation. PyPI Python Package Index (PyPI) Reading the Python Packaging User Guide The Python Packaging User Guide covers the various key steps and elements involved in creating and publishing a project: The Python Packaging User Guide includes more details on the `currently recommended tools`_. The currently recommended build and distribution tools can be installed by invoking the ``pip`` module at the command line:: The distribution tools provided with Python are designed to make it reasonably straightforward for developers to make their own contributions back to that common pool of software if they choose to do so. The same distribution tools can also be used to distribute software within an organisation, regardless of whether that software is published as open source software or not. The standard library does not include build tools that support modern Python packaging standards, as the core development team has found that it is important to have standard tools that work consistently, even on older versions of Python. These are quick answers or links for some common tasks. This allows Python users to share and collaborate effectively, benefiting from the solutions others have already created to common (and sometimes even rare!) problems, as well as potentially contributing their own solutions to the common pool. This guide covers the distribution part of the process. For a guide to installing other Python projects, refer to the :ref:`installation guide <installing-index>`. This is actually quite a complex topic, with a variety of alternatives available depending on exactly what you're aiming to achieve. See the Python Packaging User Guide for more information and recommendations. This isn't an easy topic, but here are a few tips: `Building and packaging the project`_ `Project structure`_ `Python Packaging User Guide: Binary Extensions <https://packaging.python.org/guides/packaging-binary-extensions/>`__ `The .pypirc file`_ `Uploading the project to the Python Package Index`_ ``distutils`` is the original build and distribution system first added to the Python standard library in 1998. While direct use of ``distutils`` is being phased out, it still laid the foundation for the current packaging and distribution infrastructure, and it not only remains part of the standard library, but its name lives on in other ways (such as the name of the mailing list used to coordinate Python packaging standards development). `setuptools`_ is a (largely) drop-in replacement for ``distutils`` first published in 2004. Its most notable addition over the unmodified ``distutils`` tools was the ability to declare dependencies on other packages. It is currently recommended as a more regularly updated alternative to ``distutils`` that offers consistent support for more recent packaging standards across a wide range of Python versions. `wheel`_ (in this context) is a project that adds the ``bdist_wheel`` command to ``distutils``/`setuptools`_. This produces a cross platform binary packaging format (called "wheels" or "wheel files" and defined in :pep:`427`) that allows Python libraries, even those including binary extensions, to be installed on a system without needing to be built locally. avoid particularly common words, especially ones with multiple meanings, as they can make it difficult for users to find your software when searching for it check popular hosting sites like GitHub, Bitbucket, etc to see if there is already a project with that name check the Python Package Index to see if the name is already in use check what comes up in a web search for the name you're considering distutils-sig@python.org the `Python Package Index <https://pypi.org>`__ is a public repository of open source licensed packages made available for use by other Python users the `Python Packaging Authority <https://www.pypa.io/>`__ are the group of developers and documentation authors responsible for the maintenance and evolution of the standard packaging tools and the associated metadata and file format standards. They maintain a variety of tools, documentation and issue trackers on `GitHub <https://github.com/pypa>`__. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-04 12:28+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (åè§ Python Package Index (PyPI)) ...ä¸ºæçé¡¹ç®éæ©ä¸ä¸ªåå­ï¼ ...åå»ºåååäºè¿å¶æ©å±ï¼ ä½ä¸ºä¸ä¸ªæµè¡çå¼æºå¼åé¡¹ç®ï¼Pythonæ¥æä¸ä¸ªæ´»è·çè´¡ç®èåç¨æ·æ¯æç¤¾åºï¼è¿äºç¤¾åºä¹å¯ä»¥è®©ä»ä»¬çè½¯ä»¶å¯ä¾å¶ä»Pythonå¼åäººåå¨å¼æºè®¸å¯æ¡æ¬¾ä¸ä½¿ç¨ã åå Python æ¨¡å çµå­é®ç®± å¯¹äº POSIX ç¨æ·ï¼åæ¬ macOS å Linux ç¨æ·ï¼ï¼è¿äºè¯´æåå®ä½¿ç¨äº :term:`virtual environment` ã å¯¹äºWindowsç¨æ·ï¼è¿äºè¯´æåå®å¨å®è£Pythonæ¶éæ©äºè°æ´ç³»ç»PATHç¯å¢åéçéé¡¹ã å¯¹äºä¼ä¸åå¶ä»æºæç¨æ·ï¼è¯·æ³¨æè®¸å¤ç»ç»é½æèªå·±çæ¿ç­æ¥ä½¿ç¨åè´¡ç®å¼æºè½¯ä»¶ãå¨ä½¿ç¨Pythonæä¾çåååå®è£å·¥å·æ¶ï¼è¯·èèè¿äºæ¿ç­ã æè¯¥å¦ä½...ï¼ å¨ä¸çä¸å¤§å¤æ°å°æ¹ï¼è½¯ä»¶èªå¨åçæä¿æ¤ãè¿æå³çå¶ä»å¼åäººåéè¦æç¡®çæéæ¥å¤å¶ï¼ä½¿ç¨ï¼ä¿®æ¹åéæ°ååè½¯ä»¶ã å®è£ç¸å³å·¥å· å³é®æ¯è¯­ å¼æºè®¸å¯ä¸åä½ å¼æºè®¸å¯æ¯ä¸ç§ä»¥ç¸å¯¹ä¸è´çæ¹å¼æç¡®æäºæ­¤ç±»æéçæ¹å¼ï¼åè®¸å¼åäººåéè¿ä¸ºåç§é®é¢åè´¹æä¾éç¨è§£å³æ¹æ¡æ¥ææå°å±äº«ååä½ãè¿ä½¿å¾è®¸å¤å¼åäººåå¯ä»¥å°æ´å¤æ¶é´ç¨äºå³æ³¨ä»ä»¬ç¹å®æåµç¸å¯¹ç¬ç¹çé®é¢ã PyPI Python Package Index (PyPI) éè¯» Python æåç¨æ·æå âPython æåç¨æ·æåâä»ç»äºåå»ºååå¸é¡¹ç®ææ¶åçåä¸ªå³é®æ­¥éª¤ååç´ ï¼ Python æåç¨æ·æååå«æå³ `å½åæ¨èå·¥å·ç`_ çæ´å¤è¯¦ç»ä¿¡æ¯ã å¯ä»¥éè¿å¨å½ä»¤è¡è°ç¨ ``pip`` æ¨¡åæ¥å®è£å½åæ¨èçæå»ºåååå·¥å·:: Pythonæä¾çååå·¥å·æ¨å¨ä½¿å¼åäººåéæ©å¼æºæ¶ï¼å¯ä»¥åçå°ç´æ¥å°å¶èªå·±çè´¡ç®åé¦å°è¯¥å¬å±è½¯ä»¶æ± ã æ è®ºè¯¥è½¯ä»¶æ¯å¦ä½ä¸ºå¼æºè½¯ä»¶åå¸ï¼ç¸åçååå·¥å·ä¹å¯ç¨äºå¨ç»ç»åååè½¯ä»¶ã æ ååºä¸åæ¬æ¯æç°ä»£Pythonæåæ åçæå»ºå·¥å·ï¼å ä¸ºæ ¸å¿å¼åå¢éå·²ç»åç°ï¼å³ä½¿å¨æ§çæ¬çPythonä¸ï¼ä½¿ç¨ä¸è´å·¥ä½çæ åå·¥å·ä¹å¾éè¦ã è¿æ¯ä¸äºå¸¸è§ä»»å¡çå¿«éè§£ç­æç¸å³é¾æ¥ã è¿åè®¸Pythonç¨æ·ææå°å±äº«ååä½ï¼ä»å¶ä»äººå·²ç»åå»ºçè§£å³æ¹æ¡ä¸­åçäºå¸¸è§ï¼ææ¶çè³æ¯ç½è§çï¼é®é¢ï¼ä»¥åå¯ä»¥æä¾ä»ä»¬èªå·±çè§£å³æ¹æ¡ã æ¬æåæ¶µçäºååé¨åçæµç¨ãæå³å®è£å¶ä»Pythoné¡¹ç®çæåï¼è¯·åé :ref:`å®è£æå<installing-index>`ã è¿å®éä¸æ¯ä¸ä¸ªéå¸¸å¤æçä¸»é¢ï¼æ ¹æ®æ¨çç®æ ï¼å¯ä»¥æä¾åç§æ¿ä»£æ¹æ¡ã æå³æ´å¤ä¿¡æ¯åå»ºè®®ï¼è¯·åé Python æåç¨æ·æåã è¿ä¸æ¯ä¸ä¸ªç®åçä¸»é¢ï¼ä½è¿éæä¸äºæç¤ºï¼ `é¡¹ç®çæå»ºä¸æå`_ `é¡¹ç®çç»æ`_ `Python æåç¨æ·æåï¼äºè¿å¶æ©å± <https://packaging.python.org/guides/packaging-binary-extensions/>`__ `The .pypirc file`_ `Uploading the project to the Python Package Index`_ ``distutils`` æ¯æåçæå»ºåååç³»ç»ï¼äº 1998 å¹´é¦æ¬¡å å¥ Python æ ååºã è½ç¶ç´æ¥ä½¿ç¨ ``distutils`` çæ¹å¼å·²è¢«æ·æ±°ï¼å®ä»ç¶æ¯å½åæååååæ¶æçåºç¡ï¼èä¸å®ä¸ä»ä»ç¶æ¯æ ååºçä¸é¨åï¼è¿ä¸ªåç§°è¿ä»¥å¶ä»æ¹å¼å­å¨ï¼ä¾å¦ç¨äºåè° Python æåæ åå¼åæµç¨çé®ä»¶åè¡¨å°±ä»¥æ­¤å½åï¼ã `setuptools`_ æ¯ï¼ä¸»è¦ï¼ä½ä¸ºæååå¸äº 2004 å¹´ç ``distutils`` çç´æ¥åä»£èã å®å¯¹æªç»ä¿®æ¹ç ``distutils`` å·¥å·æéè¦çè¡¥åæ¯è½å¤å£°æå¯¹å¶ä»åçä¾èµã ç®åå®è¢«æ¨èä½ä¸º ``distutils`` å®ææ´æ°çæ¿ä»£åï¼å¨æ´ä¸ºå¤æ ·ç Python çæ¬ä¸ä¸ºææ°çæåæ åæä¾æç»­çæ¯æã `wheel`_ (å¨æ­¤ä¸ä¸æä¸­) æ¯ä¸ä¸ªå° ``bdist_wheel`` å½ä»¤æ·»å å° ``distutils``/`setuptools`_ çé¡¹ç®ã è¿ä¼äº§çä¸ä¸ªè·¨å¹³å°çäºè¿å¶æåæ ¼å¼ (ç§°ä¸º "wheels" æ "wheel æä»¶" å¹¶å¨ :pep:`427` ä¸­å®ä¹)ï¼å®åè®¸å°åç§ Python åºï¼çè³åæ¬äºè¿å¶æ©å±çåºå®è£å°ç³»ç»ä¸­èæ éå¨æ¬å°è¿è¡æå»ºã é¿åä½¿ç¨ç¹å«å¸¸è§çåè¯ï¼å°¤å¶æ¯å·æå¤éå«ä¹çåè¯ï¼å ä¸ºå®ä»¬ä¼ä½¿ç¨æ·å¨æç´¢æ¶é¾ä»¥æ¾å°æ¨çè½¯ä»¶ æ£æ¥æµè¡çæç®¡ç½ç«å¦ GitHubï¼Bitbucket ç­ç­ï¼çæ¯å¦å·²æä¸ä¸ªè¯¥åç§°çé¡¹ç® æ£æ¥ Python Package Index ä»¥æ¥çè¯¥åç§°æ¯å¦å·²è¢«ä½¿ç¨ æ£æ¥æ¨æ­£å¨èèçåç§°å¨ç½ç»æç´¢ä¸­åºç°çåå®¹ distutils-sig@python.org `Python Package Index <https://pypi.org>`__ æ¯ä¸ä¸ªå¼æºè®¸å¯çè½¯ä»¶åå¬å±å­å¨åºï¼å¯ä¾ææ Python ç¨æ·ä½¿ç¨ã `Python Packaging Authority <https://www.pypa.io/>`__ æ¯è´è´£æ åæåå·¥å·ä»¥åç¸å³åæ°æ®åæä»¶æ ¼å¼æ åçç»´æ¤ä¸æ¹è¿çå¼åäººååææ¡£ä½èå¢éã ä»ä»¬åºäºå¨ `GitHub <https://github.com/pypa>`__ ä¸ç»´æ¤çåç§å·¥å·ãææ¡£åé®é¢è¿½è¸ªç³»ç»ã 