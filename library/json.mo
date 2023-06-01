��    �      �              l	  /   m	  +   �	  \   �	  ;  &
    b  b  ~  S  �  G   5  �   }  �   K  �   E  r   2  N   �  (   �  n     &   �  6   �  M   �  D   8  3   }     �  �   �     u  �   �     S     g     ~     �  �   �     W  �   g  �   !  V   �  _   -     �  *   �  
   �      �  3   �     .  	   4  \   >  7  �  &  �  �   �    �  �   �  �  |   :   *"  �   e"  �   D#  c   $  �   }$  �   O%  �   I&    <'  e   P(  �   �(  �   B)     �)  �   �)     �*  7   �*  �   �*     |+  �   �+  m  z,  2   �-     .  �    .  /   
/  ;   :/     v/     �/  i   �/     �/  e   0  S   0  ]   �0  7   11  �   i1  �   2     �2     �2  �   �2  9   �3  6   �3  #   �3  (   4  K   A4  G   �4  4   �4  E   
5  o   P5  �   �5     T6  0   t6  l  �6  Y  8  �   l9  F  O:  �   �;    .<  "   ?=  �   b=  1   D>      v>  �  �>  =   .@  �   l@  .   �@     ,A  b   KA  h   �A  �   B  �   �B  �   7C  �   �C  �   �D  �   �E  &   WF     ~F  �   �F  ;   PG  C   �G  �  �G  c   �I  �  J     �K     �K     �K     �K     �K  &   �K     �K     �K     �K     L     L     L     &L     -L     1L  .   8L  7   gL  '   �L     �L     �L  �  �L  -   �N  +   �N  d   O    kO    �P  7  �Q  M  �R  ?   T  �   QT    U  �   &V  r   W  G   �W  '   �W  X   �W  -   UX  6   �X  W   �X  Q   Y  C   dY    �Y  �   �Z     S[  �   `[     (\     5\     9\     I\  �   Y\     ]  �   ']  �   �]  D   �^  R   �^     9_  5   O_     �_     �_  4   �_     �_     �_  T   �_  M  B`    �a  �   �b    fc  �   nd  �  e  >   �f  �   g  �   �g  g   �h  �   Qi  �   j    �j    l  ]   ,m  y   �m  �   n     �n  �   �n     $o  ,   <o  w   io     �o  �   �o  \  �p  '   3r     [r  �   `r  3   s  +   Ps     |s     �s  ]   �s     �s  X   
t  G   ct  Z   �t  0   u  �   7u  �   �u     ov     �v  �   �v  H   <w  0   �w     �w     �w  G   �w  :   9x  $   tx  6   �x  f   �x  �   7y     �y  -   �y  4  z  5  F{  �   ||  :  O}  s   �~  �   �~     �  �   �  *   ˀ     ��  U  �  5   f�  �   ��  +   �     J�  d   i�  d   ΃  y   3�  �   ��  �   3�  �   ��  �   ��  �   H�      �     ?�  �   D�  O   �  ?   i�  {  ��  d   %�  �  ��     *�     0�     5�     ;�     A�  )   E�     o�     ~�     ��     ��     ��     ��     ��          ƍ  &   ͍  *   �     �     =�     \�   **Source code:** :source:`Lib/json/__init__.py` **Source code:** :source:`Lib/json/tool.py` *fp* can now be a :term:`binary file`. The input encoding should be UTF-8, UTF-16 or UTF-32. *object_hook* is an optional function that will be called with the result of any object literal decoded (a :class:`dict`).  The return value of *object_hook* will be used instead of the :class:`dict`.  This feature can be used to implement custom decoders (e.g. `JSON-RPC <https://www.jsonrpc.org>`_ class hinting). *object_hook*, if specified, will be called with the result of every JSON object decoded and its return value will be used in place of the given :class:`dict`.  This can be used to provide custom deserializations (e.g. to support `JSON-RPC <https://www.jsonrpc.org>`_ class hinting). *object_pairs_hook* is an optional function that will be called with the result of any object literal decoded with an ordered list of pairs.  The return value of *object_pairs_hook* will be used instead of the :class:`dict`.  This feature can be used to implement custom decoders. If *object_hook* is also defined, the *object_pairs_hook* takes priority. *object_pairs_hook*, if specified will be called with the result of every JSON object decoded with an ordered list of pairs.  The return value of *object_pairs_hook* will be used instead of the :class:`dict`.  This feature can be used to implement custom decoders.  If *object_hook* is also defined, the *object_pairs_hook* takes priority. *parse_constant* doesn't get called on 'null', 'true', 'false' anymore. *parse_constant*, if specified, will be called with one of the following strings: ``'-Infinity'``, ``'Infinity'``, ``'NaN'``. This can be used to raise an exception if invalid JSON numbers are encountered. *parse_float*, if specified, will be called with the string of every JSON float to be decoded.  By default, this is equivalent to ``float(num_str)``. This can be used to use another datatype or parser for JSON floats (e.g. :class:`decimal.Decimal`). *parse_int*, if specified, will be called with the string of every JSON int to be decoded.  By default, this is equivalent to ``int(num_str)``.  This can be used to use another datatype or parser for JSON integers (e.g. :class:`float`). *s* can now be of type :class:`bytes` or :class:`bytearray`. The input encoding should be UTF-8, UTF-16 or UTF-32. :exc:`JSONDecodeError` will be raised if the given JSON document is not valid. :mod:`json` --- JSON encoder and decoder :mod:`json` exposes an API familiar to users of the standard library :mod:`marshal` and :mod:`pickle` modules. Added support for *object_pairs_hook*. Added support for int- and float-derived Enum classes. All optional parameters are now :ref:`keyword-only <keyword-only_parameter>`. All parameters are now :ref:`keyword-only <keyword-only_parameter>`. Allow strings for *indent* in addition to integers. As noted in `the errata for RFC 7159 <https://www.rfc-editor.org/errata_search.php?rfc=7159>`_, JSON permits literal U+2028 (LINE SEPARATOR) and U+2029 (PARAGRAPH SEPARATOR) characters in strings, whereas JavaScript (as of ECMAScript Edition 5.1) does not. As permitted, though not required, by the RFC, this module's serializer sets *ensure_ascii=True* by default, thus escaping the output so that the resulting strings only contain ASCII characters. Basic Usage Be cautious when parsing JSON data from untrusted sources. A malicious JSON string may cause the decoder to consume considerable CPU and memory resources. Limiting the size of data to be parsed is recommended. Character Encodings Command Line Interface Command line options Compact encoding:: Decode a JSON document from *s* (a :class:`str` beginning with a JSON document) and return a 2-tuple of the Python representation and the index in *s* where the document ended. Decoding JSON:: Deserialize *fp* (a ``.read()``-supporting :term:`text file` or :term:`binary file` containing a JSON document) to a Python object using this :ref:`conversion table <json-to-py-table>`. Deserialize *s* (a :class:`str`, :class:`bytes` or :class:`bytearray` instance containing a JSON document) to a Python object using this :ref:`conversion table <json-to-py-table>`. Disable escaping of non-ascii characters, see :func:`json.dumps` for more information. Encode the given object, *o*, and yield each string representation as available.  For example:: Encoders and Decoders Encoding basic Python object hierarchies:: Exceptions Extending :class:`JSONEncoder`:: Extensible JSON encoder for Python data structures. False Footnotes For example, to support arbitrary iterators, you could implement :meth:`default` like this:: If *allow_nan* is false (default: ``True``), then it will be a :exc:`ValueError` to serialize out of range :class:`float` values (``nan``, ``inf``, ``-inf``) in strict compliance of the JSON specification. If *allow_nan* is true, their JavaScript equivalents (``NaN``, ``Infinity``, ``-Infinity``) will be used. If *allow_nan* is true (the default), then ``NaN``, ``Infinity``, and ``-Infinity`` will be encoded as such.  This behavior is not JSON specification compliant, but is consistent with most JavaScript based encoders and decoders.  Otherwise, it will be a :exc:`ValueError` to encode such floats. If *check_circular* is false (default: ``True``), then the circular reference check for container types will be skipped and a circular reference will result in a :exc:`RecursionError` (or worse). If *check_circular* is true (the default), then lists, dicts, and custom encoded objects will be checked for circular references during encoding to prevent an infinite recursion (which would cause a :exc:`RecursionError`). Otherwise, no such check takes place. If *ensure_ascii* is true (the default), the output is guaranteed to have all incoming non-ASCII characters escaped.  If *ensure_ascii* is false, these characters will be output as-is. If *indent* is a non-negative integer or string, then JSON array elements and object members will be pretty-printed with that indent level.  An indent level of 0, negative, or ``""`` will only insert newlines.  ``None`` (the default) selects the most compact representation. Using a positive integer indent indents that many spaces per level.  If *indent* is a string (such as ``"\t"``), that string is used to indent each level. If *infile* is not specified, read from :attr:`sys.stdin`. If *skipkeys* is false (the default), a :exc:`TypeError` will be raised when trying to encode keys that are not :class:`str`, :class:`int`, :class:`float` or ``None``.  If *skipkeys* is true, such items are simply skipped. If *skipkeys* is true (default: ``False``), then dict keys that are not of a basic type (:class:`str`, :class:`int`, :class:`float`, :class:`bool`, ``None``) will be skipped instead of raising a :exc:`TypeError`. If *sort_keys* is true (default: ``False``), then the output of dictionaries will be sorted by key. If *sort_keys* is true (default: ``False``), then the output of dictionaries will be sorted by key; this is useful for regression tests to ensure that JSON serializations can be compared on a day-to-day basis. If *strict* is false (``True`` is the default), then control characters will be allowed inside strings.  Control characters in this context are those with character codes in the 0--31 range, including ``'\t'`` (tab), ``'\n'``, ``'\r'`` and ``'\0'``. If specified, *default* should be a function that gets called for objects that can't otherwise be serialized.  It should return a JSON encodable version of the object or raise a :exc:`TypeError`.  If not specified, :exc:`TypeError` is raised. If specified, *separators* should be an ``(item_separator, key_separator)`` tuple.  The default is ``(', ', ': ')`` if *indent* is ``None`` and ``(',', ': ')`` otherwise.  To get the most compact JSON representation, you should specify ``(',', ':')`` to eliminate whitespace. If the data being deserialized is not a valid JSON document, a :exc:`JSONDecodeError` will be raised. If the optional ``infile`` and ``outfile`` arguments are not specified, :attr:`sys.stdin` and :attr:`sys.stdout` will be used respectively: Implement this method in a subclass such that it returns a serializable object for *o*, or calls the base implementation (to raise a :exc:`TypeError`). Implementation Limitations In the serializer, the *allow_nan* parameter can be used to alter this behavior.  In the deserializer, the *parse_constant* parameter can be used to alter this behavior. Infinite and NaN Number Values Infinite and NaN number values are accepted and output; It also understands ``NaN``, ``Infinity``, and ``-Infinity`` as their corresponding ``float`` values, which is outside the JSON spec. JSON JSON is a subset of `YAML <https://yaml.org/>`_ 1.2.  The JSON produced by this module's default settings (in particular, the default *separators* value) is also a subset of YAML 1.0 and 1.1.  This module can thus also be used as a YAML serializer. Keys in key/value pairs of JSON are always of the type :class:`str`. When a dictionary is converted into JSON, all the keys of the dictionary are coerced to strings. As a result of this, if a dictionary is converted into JSON and then back into a dictionary, the dictionary may not equal the original one. That is, ``loads(dumps(x)) != x`` if x has non-string keys. Mutually exclusive options for whitespace control. None Other than the *ensure_ascii* parameter, this module is defined strictly in terms of conversion between Python objects and :class:`Unicode strings <str>`, and thus does not otherwise directly address the issue of character encodings. Parse every input line as separate JSON object. Performs the following translations in decoding by default: Pretty printing:: Python Regardless, for maximum interoperability, you may wish to voluntarily adhere to the restriction yourself. Repeated Names Within an Object Repeated names within an object are accepted, and only the value of the last name-value pair is used. Return a JSON string representation of a Python data structure, *o*.  For example:: Return the Python representation of *s* (a :class:`str` instance containing a JSON document). See :ref:`json-commandline` for detailed documentation. Serialize *obj* as a JSON formatted stream to *fp* (a ``.write()``-supporting :term:`file-like object`) using this :ref:`conversion table <py-to-json-table>`. Serialize *obj* to a JSON formatted :class:`str` using this :ref:`conversion table <py-to-json-table>`.  The arguments have the same meaning as in :func:`dump`. Show the help message. Simple JSON decoder. Since the RFC permits RFC-compliant parsers to accept input texts that are not RFC-compliant, this module's deserializer is technically RFC-compliant under default settings. Some JSON deserializer implementations may set limits on: Sort the output of dictionaries alphabetically by key. Specializing JSON object decoding:: Standard Compliance and Interoperability Subclass of :class:`dict` that also supports attribute style dotted access. Subclass of :exc:`ValueError` with the following additional attributes: Supports the following objects and types by default: The *object_pairs_hook* parameter can be used to alter this behavior. The :mod:`json.tool` module provides a simple command line interface to validate and pretty-print JSON objects. The :mod:`json` module always produces :class:`str` objects, not :class:`bytes` objects. Therefore, ``fp.write()`` must support :class:`str` input. The JSON document being parsed. The JSON file to be validated or pretty-printed: The JSON format is specified by :rfc:`7159` and by `ECMA-404 <https://www.ecma-international.org/publications-and-standards/standards/ecma-404/>`_. This section details this module's level of compliance with the RFC. For simplicity, :class:`JSONEncoder` and :class:`JSONDecoder` subclasses, and parameters other than those explicitly mentioned, are not considered. The RFC does not explicitly forbid JSON strings which contain byte sequences that don't correspond to valid Unicode characters (e.g. unpaired UTF-16 surrogates), but it does note that they may cause interoperability problems. By default, this module accepts and outputs (when present in the original :class:`str`) code points for such sequences. The RFC does not permit the representation of infinite or NaN number values. Despite that, by default, this module accepts and outputs ``Infinity``, ``-Infinity``, and ``NaN`` as if they were valid JSON number literal values:: The RFC prohibits adding a byte order mark (BOM) to the start of a JSON text, and this module's serializer does not add a BOM to its output. The RFC permits, but does not require, JSON deserializers to ignore an initial BOM in their input.  This module's deserializer raises a :exc:`ValueError` when an initial BOM is present. The RFC requires that JSON be represented using either UTF-8, UTF-16, or UTF-32, with UTF-8 being the recommended default for maximum interoperability. The RFC specifies that the names within a JSON object should be unique, but does not mandate how repeated names in JSON objects should be handled.  By default, this module does not raise an exception; instead, it ignores all but the last name-value pair for a given name:: The column corresponding to *pos*. The default *parse_int* of :func:`int` now limits the maximum length of the integer string via the interpreter's :ref:`integer string conversion length limitation <int_max_str_digits>` to help avoid denial of service attacks. The keyword argument *encoding* has been removed. The line corresponding to *pos*. The old version of JSON specified by the obsolete :rfc:`4627` required that the top-level value of a JSON text must be either a JSON object or array (Python :class:`dict` or :class:`list`), and could not be a JSON null, boolean, number, or string value.  :rfc:`7159` removed that restriction, and this module does not and has never implemented that restriction in either its serializer or its deserializer. The other arguments have the same meaning as in :func:`load`. The output is now in the same order as the input. Use the :option:`--sort-keys` option to sort the output of dictionaries alphabetically by key. The start index of *doc* where parsing failed. The unformatted error message. This can be used to decode a JSON document from a string that may have extraneous data at the end. This class is intended for use with the :attr:`object_hook` in :func:`json.load` and :func:`json.loads`: This module does not comply with the RFC in a strict fashion, implementing some extensions that are valid JavaScript but not valid JSON.  In particular: This module does not impose any such limits beyond those of the relevant Python datatypes themselves or the Python interpreter itself. This module's encoders and decoders preserve input and output order by default.  Order is only lost if the underlying containers are unordered. To extend this to recognize other objects, subclass and implement a :meth:`default` method with another method that returns a serializable object for ``o`` if possible, otherwise it should call the superclass implementation (to raise :exc:`TypeError`). To use a custom :class:`JSONDecoder` subclass, specify it with the ``cls`` kwarg; otherwise :class:`JSONDecoder` is used.  Additional keyword arguments will be passed to the constructor of the class. To use a custom :class:`JSONEncoder` subclass (e.g. one that overrides the :meth:`default` method to serialize additional types), specify it with the *cls* kwarg; otherwise :class:`JSONEncoder` is used. Top-level Non-Object, Non-Array Values True Unlike :mod:`pickle` and :mod:`marshal`, JSON is not a framed protocol, so trying to serialize multiple objects with repeated calls to :func:`dump` using the same *fp* will result in an invalid JSON file. Use ``(',', ': ')`` as default if *indent* is not ``None``. Using :mod:`json.tool` from the shell to validate and pretty-print: When serializing to JSON, beware any such limitations in applications that may consume your JSON.  In particular, it is common for JSON numbers to be deserialized into IEEE 754 double precision numbers and thus subject to that representation's range and precision limitations.  This is especially relevant when serializing Python :class:`int` values of extremely large magnitude, or when serializing instances of "exotic" numerical types such as :class:`decimal.Decimal`. Write the output of the *infile* to the given *outfile*. Otherwise, write it to :attr:`sys.stdout`. `JSON (JavaScript Object Notation) <https://json.org>`_, specified by :rfc:`7159` (which obsoletes :rfc:`4627`) and by `ECMA-404 <https://www.ecma-international.org/publications-and-standards/standards/ecma-404/>`_, is a lightweight data interchange format inspired by `JavaScript <https://en.wikipedia.org/wiki/JavaScript>`_ object literal syntax (although it is not a strict subset of JavaScript [#rfc-errata]_ ). array dict false float int int, float, int- & float-derived Enums list list, tuple null number number (int) number (real) object str string the content and maximum length of JSON strings the maximum level of nesting of JSON objects and arrays the range and precision of JSON numbers the size of accepted JSON texts true Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-29 16:50+0000
PO-Revision-Date: 2021-06-28 01:08+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **源代码:** :source:`Lib/json/__init__.py` **源代码：** :source:`Lib/json/tool.py` *fp* 现在可以是 :term:`binary file` 。输入编码应当是 UTF-8 ， UTF-16 或者 UTF-32 。 *object_hook* 是一个将附带任意已解码的对象字面值 (即 :class:`dict`) 来调用的可选函数。 *object_hook* 的返回值会代替 :class:`dict` 使用。 此特性可被用于实现自定义解码器 (例如 `JSON-RPC <https://www.jsonrpc.org>`_ 的类型提示)。 如果指定了 *object_hook*，它将附带每个已解码 JSON 对象的结果来调用并将被用于替代给定的 :class:`dict`。 这可被用于提供自定义的反序列化操作（例如支持 `JSON-RPC <https://www.jsonrpc.org>`_ 类提示）。 *object_pairs_hook* 是一个可选的函数，它会被调用于每一个有序列表对解码出的对象字面量。 *object_pairs_hook* 的返回值将会取代原本的 :class:`dict` 。这一特性能够被用于实现自定义解码器。如果 *object_hook* 也被定义， *object_pairs_hook* 优先。 如果指定了 *object_pairs_hook* 则它将被调用并传入以对照值有序列表进行解码的每个 JSON 对象的结果。 *object_pairs_hook* 的结果值将被用来替代 :class:`dict`。 这一特性可被用于实现自定义解码器。 如果还定义了 *object_hook*，则 *object_pairs_hook* 的优先级更高。 *parse_constant* 不再调用 'null' ， 'true' ， 'false' 。 *parse_constant* ，如果指定，将要与以下字符串中的一个一同调用： ``'-Infinity'`` ， ``'Infinity'`` ， ``'NaN'`` 。如果遇到无效的 JSON 数字则可以使用它引发异常。 *parse_float* ，如果指定，将与每个要解码 JSON 浮点数的字符串一同调用。默认状态下，相当于 ``float(num_str)`` 。可以用于对 JSON 浮点数使用其它数据类型和语法分析程序 （比如 :class:`decimal.Decimal` ）。 *parse_int* ，如果指定，将与每个要解码 JSON 整数的字符串一同调用。默认状态下，相当于 ``int(num_str)`` 。可以用于对 JSON 整数使用其它数据类型和语法分析程序 （比如 :class:`float` ）。 *s* 现在可以为 :class:`bytes` 或 :class:`bytearray` 类型。 输入编码应为 UTF-8, UTF-16 或 UTF-32。 如果给定的 JSON 文档无效则将引发 :exc:`JSONDecodeError`。 :mod:`json` --- JSON 编码和解码器 :mod:`json` 提供了与标准库 :mod:`marshal` 和 :mod:`pickle` 相似的API接口。 添加了对 *object_pairs_hook* 的支持。 添加了对 int 和 float 派生的枚举类的支持 所有可选形参现在都是 :ref:`仅限关键字参数 <keyword-only_parameter>`。 所有形参现在都是 :ref:`仅限关键字参数 <keyword-only_parameter>`。 现允许使用字符串作为 *indent* 而不再仅仅是整数。 正如 `RFC 7159 的勘误表 <https://www.rfc-editor.org/errata_search.php?rfc=7159>`_ 所说明的，JSON 允许以字符串表示字面值字符 U+2028 (LINE SEPARATOR) 和 U+2029 (PARAGRAPH SEPARATOR)，而 JavaScript (在 ECMAScript 5.1 版中) 不允许。 RFC允许，尽管不是必须的，这个模块的序列化默认设置为 *ensure_ascii=True* ，这样消除输出以便结果字符串至容纳 ASCII 字符。 基本使用 在解析来自不受信任恶劣的 JSON 数据时要小心谨慎。 恶意的 JSON 字符串可能导致解码器消耗大量 CPU 和内存资源。 建议对要解析的数据大小进行限制。 字符编码 CLI 命令行选项 紧凑编码： 从 *s* 中解码出 JSON 文档（以 JSON 文档开头的一个 :class:`str` 对象）并返回一个 Python 表示形式为 2 元组以及指明该文档在 *s* 中结束位置的序号。 JSON解码： 使用这个 :ref:`转换表<json-to-py-table>` 将 *fp* (一个支持 ``.read()`` 并包含一个 JSON 文档的 :term:`text file` 或者 :term:`binary file`) 反序列化为一个 Python 对象。 使用这个 :ref:`转换表 <json-to-py-table>` 将 *s* (一个包含 JSON 文档的 :class:`str`, :class:`bytes` 或 :class:`bytearray` 实例) 反序列化为 Python 对象。 禁用非 ASCII 字符的转义，详情参见 :func:`json.dumps`。 编码给定对象 *o* ，并且让每个可用的字符串表达方式。例如:: 编码器和解码器 对基本的 Python 对象层次结构进行编码： 异常 扩展 :class:`JSONEncoder`： 用于Python数据结构的可扩展JSON编码器。 False 备注 例如，为了支持任意的迭代器，你可以这样来实现 :meth:`default`:: 如果 *allow_nan* 是 false（默认为 ``True``），那么在对严格 JSON 规格范围外的 :class:`float` 类型值（``nan``、``inf`` 和 ``-inf``）进行序列化时会引发一个 :exc:`ValueError`。如果 *allow_nan* 是 true，则使用它们的 JavaScript 等价形式（``NaN``、``Infinity`` 和 ``-Infinity``）。 如果 *allow_nan* 为 true （默认），那么 ``NaN`` ， ``Infinity`` ，和 ``-Infinity`` 进行编码。此行为不符合 JSON 规范，但与大多数的基于 Javascript 的编码器和解码器一致。否则，它将是一个 :exc:`ValueError` 来编码这些浮点数。 如果 *check_circular* 为假值 (默认值: ``True``)，那么容器类型的循环引用检查会被跳过并且循环引用会引发 :exc:`RecursionError` (或者更糟的情况)。 如果 *check_circular* 为真值（默认），那么列表、字典和自定义的已编码对象将在编码期间进行循环引用检查以防止无限递归 (无限递归会导致 :exc:`RecursionError`)。 在其他情况下，将不会进行这种检查。 如果 *ensure_ascii* 是 true （即默认值），输出保证将所有输入的非 ASCII 字符转义。如果 *ensure_ascii* 是 false，这些字符会原样输出。 如果 *indent* 是一个非负整数或者字符串，那么 JSON 数组元素和对象成员会被美化输出为该值指定的缩进等级。 如果缩进等级为零、负数或者 ``""``，则只会添加换行符。 ``None`` (默认值) 选择最紧凑的表达。 使用一个正整数会让每一层缩进同样数量的空格。 如果 *indent* 是一个字符串 (比如 ``"\t"``)，那个字符串会被用于缩进每一层。 如果 *infile* 未指定，则从 :attr:`sys.stdin` 读取。 如果 *skipkeys* 为假值（默认），则当尝试对非 :class:`str`, :class:`int`, :class:`float` 或 ``None`` 的键进行编码时将会引发 :exc:`TypeError`。 如果 *skipkeys* 为真值，这些条目将被直接跳过。 如果 *skipkeys* 是 true （默认为 ``False``），那么那些不是基本对象（包括 :class:`str`, :class:`int`、:class:`float`、:class:`bool`、``None``）的字典的键会被跳过；否则引发一个 :exc:`TypeError`。 如果 *sort_keys* 是 true（默认为 ``False``），那么字典的输出会以键的顺序排序。 如果 *sort_keys* 为 true （默认为： ``False`` ），那么字典的输出是按照键排序；这对回归测试很有用，以确保可以每天比较 JSON 序列化。 如果 *strict* 为 false （默认为 ``True`` ），那么控制字符将被允许在字符串内。在此上下文中的控制字符编码在范围 0--31 内的字符，包括 ``'\t'`` (制表符）， ``'\n'`` ， ``'\r'`` 和 ``'\0'`` 。 当 *default* 被指定时，其应该是一个函数，每当某个对象无法被序列化时它会被调用。它应该返回该对象的一个可以被 JSON 编码的版本或者引发一个 :exc:`TypeError`。如果没有被指定，则会直接引发 :exc:`TypeError`。 当被指定时，*separators* 应当是一个 ``(item_separator, key_separator)`` 元组。当 *indent* 为 ``None`` 时，默认值取 ``(', ', ': ')``，否则取 ``(',', ': ')``。为了得到最紧凑的 JSON 表达式，你应该指定其为 ``(',', ':')`` 以消除空白字符。 如果反序列化的数据不是有效 JSON 文档，引发 :exc:`JSONDecodeError` 错误。 如果未指定可选的 ``infile`` 和 ``outfile`` 参数，则将分别使用 :attr:`sys.stdin` 和 :attr:`sys.stdout`: 在子类中实现这种方法使其返回 *o* 的可序列化对象，或者调用基础实现（引发 :exc:`TypeError` ）。 实现限制 序列化器中， *allow_nan* 参数可用于替代这个行为。反序列化器中， *parse_constant* 参数，可用于替代这个行为。 Infinite 和 NaN 数值 无限和 NaN 数值是被接受并输出； 它还将“NaN”、“Infinity”和“-Infinity”理解为它们对应的“float”值，这超出了JSON规范。 JSON JSON 是 `YAML <https://yaml.org/>`_ 1.2 的一个子集。 由该模块的默认设置所产生的 JSON（尤其是默认的 *separators* 值）也是 YAML 1.0 和 1.1 的一个子集。 因此该模块也能被用作 YAML 序列化器。 JSON 中的键-值对中的键永远是 :class:`str` 类型的。当一个对象被转化为 JSON 时，字典中所有的键都会被强制转换为字符串。这所造成的结果是字典被转换为 JSON 然后转换回字典时可能和原来的不相等。换句话说，如果 x 具有非字符串的键，则有 ``loads(dumps(x)) != x``。 用于空白符控制的互斥选项。 None *ensure_ascii* 参数以外，此模块是严格的按照在 Python 对象和 :class:`Unicode strings <str>` 间的转换定义的，并且因此不能直接解决字符编码的问题。 将每个输入行解析为单独的 JSON 对象。 默认情况下，解码执行以下翻译: 美化输出： Python 无论如何，为了最大化地获取互操作性，你可能希望自己遵守该原则。 对象中的重复名称 对象内的重复名称是接受的，并且仅使用最后一对属性-值对的值。 返回 Python *o* 数据结构的 JSON 字符串表达方式。例如:: 返回 *s* 的 Python 表示形式（包含一个 JSON 文档的 :class:`str` 实例）。 详细文档请参见 :ref:`json-commandline`。 使用这个 :ref:`转换表 <py-to-json-table>` 将 *obj* 序列化为 JSON 格式化流形式的 *fp* (支持 ``.write()`` 的 :term:`file-like object`)。 使用这个 :ref:`转换表 <py-to-json-table>` 将 *obj* 序列化为 JSON 格式的 :class:`str`。 其参数的含义与 :func:`dump` 中的相同。 显示帮助消息。 简单的JSON解码器。 自从 RFC 允许符合 RFC 的语法分析程序接收 不符合 RFC 的输入文本以来，这个模块的解串器在默认状态下默认符合 RFC 。 一些 JSON 反序列化器的实现应该在以下方面做出限制： 将字典输出按照键的字母顺序排序。 特殊 JSON 对象解码： 标准符合性和互操作性 :class:`dict` 的子类，还支持属性风格的点号访问方式。 拥有以下附加属性的 :exc:`ValueError` 的子类： 默认支持以下对象和类型：  *object_pairs_hook* 参数可用于替代此行为。  :mod:`json.tool` 模块提供了一个简单的命令行接口验证并打印漂亮的 JSON 对象。 :mod:`json` 模块始终产生 :class:`str` 对象而非 :class:`bytes` 对象。因此，``fp.write()`` 必须支持 :class:`str` 输入。 正在解析的 JSON 文档。 要被验证或美化打印的 JSON 文件： JSON 格式由 :rfc:`7159` 和 `ECMA-404 <http://www.ecma-international.org/publications/standards/Ecma-404.htm>`_ 指定。此段落详细讲了这个模块符合 RFC 的级别。简单来说， :class:`JSONEncoder` 和 :class:`JSONDecoder` 子类，和明确提到的参数以外的参数，不作考虑。 RFC 不会明确禁止包含字节序列的 JSON 字符串这不对应有效的 Unicode 字符（比如 不成对的 UTF-16 的替代物），但是它确实指出它们可能会导致互操作性问题。默认下，模块对这样的序列接受和输出（当在原始 :class:`str` 存在时）代码点。 RFC 不允许 infinite 或者 NaN 数值的表达方式。尽管这样，默认情况下，此模块接受并且输出 ``Infinity`` ， ``-Infinity``，和 ``NaN`` 好像它们是有效的JSON数字字面值 :: RFC 禁止添加字符顺序标记（ BOM ）在 JSON 文本的开头，这个模块的序列化器不添加 BOM 标记在它的输出上。 RFC，准许 JSON 反序列化器忽略它们输入中的初始 BOM 标记，但不要求。此模块的反序列化器引发 :exc:`ValueError` 当存在初始 BOM 标记。 RFC 要求使用 UTF-8 ， UTF-16 ，或 UTF-32 之一来表示 JSON ，为了最大互通性推荐使用 UTF-8 。 RFC 具体说明了 在 JSON对象里的名字应该是唯一的，但没有规定如何处理JSON对象中的重复名称。默认下，此模块不引发异常；作为替代，对于给定名它将忽略除姓-值对之外的所有对::  *pos* 的对应列数。 现在 :func:`int` 默认的 *parse_int* 会通过解释器的 :ref:`整数字符串长度上限 <int_max_str_digits>` 来限制整数字符串的最大长度以帮助避免拒绝服务攻击。 关键字参数 *encoding* 已被移除。  *pos* 的对应行数。 过时的 :rfc:`4627` 指定的旧版本 JSON 要求 JSON 文本顶级值必须是 JSON 对象或数组（ Python :class:`dict` 或 :class:`list` ），并且不能是 JSON null 值，布尔值，数值或者字符串值。 :rfc:`7159` 移除这个限制，此模块没有并且从未在序列化器和反序列化器中实现这个限制。 其他参数的含义与 :func:`load` 中的相同。 输出现在将与输入顺序保持一致。 请使用 :option:`--sort-keys` 选项来将输出按照键的字母顺序排序。  *doc* 解析失败的起始索引位置。 未格式化的错误消息。 这可以用于从一个字符串解码JSON文档，该字符串的末尾可能有无关的数据。 该类的目标是配合 :attr:`object_hook` 在 :func:`json.load` 和 :func:`json.loads` 中使用: 此模块不严格遵循于 RFC ，它实现了一些扩展是有效的 Javascript 但不是有效的 JSON。尤其是： 此模块不强制执行任何上述限制，除了相关的 Python 数据类型本身或者 Python 解释器本身的限制以外。 这个模块的编码器和解码器默认保护输入和输出的顺序。仅当底层的容器未排序时才会失去顺序。 为了将其拓展至识别其他对象，需要子类化并实现 :meth:`default` 方法于另一种返回 ``o`` 的可序列化对象的方法如果可行，否则它应该调用超类实现（来引发 :exc:`TypeError` ）。 要使用自定义的 :class:`JSONDecoder` 子类，用 ``cls`` 指定他；否则使用 :class:`JSONDecoder` 。额外的关键词参数会通过类的构造函数传递。 为了使用一个自定义的 :class:`JSONEncoder` 子类（比如：覆盖了 :meth:`default` 方法来序列化额外的类型）， 通过 *cls* 关键字参数来指定；否则将使用 :class:`JSONEncoder`。 顶级非对象，非数组值 True 与 :mod:`pickle` 和 :mod:`marshal` 不同，JSON 不是一个具有框架的协议，所以尝试多次使用同一个 *fp* 调用 :func:`dump` 来序列化多个对象会产生一个不合规的 JSON 文件。 现当 *indent* 不是 ``None`` 时，采用 ``(',', ': ')`` 作为默认值。 从命令行使用 :mod:`json.tool` 来验证并美化输出： 当序列化为 JSON ，在应用中当心此类限制这可能破坏你的 JSON 。特别是，通常将 JSON 数字反序列化为 IEEE 754 双精度数字，从而受到该表示方式的范围和精度限制。这是特别相关的，当序列化非常大的 Python :class:`int` 值时，或者当序列化 "exotic" 数值类型的实例时比如 :class:`decimal.Decimal` 。 将 *infile* 输出写入到给定的 *outfile*。 在其他情况下写入到 :attr:`sys.stdout`。 `JSON (JavaScript Object Notation) <http://json.org>`_，由 :rfc:`7159`  (它取代了 :rfc:`4627`) 和 `ECMA-404 <http://www.ecma-international.org/publications/standards/Ecma-404.htm>`_ 指定，是一个受 `JavaScript <https://en.wikipedia.org/wiki/JavaScript>`_ 的对象字面值句法启发的轻量级数据交换格式，尽管它不仅仅是一个严格意义上的 JavaScript 的子集 [#rfc-errata]_。 array dict false float int int, float, int 和 float 派生的枚举 list -- 列表 list, tuple null number number (int) number (real) object -- 对象 str string JSON 字符串的内容和最大长度 嵌套 JSON 对象和数组的最高水平 JSON 数字的范围和精度 可接受的 JSON 文本大小 true 