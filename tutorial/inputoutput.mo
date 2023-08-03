��    L      |              �  �   �  �   b  !     �   *  �     �   �  �   i  x   >	  >   �	  �   �	  �  �
     o  �   �  �   P  _   N  |   �     +  @   E  �   �    	  e     h   �  �   �  Q  �  �  �     �  E  �  �        �     �  J   �  C    �   a     �  �     �   �  �   G  >   �  �       �  '   �  �   �  $  �      �!  �  �!  �   �#  L  �$    �&  >  �'    *  �   +     �+  �   �+    �,    �-  n   �/  �   0  �   �0  m   e1  �   �1  �   b2  �  E3  }   
5  =  �5    �7  �   �8  �  �9  �   J;  o   <     �<     �<     �<     �<     �<     �<  �  �<  r   w>  �   �>     �?  �   �?  z   k@  �   �@  �   uA  q   4B  7   �B  �   �B  }  �C     E  �   7E  �   �E  Y   �F  �   �F     sG  N   �G  @   �G  �   H  T   �H  a   6I  �   �I  .  J  �  KK     M    M  �   -N     �N     �N  >   �N  h   O  ~   �Q     R  �   'R  {   �R  Z   9S  3   �S  J  �S     V  (    V  �   IV  �   
W     �W  V  �W  �   VY  �  0Z  �   �[    �\  �   �^  �   �_     6`  u   P`  �   �`  �  �a  =   Ac  �   c  m   d  g   �d  z   �d  �   de  l  f  t   �g    h  �   j  �   k  w  �k  �   m  W   �m     'n     4n     ;n     @n     Gn     Xn   (Note that the one space between each column was added by the way :func:`print` works: it always adds spaces between its arguments.) :func:`open` returns a :term:`file object`, and is most commonly used with two positional arguments and one keyword argument: ``open(filename, mode, encoding=None)`` :mod:`pickle` - the pickle module :ref:`Formatted string literals <f-strings>` (also called f-strings for short) let you include the value of Python expressions inside a string by prefixing the string with ``f`` or ``F`` and writing expressions as ``{expression}``. After a file object is closed, either by a :keyword:`with` statement or by calling ``f.close()``, attempts to use the file object will automatically fail. :: An optional format specifier can follow the expression. This allows greater control over how the value is formatted. The following example rounds pi to three places after the decimal:: Another variant of the :func:`~json.dumps` function, called :func:`~json.dump`, simply serializes the object to a :term:`text file`.  So if ``f`` is a :term:`text file` object opened for writing, we can do this:: As an example, the following lines produce a tidily aligned set of columns giving integers and their squares and cubes:: Basic usage of the :meth:`str.format` method looks like this:: Calling ``f.write()`` without using the :keyword:`!with` keyword or calling ``f.close()`` **might** result in the arguments of ``f.write()`` not being completely written to the disk, even if the program exits successfully. Contrary to :ref:`JSON <tut-json>`, *pickle* is a protocol which allows the serialization of arbitrarily complex Python objects.  As such, it is specific to Python and cannot be used to communicate with applications written in other languages.  It is also insecure by default: deserializing pickle data coming from an untrusted source can execute arbitrary code, if the data was crafted by a skilled attacker. Fancier Output Formatting File objects have some additional methods, such as :meth:`~file.isatty` and :meth:`~file.truncate` which are less frequently used; consult the Library Reference for a complete guide to file objects. Finally, you can do all the string handling yourself by using string slicing and concatenation operations to create any layout you can imagine.  The string type has some methods that perform useful operations for padding strings to a given column width. For a complete overview of string formatting with :meth:`str.format`, see :ref:`formatstrings`. For reading lines from a file, you can loop over the file object. This is memory efficient, fast, and leads to simple code:: Formatted String Literals Here's the same table of squares and cubes, formatted manually:: If keyword arguments are used in the :meth:`str.format` method, their values are referred to by using the name of the argument. :: If you have a really long format string that you don't want to split up, it would be nice if you could reference the variables to be formatted by name instead of by position.  This can be done by simply passing the dict and using square brackets ``'[]'`` to access the keys. :: If you have an object ``x``, you can view its JSON string representation with a simple line of code:: If you want to read all the lines of a file in a list you can also use ``list(f)`` or ``f.readlines()``. If you're not using the :keyword:`with` keyword, then you should call ``f.close()`` to close the file and immediately free up any system resources used by it. In text files (those opened without a ``b`` in the mode string), only seeks relative to the beginning of the file are allowed (the exception being seeking to the very file end with ``seek(0, 2)``) and the only valid *offset* values are those returned from the ``f.tell()``, or zero. Any other *offset* value produces undefined behaviour. In text mode, the default when reading is to convert platform-specific line endings (``\n`` on Unix, ``\r\n`` on Windows) to just ``\n``.  When writing in text mode, the default is to convert occurrences of ``\n`` back to platform-specific line endings.  This behind-the-scenes modification to file data is fine for text files, but will corrupt binary data like that in :file:`JPEG` or :file:`EXE` files.  Be very careful to use binary mode when reading and writing such files. Input and Output It is good practice to use the :keyword:`with` keyword when dealing with file objects.  The advantage is that the file is properly closed after its suite finishes, even if an exception is raised at some point.  Using :keyword:`!with` is also much shorter than writing equivalent :keyword:`try`\ -\ :keyword:`finally` blocks:: JSON files must be encoded in UTF-8. Use ``encoding="utf-8"`` when opening JSON file as a :term:`text file` for both of reading and writing. Manual String Formatting Methods of File Objects More information can be found in the :ref:`old-string-formatting` section. Normally, files are opened in :dfn:`text mode`, that means, you read and write strings from and to the file, which are encoded in a specific *encoding*. If *encoding* is not specified, the default is platform dependent (see :func:`open`). Because UTF-8 is the modern de-facto standard, ``encoding="utf-8"`` is recommended unless you know that you need to use a different encoding. Appending a ``'b'`` to the mode opens the file in :dfn:`binary mode`. Binary mode data is read and written as :class:`bytes` objects. You can not specify *encoding* when opening file in binary mode. Often you'll want more control over the formatting of your output than simply printing space-separated values. There are several ways to format output. Old string formatting Other modifiers can be used to convert the value before it is formatted. ``'!a'`` applies :func:`ascii`, ``'!s'`` applies :func:`str`, and ``'!r'`` applies :func:`repr`:: Other types of objects need to be converted -- either to a string (in text mode) or a bytes object (in binary mode) -- before writing them:: Passing an integer after the ``':'`` will cause that field to be a minimum number of characters wide.  This is useful for making columns line up. :: Positional and keyword arguments can be arbitrarily combined:: Rather than having users constantly writing and debugging code to save complicated data types to files, Python allows you to use the popular data interchange format called `JSON (JavaScript Object Notation) <https://json.org>`_.  The standard module called :mod:`json` can take Python data hierarchies, and convert them to string representations; this process is called :dfn:`serializing`.  Reconstructing the data from the string representation is called :dfn:`deserializing`.  Between serializing and deserializing, the string representing the object may have been stored in a file or data, or sent over a network connection to some distant machine. Reading and Writing Files Saving structured data with :mod:`json` See :ref:`self-documenting expressions <bpo-36817-whatsnew>` for more information on the ``=`` specifier. For a reference on these format specifications, see the reference guide for the :ref:`formatspec`. So far we've encountered two ways of writing values: *expression statements* and the :func:`print` function.  (A third way is using the :meth:`write` method of file objects; the standard output file can be referenced as ``sys.stdout``. See the Library Reference for more information on this.) Some examples:: Strings can easily be written to and read from a file.  Numbers take a bit more effort, since the :meth:`read` method only returns strings, which will have to be passed to a function like :func:`int`, which takes a string like ``'123'`` and returns its numeric value 123.  When you want to save more complex data types like nested lists and dictionaries, parsing and serializing by hand becomes complicated. The % operator (modulo) can also be used for string formatting. Given ``'string' % values``, instances of ``%`` in ``string`` are replaced with zero or more elements of ``values``. This operation is commonly known as string interpolation. For example:: The :func:`str` function is meant to return representations of values which are fairly human-readable, while :func:`repr` is meant to generate representations which can be read by the interpreter (or will force a :exc:`SyntaxError` if there is no equivalent syntax).  For objects which don't have a particular representation for human consumption, :func:`str` will return the same value as :func:`repr`.  Many values, such as numbers or structures like lists and dictionaries, have the same representation using either function.  Strings, in particular, have two distinct representations. The :meth:`str.format` method of strings requires more manual effort.  You'll still use ``{`` and ``}`` to mark where a variable will be substituted and can provide detailed formatting directives, but you'll also need to provide the information to be formatted. The :meth:`str.rjust` method of string objects right-justifies a string in a field of a given width by padding it with spaces on the left. There are similar methods :meth:`str.ljust` and :meth:`str.center`. These methods do not write anything, they just return a new string. If the input string is too long, they don't truncate it, but return it unchanged; this will mess up your column lay-out but that's usually better than the alternative, which would be lying about a value. (If you really want truncation you can always add a slice operation, as in ``x.ljust(n)[:n]``.) The :mod:`string` module contains a :class:`~string.Template` class that offers yet another way to substitute values into strings, using placeholders like ``$x`` and replacing them with values from a dictionary, but offers much less control of the formatting. The JSON format is commonly used by modern applications to allow for data exchange.  Many programmers are already familiar with it, which makes it a good choice for interoperability. The String format() Method The ``=`` specifier can be used to expand an expression to the text of the expression, an equal sign, then the representation of the evaluated expression: The brackets and characters within them (called format fields) are replaced with the objects passed into the :meth:`str.format` method.  A number in the brackets can be used to refer to the position of the object passed into the :meth:`str.format` method. :: The first argument is a string containing the filename.  The second argument is another string containing a few characters describing the way in which the file will be used.  *mode* can be ``'r'`` when the file will only be read, ``'w'`` for only writing (an existing file with the same name will be erased), and ``'a'`` opens the file for appending; any data written to the file is automatically added to the end.  ``'r+'`` opens the file for both reading and writing. The *mode* argument is optional; ``'r'`` will be assumed if it's omitted. The rest of the examples in this section will assume that a file object called ``f`` has already been created. There are several ways to present the output of a program; data can be printed in a human-readable form, or written to a file for future use. This chapter will discuss some of the possibilities. There is another method, :meth:`str.zfill`, which pads a numeric string on the left with zeros.  It understands about plus and minus signs:: This could also be done by passing the ``table`` dictionary as keyword arguments with the ``**`` notation. :: This is particularly useful in combination with the built-in function :func:`vars`, which returns a dictionary containing all local variables. This simple serialization technique can handle lists and dictionaries, but serializing arbitrary class instances in JSON requires a bit of extra effort. The reference for the :mod:`json` module contains an explanation of this. To change the file object's position, use ``f.seek(offset, whence)``.  The position is computed from adding *offset* to a reference point; the reference point is selected by the *whence* argument.  A *whence* value of 0 measures from the beginning of the file, 1 uses the current file position, and 2 uses the end of the file as the reference point.  *whence* can be omitted and defaults to 0, using the beginning of the file as the reference point. :: To decode the object again, if ``f`` is a :term:`binary file` or :term:`text file` object which has been opened for reading:: To read a file's contents, call ``f.read(size)``, which reads some quantity of data and returns it as a string (in text mode) or bytes object (in binary mode). *size* is an optional numeric argument.  When *size* is omitted or negative, the entire contents of the file will be read and returned; it's your problem if the file is twice as large as your machine's memory. Otherwise, at most *size* characters (in text mode) or *size* bytes (in binary mode) are read and returned. If the end of the file has been reached, ``f.read()`` will return an empty string (``''``).  :: To use :ref:`formatted string literals <tut-f-strings>`, begin a string with ``f`` or ``F`` before the opening quotation mark or triple quotation mark. Inside this string, you can write a Python expression between ``{`` and ``}`` characters that can refer to variables or literal values. When you don't need fancy output but just want a quick display of some variables for debugging purposes, you can convert any value to a string with the :func:`repr` or :func:`str` functions. ``f.readline()`` reads a single line from the file; a newline character (``\n``) is left at the end of the string, and is only omitted on the last line of the file if the file doesn't end in a newline.  This makes the return value unambiguous; if ``f.readline()`` returns an empty string, the end of the file has been reached, while a blank line is represented by ``'\n'``, a string containing only a single newline.  :: ``f.tell()`` returns an integer giving the file object's current position in the file represented as number of bytes from the beginning of the file when in binary mode and an opaque number when in text mode. ``f.write(string)`` writes the contents of *string* to the file, returning the number of characters written. :: built-in function file json module object open Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 （注意，每列之间的空格是通过使用 :func:`print` 添加的：它总在其参数间添加空格。） :func:`open` 返回一个 :term:`file object` ，最常使用的是两个位置参数和一个关键字参数：``open(filename, mode, encoding=None)`` :mod:`pickle` - 封存模块 :ref:`格式化字符串字面值 <f-strings>` （简称为 f-字符串）在字符串前加前缀 ``f`` 或 ``F``，通过 ``{expression}`` 表达式，把 Python 表达式的值添加到字符串内。 通过 :keyword:`with` 语句，或调用 ``f.close()`` 关闭文件对象后，再次使用该文件对象将会失败。 格式说明符是可选的，写在表达式后面，可以更好地控制格式化值的方式。下例将 pi 舍入到小数点后三位： :func:`~json.dumps` 函数还有一个变体， :func:`~json.dump` ，它只将对象序列化为 :term:`text file` 。因此，如果 ``f`` 是 :term:`text file` 对象，可以这样做： 举个例子，以下几行代码将产生一组整齐的数据列，包含给定的整数及其平方与立方:: :meth:`str.format` 方法的基本用法如下所示： 调用 ``f.write()`` 时，未使用 :keyword:`!with` 关键字，或未调用 ``f.close()``，即使程序正常退出，也**可能** 导致 ``f.write()`` 的参数没有完全写入磁盘。 与 :ref:`JSON <tut-json>` 不同，*pickle* 是一种允许对复杂 Python 对象进行序列化的协议。因此，它为 Python 所特有，不能用于与其他语言编写的应用程序通信。默认情况下它也是不安全的：如果解序化的数据是由手段高明的攻击者精心设计的，这种不受信任来源的 pickle 数据可以执行任意代码。 更复杂的输出格式 文件对象还支持 :meth:`~file.isatty` 和 :meth:`~file.truncate`  等方法，但不常用；文件对象的完整指南详见库参考。 最后，还可以用字符串切片和合并操作完成字符串处理操作，创建任何排版布局。字符串类型还支持将字符串按给定列宽进行填充，这些方法也很有用。 :meth:`str.format` 进行字符串格式化的完整概述详见 :ref:`formatstrings` 。 从文件中读取多行时，可以用循环遍历整个文件对象。这种操作能高效利用内存，快速，且代码简单： 格式化字符串字面值 下面是使用手动格式化方式实现的同一个平方和立方的表： :meth:`str.format` 方法中使用关键字参数名引用值。 如果不想分拆较长的格式字符串，最好按名称引用变量进行格式化，不要按位置。这项操作可以通过传递字典，并用方括号 ``'[]'`` 访问键来完成。 只需一行简单的代码即可查看某个对象的 JSON 字符串表现形式： 如需以列表形式读取文件中的所有行，可以用 ``list(f)`` 或 ``f.readlines()``。 如果没有使用 :keyword:`with` 关键字，则应调用 ``f.close()`` 关闭文件，即可释放文件占用的系统资源。 在文本文件（模式字符串未使用 ``b`` 时打开的文件）中，只允许相对于文件开头搜索（使用 ``seek(0, 2)`` 搜索到文件末尾是个例外），唯一有效的 *offset* 值是能从 ``f.tell()`` 中返回的，或 0。其他 *offset* 值都会产生未定义的行为。 在文本模式下读取文件时，默认把平台特定的行结束符（Unix 上为 ``\n``, Windows 上为 ``\r\n``）转换为 ``\n``。在文本模式下写入数据时，默认把 ``\n`` 转换回平台特定结束符。这种操作方式在后台修改文件数据对文本文件来说没有问题，但会破坏 :file:`JPEG` 或 :file:`EXE` 等二进制文件中的数据。注意，在读写此类文件时，一定要使用二进制模式。 输入与输出 在处理文件对象时，最好使用 :keyword:`with` 关键字。优点是，子句体结束后，文件会正确关闭，即便触发异常也可以。而且，使用 :keyword:`!with` 相比等效的 :keyword:`try`\ -\ :keyword:`finally` 代码块要简短得多： JSON文件必须以UTF-8编码。当打开JSON文件作为一个 :term:`text file` 用于读写时，使用 ``encoding="utf-8"`` 。 手动格式化字符串 文件对象的方法 :ref:`old-string-formatting` 小节介绍更多相关内容。 通常情况下，文件是以 :dfn:`text mode` 打开的，也就是说，你从文件中读写字符串，这些字符串是以特定的 *encoding* 编码的。如果没有指定 *encoding* ，默认的是与平台有关的（见 :func:`open` ）。因为 UTF-8 是现代事实上的标准，除非你知道你需要使用一个不同的编码，否则建议使用 ``encoding="utf-8"`` 。在模式后面加上一个 ``'b'`` ，可以用 :dfn:`binary mode` 打开文件。二进制模式的数据是以 :class:`bytes` 对象的形式读写的。在二进制模式下打开文件时，你不能指定 *encoding* 。 对输出格式的控制不只是打印空格分隔的值，还需要更多方式。格式化输出包括以下几种方法。 旧式字符串格式化方法 还有一些修饰符可以在格式化前转换值。 ``'!a'`` 应用 :func:`ascii` ，``'!s'`` 应用 :func:`str`，``'!r'`` 应用 :func:`repr`： 写入其他类型的对象前，要先把它们转化为字符串（文本模式）或字节对象（二进制模式）： 在 ``':'`` 后传递整数，为该字段设置最小字符宽度，常用于列对齐： 位置参数和关键字参数可以任意组合： Python 允许你使用流行的数据交换格式 `JSON (JavaScript Object Notation) <https://json.org>`_，而不是让用户持续编写和调试代码来将复杂的数据类型存入文件中。 标准库模块 :mod:`json` 可以接受带有层级结构的 Python 数据，并将其转换为字符串表示形式；这个过程称为 :dfn:`serializing`。 根据字符串表示形式重建数据则称为 :dfn:`deserializing`。 在序列化和反序列化之间，用于代表对象的字符串可以存储在文件或数据库中，或者通过网络连接发送到远端主机。 读写文件 使用 :mod:`json` 保存结构化数据 请参阅 :ref:`自说明型表达式 <bpo-36817-whatsnew>` 以了解 ``=`` 说明符的更多信息。 有关这些格式说明的详情，请查看针对 :ref:`formatspec` 的参考指南。 至此，我们已学习了两种写入值的方法：*表达式语句* 和 :func:`print` 函数。第三种方法是使用文件对象的 :meth:`write` 方法；标准输出文件称为 ``sys.stdout``。详见标准库参考。 示例如下： 从文件写入或读取字符串很简单，数字则稍显麻烦，因为 :meth:`read` 方法只返回字符串，这些字符串必须传递给 :func:`int` 这样的函数，接受 ``'123'`` 这样的字符串，并返回数字值 123。保存嵌套列表、字典等复杂数据类型时，手动解析和序列化的操作非常复杂。 % 运算符（求余符）也可用于字符串格式化。给定 ``'string' % values``，则 ``string`` 中的 ``%`` 实例会以零个或多个 ``values`` 元素替换。此操作被称为字符串插值。例如： :func:`str` 函数返回供人阅读的值，:func:`repr` 则生成适于解释器读取的值（如果没有等效的语法，则强制执行 :exc:`SyntaxError`）。对于没有支持供人阅读展示结果的对象， :func:`str` 返回与 :func:`repr` 相同的值。一般情况下，数字、列表或字典等结构的值，使用这两个函数输出的表现形式是一样的。字符串有两种不同的表现形式。 字符串的 :meth:`str.format` 方法需要更多手动操作。该方法也用 ``{`` 和 ``}`` 标记替换变量的位置，虽然这种方法支持详细的格式化指令，但需要提供格式化信息。 字符串对象的 :meth:`str.rjust` 方法通过在左侧填充空格，对给定宽度字段中的字符串进行右对齐。同类方法还有 :meth:`str.ljust` 和 :meth:`str.center` 。这些方法不写入任何内容，只返回一个新字符串，如果输入的字符串太长，它们不会截断字符串，而是原样返回；虽然这种方式会弄乱列布局，但也比另一种方法好，后者在显示值时可能不准确（如果真的想截断字符串，可以使用 ``x.ljust(n)[:n]`` 这样的切片操作 。） :mod:`string` 模块包含 :class:`~string.Template` 类，提供了将值替换为字符串的另一种方法。该类使用 ``$x`` 占位符，并用字典的值进行替换，但对格式控制的支持比较有限。 JSON 格式通常用于现代应用程序的数据交换。程序员早已对它耳熟能详，可谓是交互操作的不二之选。 字符串 format() 方法 ``=`` 说明符可被用于将一个表达式扩展为表达式文本、等号再加表达式求值结果的形式。 花括号及之内的字符（称为格式字段）被替换为传递给 :meth:`str.format` 方法的对象。花括号中的数字表示传递给 :meth:`str.format` 方法的对象所在的位置。 第一个实参是文件名字符串。第二个实参是包含描述文件使用方式字符的字符串。*mode* 的值包括 ``'r'`` ，表示文件只能读取；``'w'`` 表示只能写入（现有同名文件会被覆盖）；``'a'`` 表示打开文件并追加内容，任何写入的数据会自动添加到文件末尾。``'r+'`` 表示打开文件进行读写。*mode* 实参是可选的，省略时的默认值为 ``'r'``。 本节下文中的例子假定已创建 ``f`` 文件对象。 程序输出有几种显示方式；数据既可以输出供人阅读的形式，也可以写入文件备用。本章探讨一些可用的方式。 另一种方法是 :meth:`str.zfill` ，该方法在数字字符串左边填充零，且能识别正负号： 这也可以通过将 ``table`` 字典作为采用 ``**`` 标记的关键字参数传入来实现。 :: 与内置函数 :func:`vars` 结合使用时，这种方式非常实用，可以返回包含所有局部变量的字典。 这种简单的序列化技术可以处理列表和字典，但在 JSON 中序列化任意类的实例，则需要付出额外努力。:mod:`json` 模块的参考包含对此的解释。 ``f.seek(offset, whence)`` 可以改变文件对象的位置。通过向参考点添加 *offset* 计算位置；参考点由 *whence* 参数指定。 *whence* 值为 0 时，表示从文件开头计算，1 表示使用当前文件位置，2 表示使用文件末尾作为参考点。省略 *whence* 时，其默认值为 0，即使用文件开头作为参考点。 要再次解码对象，如果 ``f`` 是已打开、供读取的 :term:`binary file` 或 :term:`text file` 对象： ``f.read(size)`` 可用于读取文件内容，它会读取一些数据，并返回字符串（文本模式），或字节串对象（在二进制模式下）。 *size* 是可选的数值参数。省略 *size* 或 *size* 为负数时，读取并返回整个文件的内容；文件大小是内存的两倍时，会出现问题。*size* 取其他值时，读取并返回最多 *size* 个字符（文本模式）或 *size* 个字节（二进制模式）。如已到达文件末尾，``f.read()`` 返回空字符串（``''``）。 使用 :ref:`格式化字符串字面值 <tut-f-strings>` ，要在字符串开头的引号/三引号前添加 ``f`` 或 ``F`` 。在这种字符串中，可以在 ``{`` 和 ``}`` 字符之间输入引用的变量，或字面值的 Python 表达式。 如果不需要花哨的输出，只想快速显示变量进行调试，可以用 :func:`repr` 或 :func:`str` 函数把值转化为字符串。 ``f.readline()`` 从文件中读取单行数据；字符串末尾保留换行符（``\n``），只有在文件不以换行符结尾时，文件的最后一行才会省略换行符。这种方式让返回值清晰明确；只要 ``f.readline()`` 返回空字符串，就表示已经到达了文件末尾，空行使用 ``'\n'`` 表示，该字符串只包含一个换行符。 ``f.tell()`` 返回整数，给出文件对象在文件中的当前位置，表示为二进制模式下时从文件开始的字节数，以及文本模式下的意义不明的数字。 ``f.write(string)`` 把 *string* 的内容写入文件，并返回写入的字符数。 内置函数 文件 json module object -- 对象 open 