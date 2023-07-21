Þ    6      Ì              |  .   }  ù   ¬    ¦  ë   ª  2     s   É  D   =  {        þ  \     É   k  ü   5	  N   2
  Z   
  n  Ü
  
  K    V  ß   Ý  k   ½  @   )     j  Ô     L   X  ?   ¥  J  å  Y   0  Ô     ¢   _             5  Z   ¿  ÿ     ¼     &   ×  é   þ  ­   è  ¿       V  )   j  «     ´   @  "   õ       0  ¥     Ö      ñ   ,  !  ]   2"  F   "  ,   ×"     #  $   #  ½  ©#  ,   g%  æ   %  ã   {&  Ù   _'      9(  j   Z(  C   Å(     	)     )  R   )  Ê   ê)  ×   µ*  J   +  X   Ø+  ]  1,  ú   -  g  .  Î   ò/  m   Á0  C   /1     s1  Ô   1  F   U2  :   2  (  ×2  a    4  ×   b4  ³   :5  ò   î5  å   á6     Ç7  H   N8  ý   8  ¹   9  "   O:  Í   r:     @;  º   Õ;    <  *   =     Ã=     b>      ?  s   #?  )  ?     Á@     Ü@    ð@  I   ÷A  ;   AB  *   }B  m   ¨B  #   C   :mod:`__main__` --- Top-level code environment As a result, a module can discover whether or not it is running in the top-level environment by checking its own ``__name__``, which allows a common idiom for conditionally executing code when the module is not initialized from an import statement:: Both of these mechanisms are related to Python modules; how users interact with them and how they interact with each other.  They are explained in detail below.  If you're new to Python modules, see the tutorial section :ref:`tut-modules` for an introduction. By proactively following this convention ourselves, our module will have the same behavior when run directly (i.e. ``python echo.py``) as it will have if we later package it as a console script entry-point in a pip-installable package. Example usage of this module could be as follows:: For a more detailed look at how ``__name__`` is set in all situations, see the tutorial section :ref:`tut-modules`. Here is an example module that consumes the ``__main__`` namespace:: However, if the module is executed in the top-level code environment, its ``__name__`` is set to the string ``'__main__'``. Idiomatic Usage If the file is part of a package, ``__name__`` will also include the parent package's path:: If used, an ``if __name__ == '__main__'`` block will still work as expected for a ``__main__.py`` file within a package, because its ``__name__`` attribute will include the package's path if imported:: If you are not familiar with Python packages, see section :ref:`tut-packages` of the tutorial.  Most commonly, the ``__main__.py`` file is used to provide a command-line interface for a package. Consider the following hypothetical package, "bandclass": In Python, the special name ``__main__`` is used for two important constructs: In each of these situations, the top-level module's ``__name__`` is set to ``'__main__'``. In particular, be careful about returning strings from your ``main`` function. :func:`sys.exit` will interpret a string argument as a failure message, so your program will have an exit code of ``1``, indicating failure, and the string will be written to :data:`sys.stderr`.  The ``echo.py`` example from earlier exemplifies using the ``sys.exit(main())`` convention. Note that ``from .student import search_students`` is an example of a relative import.  This import style can be used when referencing modules within a package.  For more details, see :ref:`intra-package-references` in the :ref:`tut-modules` section of the tutorial. Note that if the module didn't encapsulate code inside the ``main`` function but instead put it directly within the ``if __name__ == '__main__'`` block, the ``phrase`` variable would be global to the entire module.  This is error-prone as other functions within the module could be unintentionally using the global variable instead of a local name.  A ``main`` function solves this problem. Note that importing ``__main__`` doesn't cause any issues with unintentionally running top-level code meant for script use which is put in the ``if __name__ == "__main__"`` block of the ``start`` module. Why does this work? Note that in this case the ``__main__`` scope doesn't contain a ``__file__`` attribute as it's interactive. Now, if we started our program, the result would look like this: Packaging Considerations Putting as few statements as possible in the block below ``if __name__ == '__main__'`` can improve code clarity and correctness. Most often, a function named ``main`` encapsulates the program's primary behavior:: Python code passed to the Python interpreter with the :option:`-c` argument: Python code read by the Python interpreter from standard input: Regardless of which module a Python program was started with, other modules running within that same program can import the top-level environment's scope (:term:`namespace`) by importing the ``__main__`` module.  This doesn't import a ``__main__.py`` file but rather whichever module that received the special name ``'__main__'``. See :mod:`runpy` for more details on the :option:`-m` flag to the interpreter executable. See :mod:`venv` for an example of a package with a minimal ``__main__.py`` in the standard library. It doesn't contain a ``if __name__ == '__main__'`` block. You can invoke it with ``python -m venv [directory]``. See :mod:`zipapp` for how to run applications packaged as *.zip* files. In this case Python looks for a ``__main__.py`` file in the root directory of the archive. Since the call to ``main`` is wrapped in :func:`sys.exit`, the expectation is that your function will return some value acceptable as an input to :func:`sys.exit`; typically, an integer or ``None`` (which is implicitly returned if your function does not have a return statement). Some modules contain code that is intended for script use only, like parsing command-line arguments or fetching data from standard input.  If a module like this was imported from a different module, for example to unit test it, the script code would unintentionally execute as well. The Python REPL is another example of a "top-level environment", so anything defined in the REPL becomes part of the ``__main__`` scope:: The ``__main__`` scope is used in the implementation of :mod:`pdb` and :mod:`rlcompleter`. The contents of ``__main__.py`` typically isn't fenced with ``if __name__ == '__main__'`` blocks.  Instead, those files are kept short, functions to execute from other modules.  Those other modules can then be easily unit-tested and are properly reusable. The exit code of the program would be 1, indicating an error. Uncommenting the line with ``my_name = "Dinsdale"`` fixes the program and now it exits with status code 0, indicating success: The top-level code environment can be: This command will cause ``__main__.py`` to run. How you utilize this mechanism will depend on the nature of the package you are writing, but in this hypothetical case, it might make sense to allow the teacher to search for students:: This is where using the ``if __name__ == '__main__'`` code block comes in handy. Code within this block won't run unless the module is executed in the top-level environment. This won't work for ``__main__.py`` files in the root directory of a .zip file though.  Hence, for consistency, minimal ``__main__.py`` like the :mod:`venv` one mentioned below are preferred. Using a ``main`` function has the added benefit of the ``echo`` function itself being isolated and importable elsewhere. When ``echo.py`` is imported, the ``echo`` and ``main`` functions will be defined, but neither of them will be called, because ``__name__ != '__main__'``. What is the "top-level code environment"? When a Python module or package is imported, ``__name__`` is set to the module's name.  Usually, this is the name of the Python file itself without the ``.py`` extension:: `Python Packaging User Guide <https://packaging.python.org/>`_ contains a collection of tutorials and references on how to distribute and install Python packages with modern tools. ``__main__.py`` in Python Packages ``__main__.py`` will be executed when the package itself is invoked directly from the command line using the :option:`-m` flag. For example: ``__main__`` is the name of the environment where top-level code is run. "Top-level code" is the first user-specified Python module that starts running. It's "top-level" because it imports all other modules that the program needs. Sometimes "top-level code" is called an *entry point* to the application. ``__name__ == '__main__'`` ``import __main__`` ``main`` functions are often used to create command-line tools by specifying them as entry points for console scripts.  When this is done, `pip <https://pip.pypa.io/>`_ inserts the function call into a template script, where the return value of ``main`` is passed into :func:`sys.exit`. For example:: the Python module or package passed to the Python interpreter with the :option:`-m` argument: the Python module passed to the Python interpreter as a file argument: the ``__main__.py`` file in Python packages. the name of the top-level environment of the program, which can be checked using the ``__name__ == '__main__'`` expression; and the scope of an interactive prompt:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-07-21 14:13+0000
PO-Revision-Date: 2021-06-28 00:54+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :mod:`__main__` --- æé«å±çº§ä»£ç ç¯å¢ å æ­¤ï¼ä¸ä¸ªæ¨¡åå¯ä»¥éè¿æ£æ¥èªå·±ç ``__name__``  ï¼æ¥åç°å®æ¯å¦å¨é¡¶å±ç¯å¢ä¸­è¿è¡ãè¿æ¯åè®¸å¨æ¨¡åæ²¡æä»å¯¼å¥è¯­å¥ä¸­åå§åçæåµä¸ï¼ææ¡ä»¶å°æ§è¡ä»£ç çä¸ä¸ªå¸¸è§çè¯­å¥:: è¿ä¸¤ç§æºå¶é½æ Python æ¨¡åæå³ï¼ç¨æ·å¦ä½ä¸å®ä»¬äº¤äºä»¥åå®ä»¬ä¹é´å¦ä½äº¤äºã ä¸æå°è¿è¡è¯¦ç»è¯´æã å¦æä½ è¿ä¸äºè§£ Python æ¨¡åï¼è¯·æ¥çæç¨ :ref:`tut-modules` ä¸èçä»ç»ã éè¿ä¸»å¨éµå¾ªè¿ä¸æ¯ä¾ï¼æä»¬çæ¨¡åå¨ç´æ¥è¿è¡æ¶ (å³ ``python echo.py``) ä¼æç¸åçè¡ä¸ºï¼å½æä»¬ä»¥åæå®æåæå¯ç¨ pip å®è£çè½¯ä»¶åçæ§å¶å°èæ¬å¥å£æ¶ä¹ä¼å¦æ­¤ã è¯¥æ¨¡åçç¨æ³ç¤ºä¾å¦ä¸:: å³äºå¨æææåµä¸ ``__name__`` æ¯å¦ä½è®¾ç½®çç»èï¼è¯·çæç¨é¨å :ref:`tut-modules` ã ä¸é¢æ¯ä¸ä¸ªä½¿ç¨ ``__main__`` å½åç©ºé´çæ¨¡åçä¾å­:: ä¸è¿ï¼å¦ææ¨¡åæ¯å¨æé«å±çº§ä»£ç ç¯å¢ä¸­æ§è¡çï¼åå®ç ``__name__`` ä¼è¢«è®¾ä¸ºå­ç¬¦ä¸² ``'__main__'``ã å¸¸è§ç¨æ³ å¦ææä»¶æ¯åçç»æé¨åï¼å ``__name__`` è¿å°åæ¬ç¶åçè·¯å¾:: å¦æä½¿ç¨ï¼ä¸ä¸ª ``if __name__ == '__main__'`` åºåä»ç¶ä¼åé¢æçé£æ ·å¯¹ååç ``__main__.py`` æä»¶èµ·ä½ç¨ï¼å ä¸ºå¦æå¯¼å¥ï¼å®ç ``__name__`` å±æ§å°åæ¬åçè·¯å¾:: å¦æä½ ä¸çæPythonåï¼è¯·åéæ¬æç¨ç :ref:`tut-packages` ä¸èãæå¸¸è§çæ¯ï¼ ``__main__.py`` æä»¶è¢«ç¨æ¥ä¸ºä¸ä¸ªåæä¾å½ä»¤è¡æ¥å£ãåè®¾æä¸é¢è¿ä¸ªèæçåï¼"bandclass": å¨ Python ä¸­ï¼ç¹æ®åç§° ``__main__`` è¢«ç¨äºä¸¤ä¸ªéè¦çæé : å¨ä»¥ä¸æ¯ä¸ªæå½¢ä¸­ï¼é¡¶çº§æ¨¡åç ``__name__``  è¢«è®¾ç½®ä¸º ``'__main__'`` ã ç¹å«çæ¯ï¼è¦å°å¿ä»ä½ ç ``main`` å½æ°ä¸­è¿åå­ç¬¦ä¸²ã :func:`sys.exit` å°æä¸ä¸ªå­ç¬¦ä¸²åæ°è§£éä¸ºå¤±è´¥ä¿¡æ¯ï¼æä»¥ä½ çç¨åºå°æä¸ä¸ª ``1`` çéåºä»£ç ï¼è¡¨ç¤ºå¤±è´¥ãå¹¶ä¸è¿ä¸ªå­ç¬¦ä¸²å°è¢«åå¥ :data:`sys.stderr` ã åé¢ç ``echo.py`` ä¾å­ä¸¾ä¾è¯´æäºä½¿ç¨ ``sys.exit(main())`` ççº¦å®ã æ³¨æï¼ ``from .student import search_students`` æ¯ä¸ä¸ªç¸å¯¹å¯¼å¥çä¾å­ã è¿ç§å¯¼å¥æ¹å¼å¯ä»¥å¨å¼ç¨ä¸ä¸ªååçæ¨¡åæ¶ä½¿ç¨ã æ´å¤ç»èï¼è¯·åè§æç¨ :ref:`tut-modules` ä¸­ç :ref:`intra-package-references` ä¸èã è¯·æ³¨æï¼å¦ææ¨¡åæ²¡æå°ä»£ç å°è£å¨ ``main`` å½æ°åï¼èæ¯ç´æ¥æ¾å¨ ``if __name__ == '__main__'`` ååï¼é£ä¹è¿ä¸ª ``phrase`` åéå¯¹æ´ä¸ªæ¨¡åæ¥è¯´å°±æ¯å¨å±åéã è¿å¾å®¹æåºéï¼å ä¸ºæ¨¡ååçå¶ä»å½æ°å¯è½ä¼æ æä¸­ä½¿ç¨å¨å±åéèä¸æ¯å±é¨åç§°ã ä¸ä¸ª ``main`` å½æ°è§£å³äºè¿ä¸ªé®é¢ã è¯·æ³¨æï¼å¯¼å¥ ``__main__`` ä¸ä¼å¯¼è´æ æä¸­è¿è¡æ¨å¨ç¨äºèæ¬çé¡¶å±ä»£ç çé®é¢ï¼è¿äºä»£ç è¢«æ¾å¨æ¨¡å ``start`` ç ``if __name__ == "__main__"`` åä¸­ãä¸ºä»ä¹è¿æ ·åï¼ æ³¨æï¼å¨è¿ç§æåµä¸ï¼ ``__main__`` èå´ä¸åå« ``__file__`` å±æ§ï¼å ä¸ºå®æ¯äº¤äºå¼çã ç°å¨ï¼å¦ææä»¬å¯å¨æä»¬çç¨åºï¼ç»æä¼æ¯è¿æ ·ç: æåèé å°å°½å¯è½å°çè¯­å¥æ¾å¨ä½äº ``if __name__ == '__main__'`` ä¹ä¸çä»£ç åä¸­å¯ä»¥æé«ä»£ç çæ¸æ°åº¦ååç¡®åº¦ã éå¸¸ï¼å°ç±ä¸ä¸ªåä¸º ``main`` çå½æ°æ¥å°è£ç¨åºçä¸»è¦è¡ä¸º:: ä½ä¸º :option:`-c` åæ°ä¼ éç» Python è§£éå¨ç Python ä»£ç : Python è§£éå¨ä»æ åè¾å¥ä¸­è¯»åç Python ä»£ç : ä¸ç®¡ Python ç¨åºæ¯ç¨åªä¸ªæ¨¡åå¯å¨çï¼å¨åä¸ç¨åºä¸­è¿è¡çå¶ä»æ¨¡åå¯ä»¥éè¿å¯¼å¥ ``__main__`` æ¨¡åæ¥å¯¼å¥é¡¶çº§ç¯å¢çèå´ ( :term:`namespace` )ãè¿å¹¶ä¸æ¯å¯¼å¥ä¸ä¸ª ``__main__.py`` æä»¶ï¼èæ¯å¯¼å¥ä½¿ç¨ç¹æ®åç§° ``'__main__'`` çåªä¸ªæ¨¡åã åè§ :mod:`runpy` ä»¥äºè§£æ´å¤å³äº :option:`-m` æ å¿å¯¹è§£éå¨å¯æ§è¡åçç»èã è¯·åé :mod:`venv` ä»¥è·åæ ååºä¸­å·ææå°å ``__main__.py`` çè½¯ä»¶åç¤ºä¾ã å®ä¸åå« ``if __name__ == '__main__'`` ä»£ç åã ä½ å¯ä»¥ç¨ ``python -m venv [directory]`` æ¥åèµ·è°ç¨ã åè§ :mod:`zipapp` äºè§£å¦ä½è¿è¡æåæ *.zip* æä»¶çåºç¨ç¨åºãå¨è¿ç§æåµä¸ï¼Python ä¼å¨å½æ¡£æä»¶çæ ¹ç®å½ä¸å¯»æ¾ä¸ä¸ª ``__main__.py`` æä»¶ã ç±äº ``main`` è°ç¨è¢«åè£¹å¨ :func:`sys.exit` ä¸­ï¼ææä½ çå½æ°å°è¿åä¸äºå¯è¢« :func:`sys.exit` ä½ä¸ºè¾å¥èæ¥åçå¼ï¼éå¸¸ä¸ºä¸ä¸ªæ´æ°æ ``None`` ï¼å¦æä½ çå½æ°æ²¡æè¿åè¯­å¥ï¼åéå«è¿åï¼ã æäºæ¨¡ååå«äºä»ä¾èæ¬ä½¿ç¨çä»£ç ï¼æ¯å¦è§£æå½ä»¤è¡åæ°æä»æ åè¾å¥è·åæ°æ®ã å¦æè¿æ ·çæ¨¡åè¢«ä»ä¸åçæ¨¡åä¸­å¯¼å¥ï¼ä¾å¦ä¸ºäºååæµè¯ï¼èæ¬ä»£ç ä¹ä¼æ æä¸­æ§è¡ã Python REPL æ¯å¦ä¸ä¸ª "é¡¶å±ç¯å¢ "çä¾å­ï¼æä»¥å¨ REPL ä¸­å®ä¹çä»»ä½ä¸è¥¿é½æä¸º ``__main__`` èå´çä¸é¨å:: ``__main__`` èå´ç¨äº :mod:`pdb` å :mod:`rlcompleter` çå®ç°ã ``__main__.py`` çåå®¹éå¸¸ä¸æ¯ç¨ ``if __name__ == '__main__'`` åºåå´èµ·æ¥çã ç¸åï¼è¿äºæä»¶ä¿æç®ç­ï¼åè½ä»å¶ä»æ¨¡åæ§è¡ã é£äºå¶ä»æ¨¡åå¯ä»¥å¾å®¹æå°è¿è¡ååæµè¯ï¼å¹¶ä¸å¯ä»¥éå½å°éå¤ä½¿ç¨ã è¯¥ç¨åºçéåºä»£ç ä¸º 1 ï¼è¡¨ææéè¯¯ãåæ¶å¯¹ ``my_name = "Dinsdale"`` è¿ä¸è¡çæ³¨éï¼å°±å¯ä»¥ä¿®å¤ç¨åºï¼ç°å¨å®çéåºç¶æä»£ç ä¸º 0 ï¼è¡¨ç¤ºæåã æé«å±çº§ä»£ç ç¯å¢å¯ä»¥æ¯: è¿ä¸ªå½ä»¤å°å¯¼è´ ``__main__.py`` çè¿è¡ãä½ å¦ä½å©ç¨è¿ä¸æºå¶å°åå³äºä½ æç¼åçè½¯ä»¶åçæ§è´¨ï¼ä½å¨è¿ä¸ªåè®¾çæ¡ä¾ä¸­ï¼åè®¸æå¸æç´¢å­¦çå¯è½æ¯ææä¹ç:: è¿å°±æ¯ ``if __name__ == '__main__'`` ä»£ç åçç¨æ­¦ä¹å°ãé¤éæ¨¡åå¨é¡¶å±ç¯å¢ä¸­è¢«æ§è¡ï¼å¦åè¯¥ååçä»£ç ä¸ä¼è¿è¡ã ä½è¿å¯¹ .zip æä»¶çæ ¹ç®å½ä¸­ç ``__main__.py`` æä»¶ä¸èµ·ä½ç¨ã å æ­¤ï¼ä¸ºäºä¿æä¸è´æ§ï¼åä¸é¢æå°ç :mod:`venv` è¿æ ·çæå° ``__main__.py`` æ¯é¦éã ä½¿ç¨ ``main`` å½æ°æä¸ä¸ªé¢å¤çå¥½å¤ï¼å°±æ¯ ``echo`` å½æ°æ¬èº«æ¯å­¤ç«çï¼å¯ä»¥å¨å¶ä»å°æ¹å¯¼å¥ãå½ ``echo.py`` è¢«å¯¼å¥æ¶ï¼``echo`` å ``main`` å½æ°å°è¢«å®ä¹ï¼ä½å®ä»¬é½ä¸ä¼è¢«è°ç¨ï¼å ä¸º ``__name__ != '__main__'`` ã ä»ä¹æ¯âæé«å±çº§ä»£ç ç¯å¢âï¼ å½ä¸ä¸ª Python æ¨¡åæåè¢«å¯¼å¥æ¶ï¼``__name__`` ä¼è¢«è®¾ä¸ºæ¨¡åçåç§°ã éå¸¸ï¼è¿å°æ¯ Python æä»¶æ¬èº«çåç§°å»æ ``.py`` åç¼:: `Python æåç¨æ·æå <https://packaging.python.org/>`_ åå«äºä¸ç³»åå³äºå¦ä½ç¨ç°ä»£å·¥å·åååå®è£ Python åçæç¨ååèèµæã Python åä¸­ç ``__main__.py`` å½ä½¿ç¨ :option:`-m` æ å¿ä»å½ä»¤è¡ç´æ¥è°ç¨è½¯ä»¶åæ¬èº«æ¶ï¼å°æ§è¡ ``__main__.py`` ãæ¯å¦è¯´ã ``__main__`` æ¯æé«å±çº§ä»£ç è¿è¡æå¨ç¯å¢çåç§°ã âæé«å±çº§ä»£ç âå³ç¨æ·æå®æåå¯å¨è¿è¡ç Python æ¨¡åã å®è¢«ç§°ä¸ºâæé«å±çº§âæ¯å ä¸ºå®å°å¯¼å¥ç¨åºæéçææå¶ä»æ¨¡åã ææ¶âæé«å±çº§ä»£ç âä¹è¢«ç§°ä¸ºåºç¨ç *å¥å£ç¹*ã ``__name__ == '__main__'`` ``import __main__`` ``main`` å½æ°ç»å¸¸è¢«ç¨æ¥åå»ºå½ä»¤è¡å·¥å·ï¼æå®ä»¬æå®ä¸ºæ§å¶å°èæ¬çå¥å£ç¹ã å½è¿æ ·åæ¶ï¼`pip <https://pip.pypa.io/>`_ å°å½æ°è°ç¨æå¥å°æ¨¡æ¿èæ¬ä¸­ï¼å¶ä¸­ ``main`` çè¿åå¼è¢«ä¼ éå° :func:`sys.exit` ãä¾å¦:: ä½ä¸º :option:`-m` åæ°ä¼ ç» Python è§£éå¨ç Python æ¨¡åæå: ä½ä¸ºæä»¶åæ°ä¼ ç» Python è§£éå¨ç Python æ¨¡å: Python åä¸­ç ``__main__.py`` æä»¶ã ç¨åºçæé«å±çº§ç¯å¢çåç§°ï¼å¯ä»¥ä½¿ç¨ ``__name__ == '__main__'`` è¡¨è¾¾å¼æ¥æ£æ¥å®ï¼ä»¥å ä¸ä¸ªäº¤äºæç¤ºç¬¦çä½ç¨å:: 