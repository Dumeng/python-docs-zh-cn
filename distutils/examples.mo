Þ    /                           9   ¦  /   à       I   #     m      B     _   Ñ  G   1  X   y  ¤  Ò  v  w  Í   î	  Õ   ¼
  ¾        Q  ,   è  ð     {    ^     Q   á  $   3  %   X     ~  9     «   Í     y  ¹     {   K  C   Ç  Y    ª   e  Ú        ë  v   u  n   ì     [  ¼   ë     ¨  G   3  (   {  !   ¤  ,   Æ  0   ó     $  Ã  ¤  u   h  -   Þ  !        .  A   >       Ø     0   j  B     5   Þ  H      ^  ]   Z  ¼!  Â   #  Æ   Ú#     ¡$     6%  !   É%  É   ë%  	  µ&  <   ¿'  E   ü'  $   B(  !   g(     (  /   (  ¥   É(     o)     )  ^   *  0   n*  (  *     È,  à   W-  b   8.  p   .  f   /  {   s/     ï/  ~   0  G   1  '   P1     x1     1     °1  e   Ï1   (In all diagrams in this section, *<root>* will refer to the distribution root directory.)  A minimal setup script to describe this situation would be:: (The empty string also stands for the current directory.) (The empty string stands for the root package.) Checking a package Collection of recipes showing how to achieve more control over distutils. Distutils Examples Extension modules are specified using the ``ext_modules`` option. ``package_dir`` has no effect on where extension source files are found; it only affects the source for pure Python modules.  The simplest  case, a single extension module in a single C source file, is:: For example, if the :file:`setup.py` script is changed like this:: If the :mod:`foo` extension belongs in the root package, the setup script for this could be  :: If the extension actually belongs in a package, say :mod:`foopkg`, then If those two files are moved into a subdirectory, but remain in the root package, e.g.:: If you have more than a couple of modules to distribute, especially if they are in multiple packages, it's probably easier to specify whole packages rather than individual modules.  This works even if your modules are not in a package; you can just tell the Distutils to process modules from the root package, and that works the same as any other package (except that you don't have to have an :file:`__init__.py` file). If you have sub-packages, they must be explicitly listed in ``packages``, but any entries in ``package_dir`` automatically extend to sub-packages. (In other words, the Distutils does *not* scan your source tree, trying to figure out which directories correspond to Python packages by looking for :file:`__init__.py` files.)  Thus, if the default layout grows a sub-package:: If you use the reStructuredText syntax in the ``long_description`` field and `docutils`_  is installed you can check if the syntax is fine with the ``check`` command, using the ``restructuredtext`` option. If you want to put modules in directories not named for their package, then you need to use the ``package_dir`` option again.  For example, if the :file:`src` directory holds modules in the :mod:`foobar` package:: If you're just distributing a couple of modules, especially if they don't live in a particular package, you can specify them individually using the ``py_modules`` option in the setup script. In the simplest case, you'll have two files to worry about: a setup script and the single module you're distributing, :file:`foo.py` in this example:: Let's take an example with a simple script:: More typically, though, you will want to distribute multiple modules in the same package (or in sub-packages).  For example, if the :mod:`foo`  and :mod:`bar` modules belong in package :mod:`foobar`, one way to layout your source tree is :: Note that the name of the distribution is specified independently with the ``name`` option, and there's no rule that says it has to be the same as the name of the sole module in the distribution (although that's probably a good convention to follow).  However, the distribution name is used to generate filenames, so you should stick to letters, digits, underscores, and hyphens. Notice that the class can also be instantiated with a metadata file path to loads its values:: Or, you might put modules from your main package right in the distribution root:: Pure Python distribution (by module) Pure Python distribution (by package) Reading the metadata Running the ``check`` command will display some warnings: Since ``py_modules`` is a list, you can of course specify multiple modules, eg. if you're distributing modules :mod:`foo` and :mod:`bar`, your setup might look like this:: Single extension module The :func:`distutils.core.setup` function provides a command-line interface that allows you to query the metadata fields of a project through the ``setup.py`` script of a given project: The ``check`` command allows you to verify if your package meta-data meet the minimum requirements to build a distribution. The setup script from the last example could also be written as  :: This call reads the ``name`` metadata by running the :func:`distutils.core.setup`  function. Although, when a source or binary distribution is created with Distutils, the metadata fields are written in a static file called :file:`PKG-INFO`. When a Distutils-based project is installed in Python, the :file:`PKG-INFO` file is copied alongside the modules and packages of the distribution under :file:`NAME-VERSION-pyX.X.egg-info`, where ``NAME`` is the name of the project, ``VERSION`` its version as defined in the Metadata, and ``pyX.X`` the major and minor version of Python like ``2.7`` or ``3.2``. This chapter provides a number of basic examples to help get started with distutils.  Additional information about using distutils can be found in the Distutils Cookbook. This document is being retained solely until the ``setuptools`` documentation at https://setuptools.readthedocs.io/en/latest/setuptools.html independently covers all of the relevant information currently included here. This is in fact the default layout expected by the Distutils, and the one that requires the least work to describe in your setup script:: To run it, just call it using your :file:`setup.py` script. If something is missing, ``check`` will display a warning. Where the long description is broken, ``check`` will be able to detect it by using the :mod:`docutils` parser: With exactly the same source tree layout, this extension can be put in the :mod:`foopkg` package simply by changing the name of the extension:: You can put module source files into another directory, but if you have enough modules to do that, it's probably easier to specify modules by package rather than listing them individually. You can read back this static file, by using the :class:`distutils.dist.DistributionMetadata` class and its :func:`read_pkg_file` method:: `Distutils Cookbook <https://wiki.python.org/moin/Distutils/Cookbook>`_ an appropriate setup script would be  :: and the setup script might be  :: in which case your setup script would be  :: then the corresponding setup script would be  :: then you would still specify the root package, but you have to tell the Distutils where source files in the root package live:: Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:51+0000
Last-Translator: Kelly Hwong <dianhuangkan@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 ï¼å¨æ¬ç« èçææå¾ä¸­ï¼*<root>* è¡¨ç¤ºååæ ¹ç®å½ãï¼è¿ç§æåµä¸çä¸ä¸ªæå°éç½®èæ¬æ¯ï¼ ï¼ç©ºå­ç¬¦ä¸²åæ ·è¡¨ç¤ºå½åç®å½ãï¼ ï¼ç©ºå­ç¬¦ä¸²è¡¨ç¤ºæ ¹åãï¼ æ£æ¥ä¸ä¸ªå ä¸å¥å±ç¤ºå¦ä½æ´å¥½å°æ§å¶åä½¿ç¨ distutils çæ¹æ³ã Distutils ç¤ºä¾ æ©å±æ¨¡åç¨ ``ext_modules`` éé¡¹æå®ã``package_dir`` å¯¹å¨åªå¯»æ¾æ©å±æºæä»¶æ æï¼å®åªå¯¹çº¯ Python æ¨¡åçæºæä»¶ææãæç®åçï¼ä¸ä¸ªç¨åä¸ªCæºæä»¶åçåæ©å±æ¨¡åæ¯ï¼ æ¯å¦ï¼å¦æ :file:`setup.py` èæ¬æ¹æï¼ å¦æ :mod:`foo` æ©å±å±äºæ ¹åï¼åéç½®èæ¬å¯ä»¥æ¯ï¼ å¦ææ©å±å¨åä¸­ï¼æ¯å¦ :mod:`foopkg`ï¼é£ä¹ å¦æä¸¤ä¸ªæä»¶ç§»å¨å°å­ç®å½ï¼ä½æ¯ä¾ç¶å¨æ ¹åä¸­ï¼å¦ï¼ å¦æä½ æè¶è¿ä¸ç»æ¨¡åè¦ååï¼ç¹å«æ¯å®ä»¬å¨ä¸åçåä¸­ï¼ä¹è®¸æå®æ´ä¸ªåæ´ç®åï¼èä¸æ¯æå®åç¬çæ¨¡åãè¿æ ·å³ä½¿ä½ çæ¨¡åä¸å¨ä¸ä¸ªåä¸­ä¹ææï¼ä½ å¯ä»¥ç´æ¥ä»¤ Distutils æ¥ä»æ ¹åæ¥å¤çæ¨¡åï¼å¹¶ä¸è¿æ ·å¯¹ä»»ä½å¶ä»åä¹ææï¼é¤éä½ ä¸éè¦ :file:`__init__.py` æä»¶ï¼ã å¦æä½ æå­åï¼åå®ä»¬å¿é¡»æ¾å¼åå¨ ``packages`` ä¸­ï¼ä½æ¯ ``package_dir`` ä¸­çä»»ä½æ¡ç®ä¼èªå¨æ©å±å°å­åãï¼ä¹å°±æ¯è¯´ï¼Distutils *ä¸ä¼* æ«æä½ çæºç æ ï¼èæ¯å°è¯éè¿æ¥æ¾ :file:`__init__.py` æä»¶ï¼æ¥å¼æ¸åªäºç®å½ä¸ Python åå³èãï¼è¿æ ·ï¼å¦æé»è®¤æå¸äº§çä¸ä¸ªå­åï¼ å¦æä½ å¨ ``long_description`` åä¸­ä½¿ç¨ reStructuredText è¯­æ³ï¼å¹¶ä¸å®è£äº `docutils`_ ï¼ä½ å¯ä»¥ç¨ ``check`` å½ä»¤ï¼å ``restructuredtext`` éé¡¹æ£æ¥è¯­æ³æ¯å¦æ­£ç¡®ã å¦æä½ è¦ææ¨¡åæ¾å°æ²¡ææç§å®ä»¬çååå½åçç®å½éï¼é£ä½ éè¦åæ¬¡ä½¿ç¨ ``package_dir`` éé¡¹ãæ¯å¦ï¼å¦æ :file:`src` ç®å½åå«å :mod:`foobar` ä¸­çæ¨¡åï¼ å¦æä½ è¦ååä¸ç»æ¨¡åï¼ç¹å«æ¯å®ä»¬ä¸å¨ç¹å®çåä¸­ï¼ä½ å¯ä»¥å¨éç½®èæ¬ä¸­ä½¿ç¨ ``py_modules`` éé¡¹åç¬æå®å®ä»¬ã æç®åçæåµä¸ï¼ä½ åªç¨å³å¿ä¸¤ä¸ªæä»¶ï¼ä¸ä¸ªéç½®èæ¬ï¼ååä¸ªä½ è¦ååçæ¨¡åï¼è¿ä¸ªç¤ºä¾ä¸­ç :file:`foo.py`: ï¼ æä»¬æ¥ç¨åä¸ªèæ¬ä¸¾ä¾ï¼ æ´ä¸è¬å°ï¼ä½ è¦ååå¤ä¸ªå¨åä¸ä¸ªåï¼æèå­åï¼ä¸­çæ¨¡åãä¸¾ä¸ªä¾å­ï¼åè®¾ :mod:`foo` å :mod:`bar` æ¨¡åå±äº :mod:`foobar` åï¼æå¸æºæä»¶æ çä¸ç§æ¹å¼æ¯ï¼ æ³¨æååçååç¨ ``name`` éé¡¹åç¬æå®ï¼æ²¡æè§å®å®å¿é¡»ååä¸­åç¬çæ¨¡åååï¼è½ç¶è¿ä¹æ¯ä¸ªå¯ä»¥éµå¾ªçå¥½ä¹ æ¯ï¼ãç¶èï¼åååç¨æ¥çææä»¶åï¼æä»¥ä½ åºè¯¥åæç¨å­æ¯ãæ°å­ãä¸åçº¿åè¿è¯å·ã æ³¨æç±»ä¹å¯ä»¥ç¨åæ°æ®æä»¶è½½å¥å¼æ¥å®ä¾åï¼ æèï¼ä½ å¯ä»¥æä¸»åä¸­çæ¨¡åç´æ¥æ¾å°ååæ ¹ç®å½ï¼ çº¯ Python ååï¼éè¿ moduleï¼ çº¯ Python ååï¼éè¿ åï¼ è¯»ååæ°æ® è¿è¡ ``check`` å½ä»¤ä¼æ¾ç¤ºä¸äºè­¦åï¼ å ä¸º ``py_modules`` æ¯ä¸ªåè¡¨ï¼ä½ å½ç¶å¯ä»¥æå®å¤ä¸ªæ¨¡åï¼æ¯å¦ï¼å¦æä½ è¦ååæ¨¡å :mod:`foo` å :mod:`bar`ï¼ä½ çéç½®å¯è½æ¯è¿æ ·ï¼ åä¸ªæ©å±æ¨¡å :func:`distutils.core.setup` å½æ°æä¾ä¸ä¸ªéè¿é¡¹ç®ç ``setup.py``  èæ¬ï¼æ¥æ¥è¯¢é¡¹ç®çåæ°æ®çåçå½ä»¤è¡æ¥å£ï¼ ``check`` å½ä»¤åè®¸ä½ æ ¡éªä½ çåçåæ°æ®æ¯å¦æ»¡è¶³çæååçæä½è¦æ±ã ä¸ä¸ä¸ªç¤ºä¾çéç½®èæ¬ä¹å¯ä»¥åæï¼ è¿ä¸ªè°ç¨éè¿è¿è¡ :func:`distutils.core.setup` å½æ°è¯»å ``name`` åæ°æ®ãç¶èï¼å½æºæä»¶æèäºè¿å¶ååç¨ Distutils åå»ºæ¶ï¼åæ°æ®ååå¥ä¸ä¸ªåä¸º :file:`PKG-INFO` çéææä»¶ãå½ä¸ä¸ªåºäºDistutilsçé¡¹ç®å®è£å¨ Python ä¸­æ¶ï¼:file:`PKG-INFO` æä»¶éçååçæ¨¡åååä¸èµ·å¤å¶å° :file:`NAME-VERSION-pyX.X.egg-info` ä¸­ï¼å¶ä¸­ ``NAME`` æ¯é¡¹ç®çåå­ï¼``VERSION`` æ¯åæ°æ®ä¸­å®ä¹ççæ¬ï¼ ``pyX.X`` åæ¯ Python çå¤§çæ¬åå°çæ¬ï¼å¦ ``2.7`` æè ``3.2``ã æ¬ç« èæä¾å ä¸ªåºç¡ç¤ºä¾ï¼æ¥å¸®å©ç¨æ·å¥é¨ distutilsãå³äºä½¿ç¨ distutils çé¢å¤ä¿¡æ¯å¯ä»¥åè Distutils Cookbookã è¿ç¯ææ¡£æ¯åå²éçææ¡£ï¼å¨ https://setuptools.readthedocs.io/en/latest/setuptools.html ä¸ç ``setuptools`` ææ¡£ç¬ç«æ¶µçæ­¤å¤åå«çææç¸å³ä¿¡æ¯ä¹åï¼å°ä¸ååç¬ä½ä¸ºæ­£å¼ææ¡£ä¿çã è¿å¶å®æ¯ Distutils é»è®¤çæå¸ï¼ä¹æ¯ä½ çéç½®èæ¬ä¸­éè¦çå·¥ä½éæå°çã ç´æ¥ä½¿ç¨ä½ ç :file:`setup.py` èæ¬æ¥è¿è¡å®ãå¦æç¼ºäºä¸äºä¸è¥¿ï¼``check`` ä¼æ¾ç¤ºè­¦åã é¿æè¿°ä¸­æé®é¢çå°æ¹ï¼éè¿ä½¿ç¨ :mod:`docutils` è§£æå¨ï¼``check`` è½è¿è¡å é¤ï¼ ä½¿ç¨å®å¨ç¸åçæºæä»¶æ æå¸ï¼éè¿æ¹åæ©å±çåå­ï¼è¿ä¸ªæ©å±å¾å®¹ææ¾å¥ :mod:`foopkg` åä¸­ï¼ ä½ å¯ä»¥ææ¨¡åæºæä»¶æ¾è¿å¦ä¸ä¸ªç®å½ï¼ä½æ¯å¦æä½ æè¶³å¤çæ¨¡åï¼ä¹è®¸ç¨åæå®æ¨¡åæ´ç®åï¼èä¸æ¯åç¬ååºå®ä»¬ã ä½ å¯ä»¥è¯»åéææä»¶ï¼ä½¿ç¨ :class:`distutils.dist.DistributionMetadata` ç±»åå®ç :func:`read_pkg_file` æ¹æ³ï¼ `Distutils Cookbook <https://wiki.python.org/moin/Distutils/Cookbook>`_ ä¸ä¸ªåéçéç½®èæ¬å¯ä»¥æ¯ï¼ å¹¶ä¸éç½®èæ¬æ¯ï¼ è¿æ ·ä½ çéç½®æä»¶æ¯ï¼ åç¸åºçéç½®èæ¬æ¯ï¼ é£ä¹ä½ ä¾ç¶éè¦æå®æ ¹åï¼ä½æ¯ä½ è¿éè¦åè¯ Distutils æ ¹åä¸­çæºæä»¶å¨åªï¼ 