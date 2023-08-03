��    �      �              l	  (   m	     �	     �	  d   �	  /   $
     T
  ]  o
  o   �  ,   =     j     s  n  �  �     g   �  ^   [  �   �  O   P  1   �     �  '   �  7     	   K  �   U  O   �     E    Q  4   U  �   �  N       b  e   u  e   �  l   A  T   �  x     {   |  N   �  x   G  x   �     9  @   �  Q   �  5   L  +   �  �   �  (   o  )   �     �  ;   �  C     )   b    �  S   �  ]   �  �   P  �  �  �  �!     2#    Q#     e$     i$  �   �$  }   p%  �   �%  �   �&  �   _'  j   (     y(  �   �(  7  m)  $   �*  P   �*  H   +  +   d+  �   �+  �   :,  &   -  �   ,-  k   .  �  x.    0  �   1  �   2  �   �2  q   �3    .4  6   65  2   m5  2   �5  +   �5  �   �5  G   �6  �   �6  &  o7  �   �8    "9  n   7:  q   �:  e   ;  �   ~;  �  d<  �   ;>  I   �>  P   A?  �   �?    R@  5   kA  -   �A  .   �A  6   �A  �  5B  �   �C  �   �D  i   E  U   �E  �   �E  p   �F  �  1G    �H  u   �I     ]J  �  cJ  i   �K  T   ^L     �L     �L     �L     �L     �L     M     M     2M     JM     ]M     uM  !   �M  #   �M     �M     �M     N     N     N     !N     'N     -N     3N     @N     GN  �  NN  (   P     5P     JP  f   ^P  !   �P     �P  '  �P  `   "R  0   �R     �R     �R  D  �R  �   T  f   �T  Z   WU  �   �U  E   QV  '   �V     �V  !   �V  1   �V  	   &W  �   0W  K   �W     X  �   	X  =   �X  j   Y  P   sY  �   �Y  }   �Z  }   ;[  �   �[  o   @\  v   �\  y   ']  <   �]  q   �]  q   P^  z   �^  <   =_  H   z_  *   �_  $   �_  �   `  (   �`  $   a     1a  9   Pa  3   �a  !   �a    �a  O   �c  P   >d  ~   �d  h  e  8  wf     �g  �   �g     �h     �h  �   �h  b   �i  �    j  }   �j  �   qk  b   �k     Yl  �   `l  �   m     �m  6   �m  3   0n  6   dn  �   �n    Ko  *   Tp  �   p  W   @q  Q  �q  �   �r  �   �s  �   �t  �   xu  ]   Ev  �   �v  *   mw  '   �w  '   �w  '   �w  T   x  5   ex  �   �x  �   (y  �   z  �   �z  b   �{  y   �{  r   i|  �   �|  �  �}  �   {  9    �  G   Z�  �   ��    S�  -   X�  !   ��  !   ��  -   ʂ  \  ��  �   U�  �   ݄  r   s�  J   �  �   1�  `   ��  u  X�  �   Έ  a   ��     �  r  �  H   ��  <   ً     �     �     4�     H�     Z�     i�     �     ��     ��     ��     ،  !   �  #   �     2�     P�     d�     x�     ~�     ��     ��     ��     ��     ��     ��   **Source code:** :source:`Lib/locale.py` :const:`LC_MONETARY` :const:`LC_NUMERIC` :func:`setlocale` is not thread-safe on most systems. Applications typically start with a call of :: :mod:`locale` --- Internationalization services Access to message catalogs According to POSIX, a program which has not called ``setlocale(LC_ALL, '')`` runs using the portable ``'C'`` locale.  Calling ``setlocale(LC_ALL, '')`` lets it use the default locale as defined by the :envvar:`LANG` variable.  Since we do not want to interfere with the current locale setting we thus emulate the behavior in the way described above. All numeric values can be set to :const:`CHAR_MAX` to indicate that there is no value specified in this locale. Background, details, hints, tips and caveats Category Character used between groups. Combination of all locale settings.  If this flag is used when the locale is changed, setting the locale for all categories is attempted. If that fails for any category, no category is changed at all.  When the locale is retrieved using this flag, a string indicating the setting for all categories is returned. This string can be later used to restore the settings. Compares two strings according to the current :const:`LC_COLLATE` setting. As any other compare function, returns a negative, or a positive value, or ``0``, depending on whether *string1* collates before or after *string2* or is equal to it. Converts a normalized number string into a formatted string following the :const:`LC_NUMERIC` settings. Converts a string into a normalized number string, following the :const:`LC_NUMERIC` settings. Converts a string to a number, following the :const:`LC_NUMERIC` settings, by calling *func* on the result of calling :func:`delocalize` on *string*. Converts a string to an integer, following the :const:`LC_NUMERIC` conventions. Currency and value are surrounded by parentheses. Decimal point character. Decimal point used for monetary values. Equivalent to ``'grouping'``, used for monetary values. Example:: Except for the code ``'C'``, the language code corresponds to :rfc:`1766`. *language code* and *encoding* may be ``None`` if their values cannot be determined. Exception raised when the locale passed to :func:`setlocale` is not recognized. Explanation Extension modules should never call :func:`setlocale`, except to find out what the current locale is.  But since the return value can only be used portably to restore it, that is not very useful (except perhaps to find out whether or not the locale is ``C``). For extension writers and programs that embed Python Formats a floating point number using the same format as the built-in function ``str(float)``, but takes the decimal point into account. Formats a number *val* according to the current :const:`LC_MONETARY` settings. Formats a number *val* according to the current :const:`LC_NUMERIC` setting. The format follows the conventions of the ``%`` operator.  For floating point values, the decimal point is modified if appropriate.  If *grouping* is ``True``, also takes the grouping into account. Get a format string for :func:`time.strftime` to represent a date in a locale-specific era-based way. Get a format string for :func:`time.strftime` to represent a time in a locale-specific era-based way. Get a format string for :func:`time.strftime` to represent date and time in a locale-specific era-based way. Get a format string for :func:`time.strftime` to represent time in the am/pm format. Get a regular expression that can be used with the regex function to recognize a positive response to a yes/no question. Get a regular expression that can be used with the regex(3) function to recognize a negative response to a yes/no question. Get a representation of up to 100 values used to represent the values 0 to 99. Get a string that can be used as a format string for :func:`time.strftime` to represent a date in a locale-specific way. Get a string that can be used as a format string for :func:`time.strftime` to represent a time in a locale-specific way. Get a string that can be used as a format string for :func:`time.strftime` to represent date and time in a locale-specific way. Get a string that represents the era used in the current locale. Get a string with the name of the character encoding used in the selected locale. Get the abbreviated name of the n-th day of the week. Get the abbreviated name of the n-th month. Get the currency symbol, preceded by "-" if the symbol should appear before the value, "+" if the symbol should appear after the value, or "." if the symbol should replace the radix character. Get the current :term:`locale encoding`: Get the name of the n-th day of the week. Get the name of the n-th month. Get the radix character (decimal dot, decimal comma, etc.). Get the separator character for thousands (groups of three digits). Group separator used for monetary values. If *locale* is given and not ``None``, :func:`setlocale` modifies the locale setting for the *category*. The available categories are listed in the data description below. *locale* may be a string, or an iterable of two strings (language code and encoding). If it's an iterable, it's converted to a locale name using the locale aliasing engine. An empty string specifies the user's default settings. If the modification of the locale fails, the exception :exc:`Error` is raised. If successful, the new locale setting is returned. If *locale* is omitted or ``None``, the current setting for *category* is returned. If *monetary* is true, the conversion uses monetary thousands separator and grouping strings. If the given encoding is not known, the function defaults to the default encoding for the locale code just like :func:`setlocale`. If, when coding a module for general use, you need a locale independent version of an operation that is affected by the locale (such as certain formats used with :func:`time.strftime`), you will have to find a way to do it without using the standard library routine.  Even better is convincing yourself that using locale settings is okay.  Only as a last resort should you document that your module is not compatible with non-\ ``C`` locale settings. Initially, when a program is started, the locale is the ``C`` locale, no matter what the user's preferred locale is.  There is one exception: the :data:`LC_CTYPE` category is changed at startup to set the current locale encoding to the user's preferred locale encoding. The program must explicitly say that it wants the user's preferred locale settings for other categories by calling ``setlocale(LC_ALL, '')``. International currency symbol. It is generally a bad idea to call :func:`setlocale` in some library routine, since as a side effect it affects the entire program.  Saving and restoring it is almost as bad: it is expensive and affects other threads that happen to run before the settings have been restored. Key Local currency symbol. Locale category for formatting numbers.  The functions :func:`format_string`, :func:`atoi`, :func:`atof` and :func:`.str` of the :mod:`locale` module are affected by that category.  All other numeric formatting operations are not affected. Locale category for formatting of monetary values.  The available options are available from the :func:`localeconv` function. Locale category for message display. Python currently does not support application specific locale-aware messages.  Messages displayed by the operating system, like those returned by :func:`os.strerror` might be affected by this category. Locale category for sorting strings.  The functions :func:`strcoll` and :func:`strxfrm` of the :mod:`locale` module are affected. Locale category for the character type functions.  Depending on the settings of this category, the functions of module :mod:`string` dealing with case change their behaviour. Locale category for the formatting of time.  The function :func:`time.strftime` follows these conventions. Meaning Most locales do not define this value.  An example of a locale which does define this value is the Japanese one.  In Japan, the traditional representation of dates includes the name of the era corresponding to the then-emperor's reign. Normally it should not be necessary to use this value directly. Specifying the ``E`` modifier in their format strings causes the :func:`time.strftime` function to use this information.  The format of the returned string is not specified, and therefore you should not assume knowledge of it on different systems. Nothing is specified in this locale. Number of fractional digits used in international formatting of monetary values. Number of fractional digits used in local formatting of monetary values. On Android and VxWorks, return ``"utf-8"``. On Android or if the :ref:`Python UTF-8 Mode <utf8-mode>` is enabled, always return ``'utf-8'``, the :term:`locale encoding` and the *do_setlocale* argument are ignored. On Unix, return the encoding of the current :data:`LC_CTYPE` locale. Return ``"utf-8"`` if ``nl_langinfo(CODESET)`` returns an empty string: for example, if the current LC_CTYPE locale is not supported. On Windows, return the ANSI code page. On some systems, it is necessary to invoke :func:`setlocale` to obtain the user preferences, so this function is not thread-safe. If invoking setlocale is not necessary or desired, *do_setlocale* should be set to ``False``. Processes formatting specifiers as in ``format % val``, but takes the current locale settings into account. Python applications should normally find no need to invoke these functions, and should use :mod:`gettext` instead.  A known exception to this rule are applications that link with additional C libraries which internally invoke :c:func:`gettext` or :c:func:`dcgettext`.  For these applications, it may be necessary to bind the text domain, so that the libraries can properly locate their message catalogs. Return some locale-specific information as a string.  This function is not available on all systems, and the set of possible options might also vary across platforms.  The possible argument values are numbers, for which symbolic constants are available in the locale module. Return the :term:`locale encoding` used for text data, according to user preferences.  User preferences are expressed differently on different systems, and might not be available programmatically on some systems, so this function only returns a guess. Returns a normalized locale code for the given locale name.  The returned locale code is formatted for use with :func:`setlocale`.  If normalization fails, the original name is returned unchanged. Returns the current setting for the given locale category as sequence containing *language code*, *encoding*. *category* may be one of the :const:`LC_\*` values except :const:`LC_ALL`.  It defaults to :const:`LC_CTYPE`. Returns the database of the local conventions as a dictionary. This dictionary has the following strings as keys: Sequence of numbers specifying which relative positions the ``'thousands_sep'`` is expected.  If the sequence is terminated with :const:`CHAR_MAX`, no further grouping is performed. If the sequence terminates with a ``0``,  the last group size is repeatedly used. Sets the locale for *category* to the default setting. Symbol used to annotate a negative monetary value. Symbol used to annotate a positive monetary value. The *monetary* keyword parameter was added. The :func:`nl_langinfo` function accepts one of the following keys.  Most descriptions are taken from the corresponding description in the GNU C library. The :mod:`locale` module defines the following exception and functions: The :mod:`locale` module is implemented on top of the :mod:`_locale` module, which in turn uses an ANSI C locale implementation if available. The :mod:`locale` module opens access to the POSIX locale database and functionality. The POSIX locale mechanism allows programmers to deal with certain cultural issues in an application, without requiring the programmer to know all the specifics of each country where the software is executed. The :ref:`Python preinitialization <c-preinit>` configures the LC_CTYPE locale. See also the :term:`filesystem encoding and error handler`. The C standard defines the locale as a program-wide property that may be relatively expensive to change.  On top of that, some implementations are broken in such a way that frequent locale changes may cause core dumps.  This makes the locale somewhat painful to use correctly. The default setting is determined by calling :func:`getdefaultlocale`. *category* defaults to :const:`LC_ALL`. The function now always returns ``"utf-8"`` on Android or if the :ref:`Python UTF-8 Mode <utf8-mode>` is enabled. The function now temporarily sets the ``LC_CTYPE`` locale to the ``LC_NUMERIC`` locale in some cases. The function temporarily sets the ``LC_CTYPE`` locale to the ``LC_NUMERIC`` locale or the ``LC_MONETARY`` locale if locales are different and numeric or monetary strings are non-ASCII. This temporary change affects other threads. The locale module exposes the C library's gettext interface on systems that provide this interface.  It consists of the functions :func:`!gettext`, :func:`!dgettext`, :func:`!dcgettext`, :func:`!textdomain`, :func:`!bindtextdomain`, and :func:`!bind_textdomain_codeset`.  These are similar to the same functions in the :mod:`gettext` module, but use the C library's binary format for message catalogs, and the C library's search algorithms for locating message catalogs. The only way to perform numeric operations according to the locale is to use the special functions defined by this module: :func:`atof`, :func:`atoi`, :func:`format_string`, :func:`.str`. The position of the sign (for positive resp. negative values), see below. The possible values for ``'p_sign_posn'`` and ``'n_sign_posn'`` are given below. The regular expressions for :const:`YESEXPR` and :const:`NOEXPR` use syntax suitable for the :c:func:`regex` function from the C library, which might differ from the syntax used in :mod:`re`. The returned string includes the currency symbol if *symbol* is true, which is the default. If *grouping* is ``True`` (which is not the default), grouping is done with the value. If *international* is ``True`` (which is not the default), the international currency symbol is used. The sign should follow the value and currency symbol. The sign should immediately follow the value. The sign should immediately precede the value. The sign should precede the value and currency symbol. There is no way to perform case conversions and character classifications according to the locale.  For (Unicode) text strings these are done according to the character value only, while for byte strings, the conversions and classifications are done according to the ASCII value of the byte, and bytes whose high bit is set (i.e., non-ASCII bytes) are never converted or considered part of a character class such as letter or whitespace. This follows the US convention of :const:`DAY_1` being Sunday, not the international convention (ISO 8601) that Monday is the first day of the week. This function is similar to :func:`getpreferredencoding(False) <getpreferredencoding>` except this function ignores the :ref:`Python UTF-8 Mode <utf8-mode>`. This function will not work with the 'C' locale, so you have to set a locale via :func:`setlocale` first. This is a symbolic constant used for different values returned by :func:`localeconv`. This sets the locale for all categories to the user's default setting (typically specified in the :envvar:`LANG` environment variable).  If the locale is not changed thereafter, using multithreading should not cause problems. This value may not be available on operating systems not conforming to the POSIX standard, most notably Windows. To maintain compatibility with other platforms, not only the :envvar:`LANG` variable is tested, but a list of variables given as envvars parameter.  The first found to be defined will be used.  *envvars* defaults to the search path used in GNU gettext; it must always contain the variable name ``'LANG'``.  The GNU gettext search path contains ``'LC_ALL'``, ``'LC_CTYPE'``, ``'LANG'`` and ``'LANGUAGE'``, in that order. Transforms a string to one that can be used in locale-aware comparisons.  For example, ``strxfrm(s1) < strxfrm(s2)`` is equivalent to ``strcoll(s1, s2) < 0``.  This function can be used when the same string is compared repeatedly, e.g. when collating a sequence of strings. Tries to determine the default locale settings and returns them as a tuple of the form ``(language code, encoding)``. Value When Python code uses the :mod:`locale` module to change the locale, this also affects the embedding application.  If the embedding application doesn't want this to happen, it should remove the :mod:`_locale` extension module (which does all the work) from the table of built-in modules in the :file:`config.c` file, and make sure that the :mod:`_locale` module is not accessible as a shared library. Whether the currency symbol is separated from the value  by a space (for positive resp. negative values). Whether the currency symbol precedes the value (for positive resp. negative values). _locale ``'currency_symbol'`` ``'decimal_point'`` ``'frac_digits'`` ``'grouping'`` ``'int_curr_symbol'`` ``'int_frac_digits'`` ``'mon_decimal_point'`` ``'mon_grouping'`` ``'mon_thousands_sep'`` ``'negative_sign'`` ``'p_cs_precedes/n_cs_precedes'`` ``'p_sep_by_space/n_sep_by_space'`` ``'p_sign_posn/n_sign_posn'`` ``'positive_sign'`` ``'thousands_sep'`` ``0`` ``1`` ``2`` ``3`` ``4`` ``CHAR_MAX`` module string Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-29 16:50+0000
PO-Revision-Date: 2021-06-28 01:08+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码：** :source:`Lib/locale.py` :const:`LC_MONETARY` :const:`LC_NUMERIC` :func:`setlocale` 在大多数系统上都不是线程安全的。应用程序通常会如下调用： :mod:`locale` --- 国际化服务 访问消息目录 根据 POSIX 的规范，未调用 ``setlocale(LC_ALL, '')`` 的程序采用可移植的 ``'C'`` 区域设置运行。 调用 ``setlocale(LC_ALL, '')`` 则可采用 :envvar:`LANG` 变量定义的默认区域。 由于不想干扰当前的区域设置，因此就以上述方式进行了模拟。 可以将所有数值设置为 :const:`CHAR_MAX` ，以指示本 locale 中未指定任何值。 背景、细节、提示、技巧和注意事项 类别 组之间使用的字符。 混合所有的区域设置。如果在区域改动时使用该标志，将尝试设置所有类别的区域参数。只要有任何一个类别设置失败，就不会修改任何类别。在使用此标志获取区域设置时，会返回一个代表所有类别设置的字符串。之后可用此字符串恢复设置。 根据当前的 :const:`LC_COLLATE` 设置，对两个字符串进行比较。与其他比较函数一样，根据 *string1* 位于 *string2* 之前、之后或是相同，返回负值、、正值或者 ``0``。 根据 :const:`LC_NUMERIC` 的设置，将标准化的数字字符串转换为格式化的字符串。 根据 :const:`LC_NUMERIC` 的设置，将字符串转换为标准化的数字字符串。 将一个字符串转换为数字，遵循 :const:`LC_NUMERIC` 设置，通过在 *string* 上调用 :func:`delocalize` 的结果上调用 *func* 来实现。 按照 :const:`LC_NUMERIC` 的约定，将字符串转换为整数。 被括号括起来的货币和金额。 小数点字符。 用于货币金额的小数点。 相当于 ``'grouping'`` ，用于货币价值。 示例： 除了 ``'C'`` 之外，语言代码对应 :rfc:`1766` 标准。若 *语言代码* 和 *编码*  无法确定，则可为 ``None``。 当传给 :func:`setlocale` 的 locale 无法识别时，会触发异常。 说明 除了要查询当前区域，扩展模块不应去调用 :func:`setlocale`。但由于返回值只能用于恢复设置，所以也没什么用（也许只能用于确认是否为 ``C``）。 针对扩展程序编写人员和嵌入Python 运行的程序 对浮点数进行格式化，格式要求与内置函数 ``str(float)`` 相同，但会考虑小数点。 根据当前的 :const:`LC_MONETARY` 设置，对数字 *val* 进行格式化。 根据当前的 :const:`LC_NUMERIC` 设置对数字 *val* 进行格式化。 此格式将遵循 ``%`` 运算符的约定。 对于浮点数值，会根据具体情况修改小数点。 如果 *grouping* 为 ``True``，还会将分组纳入考虑。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以地区特定格式表示带纪元的日期。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以地区特定格式表示带纪元的时间。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以地区特定格式表示带纪元的日期和时间。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以 am/pm 的格式表示时间。 获取一个可供 regex 函数使用的正则表达式，用于识别需要回答是或否的问题的肯定回答。 获取一个可供 regex(3) 函数使用的正则表达式，用于识别需要回答是或否的问题的否定回答。 获取 0 到 99 的表示法，最多不超过 100 个值。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以地区特定格式表示日期。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以地区特定格式表示时间。 获取一个字符串，可用作 :func:`time.strftime` 的格式串，以便以地区特定格式表示日期和时间。 获取一个字符串，代表当前地区使用的纪元。 获取一个字符串，代表所选地区采用的字符编码名称。 获取一周中第 n 天的缩写名称。 获取第 n 个月的缩写名称。 获取货币符号，如果符号应位于数字之前，则在其前面加上“-”；如果符号应位于数字之后，则前面加“+”；如果符号应取代小数点字符，则前面加“.”。 获取当前的 :term:`locale encoding`: 获取一周中第 n 天的名称。 获取第 n 个月的名称。 获取小数点字符（小数点、小数逗号等）。 获取千位数（三位数一组）的分隔符。 用于货币值的组分隔符。 如果给定了 *locale* 而不是 ``None``，:func:`setlocale` 会修改 *category* 的 locale 设置。可用的类别会在下面的数据描述中列出。*locale* 可以是一个字符串，也可以是两个字符串（语言代码和编码）组成的可迭代对象。若为可迭代对象，则会用地区别名引擎转换为一个地区名称。若为空字符串则指明采用用户的默认设置。如果 locale 设置修改失败，会触发 :exc:`Error` 异常。如果成功则返回新的 locale 设置。 如果省略 *locale* 或为 ``None``，将返回 *category* 但当前设置。 若 *monetary* 为 True，则会用到货币千位分隔符和分组字符串。 如果给出的编码无法识别，则本函数默认采用区域代码的默认编码，这正类似于 :func:`setlocale`。 如果是要编写通用模块，需要有一种不受区域设置影响的操作方式（比如某些用到 :func:`time.strftime` 的格式），将不得不寻找一种不用标准库的方案。更好的办法是说服自己，可以采纳区域设置。只有在万不得已的情况下，才能用文档标注出模块与非 ``C`` 区域设置不兼容。 当程序第一次启动时，无论用户偏好定义成什么，区域值都是 ``C``。不过有一个例外，就是在启动时修改 :data:`LC_CTYPE` 类别，设置当前区域编码为用户偏好编码。程序必须调用 ``setlocale(LC_ALL, '')`` 明确表示用户偏好区域将设为其他类别。 国际货币符号。 若要从库程序中调用 :func:`setlocale` ，通常这不是个好主意，因为副作用是会影响整个程序。保存和恢复区域设置也几乎一样糟糕：不仅代价高昂，而且会影响到恢复之前运行的其他线程。 键 当地货币符号。 用于格式化数字的语言区域类别。 :mod:`locale` 模块的 :func:`format_string`, :func:`atoi`, :func:`atof` 和 :func:`.str` 等函数会受到该类别的影响。 其他所有数字格式化操作将不受影响。 格式化货币值时会用到的区域类别。可用值可由 :func:`localeconv` 函数获取。 显示消息时用到的区域类别。目前 Python 不支持应用定制的本地化消息。 由操作系统显示的消息，比如由 :func:`os.strerror` 返回的消息可能会受到该类别的影响。 字符串排序会用到的区域类别。 将会影响 :mod:`locale` 模块的 :func:`strcoll` 和 :func:`strxfrm` 函数。 字符型函数的区域类别。根据该类别的设置，模块 :mod:`string` 中处理大小写的函数会改变操作方式。 格式化时间时会用到的区域类别。 :func:`time.strftime` 函数会参考这些约定。 含意 大多数地区都没有定义该值。定义了该值的一个案例日本。日本传统的日期表示方法中，包含了当时天皇统治朝代的名称。 通常没有必要直接使用该值。在格式串中指定 ``E`` 符号，会让  :func:`time.strftime` 函数启用此信息。返回字符串的格式并没有定义，因此不得假定各个系统都能理解。 该地区未指定内容。 货币价值的国际格式中使用的小数位数。 货币值的本地格式中使用的小数位数。 在 Android 和 VxWorks 上，将返回 ``"utf-8"``。 在 Android 上或者如果启用了 :ref:`Python UTF-8 模式 <utf8-mode>`，则将始终返回 ``'utf-8'``，:term:`locale encoding` 和 *do_setlocale* 参数将被忽略。 在 Unix 上，将返回当前, return the encoding of the current :data:`LC_CTYPE` 语言区域的编码格式。 如果 ``nl_langinfo(CODESET)`` 返回空字符串则将返回 ``"utf-8"``: 举例来说，如果当前 LC_CTYPE 语言区域不受支持的时候。 在 Windows 上，返回 ANSI 代码页。 某些系统必须调用 :func:`setlocale` 才能获取用户偏好，所以本函数不是线程安全的。如果不需要或不希望调用 setlocale，*do_setlocale* 应设为 ``False``。 格式化符的处理类似 ``format % val`` ，但会考虑到当前的区域设置。 Python 应用程序通常不需要调用这些函数，而应改用 :mod:`gettext`。这条规则的一个已知例外，是与附加 C 库链接的应用程序，他们在内部调用了 :c:func:`gettext` 或 :c:func:`dcgettext`。对于这些应用程序，可能有必要绑定文本域，以便库可以准确找到其消息目录。 以字符串形式返回一些地区相关的信息。本函数并非在所有系统都可用，而且可用的 option 在不同平台上也可能不同。可填的参数值为数值，在 locale 模块中提供了对应的符号常量。 根据用户的偏好，返回用于文本数据的 :term:`locale encoding`。用户偏好在不同的系统上有不同的表达方式，而且在某些系统上可能无法以编程方式获取到，所以本函数只是返回猜测结果。 为给定的区域名称返回标准代码。返回的区域代码已经格式化，可供 :func:`setlocale` 使用。 如果标准化操作失败，则返回原名称。 以列表的形式返回指定地区类别的当前设置，结果包括 *语言代码* 、*编码*。*category* 可以是 :const:`LC_\*`  之一， :const:`LC_ALL` 除外。默认为 :const:`LC_CTYPE`。 以字典的形式返回本地约定的数据库。此字典具有以下字符串作为键： 数字列表，指定 ``'thousands_sep'`` 应该出现的位置。 如果列表以 :const:`CHAR_MAX` 结束，则不会作分组。如果列表以 ``0`` 结束，则重复使用最后的分组大小。 将 *category* 的区域设为默认值。 用于注释负货币价值的符号。 用于标注正货币价值的符号。 增加了关键字参数 *monetary* 。 :func:`nl_langinfo` 函数可接受以下值。大部分含义都取自 GNU C 库。 :mod:`locale` 模块定义了以下异常和函数： :mod:`locale` 模块是在 :mod:`_locale` 模块的基础上实现的，而 _locale 则又用到了 ANSI C 语言实现的本地化功能。 :mod:`locale` 模块开通了 POSIX 本地化数据库和功能的访问。POSIX 本地化机制让程序员能够为应用程序处理某些本地化的问题，而不需要去了解运行软件的每个国家的全部语言习惯。 :ref:`Python preinitialization <c-preinit>` 用于配置 LC_CTYPE 区域。还请参阅 :term:`filesystem encoding and error handler`。 C 语言标准将区域定义为程序级别的属性，修改的代价可能相对较高。此外，有某些实现代码写得不好，频繁改变区域可能会导致内核崩溃。于是要想正确使用区域就变得有些痛苦。 默认设置通过调用 :func:`getdefaultlocale` 确定。*category* 默认为 :const:`LC_ALL`。 目前在 Android 上或者如果启用了 :ref:`Python UTF-8 模式 <utf8-mode>` 此函数将总是返回 ``"utf-8"``。 现在此函数在某些情况下会临时性地将 ``LC_CTYPE`` 语言区域设为 ``LC_NUMERIC`` 语言区域。 此函数可临时性地将 ``LC_CTYPE`` 语言区域设为 ``LC_NUMERIC`` 语言区域或者如果语言区域不同且数字或货币字符串是非 ASCII 的则设为 ``LC_MONETARY`` 语言区域。 这个临时性地改变会影响到其他线程。 在提供 gettext 接口的系统中，locale 模块暴露出了 C 库的接口。它由 :func:`!gettext` 、:func:`!dgettext` 、:func:`!dcgettext` 、 :func:`!textdomain` 、:func:`!bindtextdomain` 和 :func:`!bind_textdomain_codeset` 等函数组成。 他们与 :mod:`gettext` 模块中的同名函数类似，但采用了 C 库二进制格式的消息目录，以及 C 库的搜索算法来查找消息目录。 根据语言区域执行数字运算的唯一方式就是使用本模块所定义的特殊函数: :func:`atof`, :func:`atoi`, :func:`format_string`, :func:`.str`。 符号的位置（对于正值或负值），见下文。 下面给出了 ``'p_sign_posn'`` 和 ``'n_sign_posn'`` 的可能值。 :const:`YESEXPR` 和 :const:`NOEXPR` 中的正则表达式使用了适合来自 C 库的 :c:func:`regex` 函数的语法，它与 :mod:`re` 中使用的语法会有所不同。 如果 *symbol* 为真值则返回的字符串将包括货币符号，该参数默认为真值。 如果 *grouping* 为 ``True`` (非默认值)，则会对值进行分组。 如果 *international* 为 ``True`` (非默认值)，则会使用国际货币符号。 该标志应位于值和货币符号之后。 标志应该紧跟在值之后。 标志应该紧跟在值之前。 该标志应位于值和货币符号之前。 无法根据区域设置进行大小写转换和字符分类。对于（Unicode）文本字符串来说，这些操作都是根据字符值进行的；而对于字节符串来说，转换和分类则是根据字节的 ASCII 值进行的，高位被置位的字节（即非 ASCII 字节）永远不会被转换或被视作字母或空白符之类。 这里遵循美国惯例，即 :const:`DAY_1` 是星期天，而不是国际惯例（ISO 8601），即星期一是一周的第一天。 此函数类似于 :func:`getpreferredencoding(False) <getpreferredencoding>`，区别是此函数会忽略 :ref:`Python UTF-8 模式 <utf8-mode>`。 此函数将不适用于 'C' 语言区域，所以你必须先通过 :func:`setlocale` 设置一个语言区域。 一个符号常量， :func:`localeconv` 返回多个值时将会用到。 这会把所有类别的 locale 都设为用户的默认设置（通常在 :envvar:`LANG` 环境变量中指定）。如果后续 locale 没有改动，则使用多线程应该不会产生问题。 这个值在不符合 POSIX 标准的操作系统上可能不可用，最主要是指 Windows。 为了维持与其他平台的兼容性，不仅需要检测 :envvar:`LANG` 变量，还需要检测 envvars 参数给出的变量列表。首先发现的定义将被采用。 *envvars* 默认为 GNU gettext 采用的搜索路径；必须包含 ``'LANG'`` 变量。 GNU gettext 的搜索路径依次包含了 ``'LC_ALL'``、``'LC_CTYPE'``、``'LANG'`` 和 ``'LANGUAGE'``。 将字符串转换为可用于本地化比较的字符串。例如 ``strxfrm(s1) < strxfrm(s2)`` 相当于 ``strcoll(s1, s2) < 0``。在重复比较同一个字符串时，可能会用到本函数，比如整理字符串列表时。 尝试确定默认的地区设置，并以 ``(language code, encoding)`` 元组的形式返回。 值 当 Python 代码利用 :mod:`locale` 模块修改区域设置时，也会影响到嵌入 Python 运行的应用程序。如果嵌入运行的程序不希望发生这种情况，则应从  :file:`config.c` 文件的内置模块表中删除 :mod:`_locale` 扩展模块（所有操作均是由它完成的），并确保 :mod:`_locale` 模块不能成为一个共享库。 货币符号是否通过空格与值分隔（对于正值或负值）。 货币符号是否在值之前（对于正值或负值）。 _locale ``'currency_symbol'`` ``'decimal_point'`` ``'frac_digits'`` ``'grouping'`` ``'int_curr_symbol'`` ``'int_frac_digits'`` ``'mon_decimal_point'`` ``'mon_grouping'`` ``'mon_thousands_sep'`` ``'negative_sign'`` ``'p_cs_precedes/n_cs_precedes'`` ``'p_sep_by_space/n_sep_by_space'`` ``'p_sign_posn/n_sign_posn'`` ``'positive_sign'`` ``'thousands_sep'`` ``0`` ``1`` ``2`` ``3`` ``4`` ``CHAR_MAX`` module string 