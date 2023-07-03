Þ          ¬               <     =  Ø   Ö  3   ¯     ã  M  ì  Æ   :            %   2  1   X  `    ´   ë  Æ     
  g	     r
  ý   
  #     ½  ¦  ¨   d  ß     3   í     !  $  (  Í   M       '   4  %   \  .     u  ±  «   '  ¸  Ó  î        {  ë     !   ~   An often-heard complaint is that event handlers bound to events with the :meth:`bind` method don't get handled even when the appropriate key is pressed. Build Tix with SAM enabled, perform the appropriate call to :c:func:`Tclsam_init`, etc. inside Python's :file:`Modules/tkappinit.c`, and link with libtclsam and libtksam (you might include the Tix libraries as well). Can I have Tk events handled while waiting for I/O? Contents Depending on what platform(s) you are aiming at, there are also several alternatives. A `list of cross-platform <https://wiki.python.org/moin/GuiProgramming#Cross-Platform_Frameworks>`_ and `platform-specific <https://wiki.python.org/moin/GuiProgramming#Platform-specific_Frameworks>`_ GUI frameworks can be found on the python wiki. Freeze is a tool to create stand-alone applications.  When freezing Tkinter applications, the applications will not be truly stand-alone, as the application will still need the Tcl and Tk libraries. General GUI Questions Graphic User Interface FAQ How do I freeze Tkinter applications? I can't get key bindings to work in Tkinter: why? On platforms other than Windows, yes, and you don't even need threads!  But you'll have to restructure your I/O code a bit.  Tk has the equivalent of Xt's :c:func:`XtAddInput()` call, which allows you to register a callback function which will be called from the Tk mainloop when I/O is possible on a file descriptor.  See :ref:`tkinter-file-handlers`. One solution is to ship the application with the Tcl and Tk libraries, and point to them at run-time using the :envvar:`TCL_LIBRARY` and :envvar:`TK_LIBRARY` environment variables. Standard builds of Python include an object-oriented interface to the Tcl/Tk widget set, called :ref:`tkinter <Tkinter>`.  This is probably the easiest to install (since it comes included with most `binary distributions <https://www.python.org/downloads/>`_ of Python) and use. For more info about Tk, including pointers to the source, see the `Tcl/Tk home page <https://www.tcl.tk>`_.  Tcl/Tk is fully portable to the macOS, Windows, and Unix platforms. The most common cause is that the widget to which the binding applies doesn't have "keyboard focus".  Check out the Tk documentation for the focus command. Usually a widget is given the keyboard focus by clicking in it (but not for labels; see the takefocus option). Tkinter questions To get truly stand-alone applications, the Tcl scripts that form the library have to be integrated into the application as well. One tool supporting that is SAM (stand-alone modules), which is part of the Tix distribution (https://tix.sourceforge.net/). What GUI toolkits exist for Python? Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:52+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 ç»å¸¸å¬å°çæ±æ¨æ¯ï¼å·²ç»éè¿  :meth:`bind` æ¹æ³ç»å®äºäºä»¶çå¤çç¨åºï¼ä½æ¯ï¼å½æä¸ç¸å³çæé®åï¼è¿ä¸ªå¤çç¨åºå´æ²¡ææ§è¡ã å¨å¯ç¨ SAM æ¶ç¼è¯ Tix ï¼å¨ Python æä»¶  :file:`Modules/tkappinit.c` ä¸­æ§è¡å¯¹ :c:func:`Tclsam_init` ç­çéå½è°ç¨ï¼å¹¶ä¸å°ç¨åºä¸ libtclsam å libtksam ç¸é¾æ¥ï¼å¯è½ä¹è¦åæ¬ Tix çåºï¼ã å¨ç­å¾ I/O æä½æ¶è½å¤å¤ç Tk äºä»¶åï¼ ç®å½ å­å¨å¤ç§éé¡¹ï¼å·ä½åå³äºä½ çç®æ å¹³å°ã Python Wiki ä¸æä¾äºä¸ä¸ª `è·¨å¹³å° <https://wiki.python.org/moin/GuiProgramming#Cross-Platform_Frameworks>`_ å `å¹³å°ä¸å± <https://wiki.python.org/moin/GuiProgramming#Platform-specific_Frameworks>`_ ç GUI æ¡æ¶åè¡¨ã Freeze ï¼æä¸º âå»ç»âï¼æ¯ä¸ä¸ªç¨æ¥åå»ºç¬ç«åºç¨ç¨åºçå·¥å·ã å½ âå»ç»â Tkinter ç¨åºæ¶ï¼ç¨åºå¹¶ä¸æ¯ççè½å¤ç¬ç«è¿è¡ï¼å ä¸ºç¨åºä»ç¶éè¦ Tcl å Tk åºã å¾å½¢çé¢å¸¸è§é®é¢ å¾å½¢ç¨æ·çé¢ï¼GUIï¼å¸¸è§é®é¢ æææ ·âå»ç»âTkinterç¨åºï¼ å¨Tkinterä¸­é®ç»å®ä¸å·¥ä½ï¼ä¸ºä»ä¹ï¼ å¨ Windows ä»¥å¤çå¶ä»å¹³å°ä¸å¯ä»¥ï¼ä½ çè³ä¸éè¦ä½¿ç¨çº¿ç¨ï¼ ä½æ¯ä½ å¿é¡»ç¨å¾®ä¿®æ¹ä¸ä¸ä½ ç I/O ä»£ç ã Tk æä¸ Xt ç :c:func:`XtAddInput()` å¯¹åºçè°ç¨ï¼å®åè®¸ä½ æ³¨åä¸ä¸ªåè°å½æ°ï¼å½ä¸ä¸ªæä»¶æè¿°ç¬¦å¯ä»¥è¿è¡ I/O æä½çæ¶åï¼Tk ä¸»å¾ªç¯å°ä¼è°ç¨è¿ä¸ªåè°å½æ°ã åè§ :ref:`tkinter-file-handlers`ã ä¸ç§è§£å³æ¹æ³æ¯å°ç¨åºä¸ Tcl å Tk åºä¸ååå¸ï¼å¹¶ä¸å¨è¿è¡æ¶ä½¿ç¨ç¯å¢åé :envvar:`TCL_LIBRARY` å :envvar:`TK_LIBRARY` æåä»ä»¬çä½ç½®ã Python çæ åæå»ºåæ¬ä¸ä¸ªæå Tcl/Tk é¨ä»¶éçé¢åå¯¹è±¡çæ¥å£ï¼ç§°ä¸º :ref:`tkinter <Tkinter>` ã è¿å¯è½æ¯æå®¹æå®è£ï¼å ä¸ºå®åå«å¨å¤§å¤æ° Python ç `äºè¿å¶åè¡ç <https://www.python.org/downloads/>`_ ä¸­ï¼åä½¿ç¨çãå³äº Tk çæ´å¤ä¿¡æ¯ï¼åæ¬æåæºä»£ç çä¿¡æ¯ï¼è§ `Tcl/Tk ä¸»é¡µ <https://www.tcl.tk>`_ ã Tcl/Tk å¯ä»¥å®å¨ç§»æ¤å° macOS ã Windows å Unix å¹³å°ã æå¸¸è§çåå æ¯ï¼é£ä¸ªç»å®çæ§ä»¶æ²¡æâé®çç¦ç¹âãè¯·å¨ Tk ææ¡£ä¸­æ¥æ¾ focus æä»¤ãéå¸¸ä¸ä¸ªæ§ä»¶è¦è·å¾âé®çç¦ç¹âï¼éè¦ç¹å»é£ä¸ªæ§ä»¶ï¼èä¸æ¯æ ç­¾ï¼è¯·æ¥ç takefocus éé¡¹ï¼ã æå³Tkinterçé®é¢ ä¸ºäºè·å¾çæ­£è½ç¬ç«è¿è¡çåºç¨ç¨åºï¼æ¥èªè¯¥åºç Tcl èæ¬ä¹éè¦è¢«æ´åè¿åºç¨ç¨åºã ä¸ä¸ªåè¿ç§äºæçå·¥å·å« SAM (ç¬ç«æ¨¡å)ï¼å®æ¯ Tix ååççä¸é¨å (https://tix.sourceforge.net/)ã Python æåªäº GUI å·¥å·åï¼ 