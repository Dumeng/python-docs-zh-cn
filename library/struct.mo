��    �      �              l     m  (   }     �     �     �     �     �     �     �     �     �     �          !     0     @     V     g     y     �     �     �     �     �  7        @  
   I     T     `     r  �   y  %     2   .  ;   a  	   �  �   �     P  E   ]  �  �  }   C     �  
   �     �     �  	   �     �  E     I   M  �   �  J   :  @   �     �  U   �    %  �   E    <     N     U     g  �  v  �        �  �     G   �  m   �  �   F  x   �  ?   c  L  �     �      
!     !     1!     F!  �   U!    "  �   '#  _   �#  �   $     �$     �$  N   �$  �   �$  *   �%  �   �%  �   ~&     '     $'  �   0'    �'  �   �(  �  �)     i+     n+     +  k   �+  9   �+  @  3,  �   t.  ^  G/  �   �0  �  �1  �   H4  �   �4  �   �5  �   6  �   �6  ~   y7  E   �7  7   >8  9   v8  �  �8  z   A:  �  �:  �   n<  �  &=  )  �>    @  h   $A  �   �A  �  aB  �  DD    G  �   I  +   
J  m   6J     �J  
   �J     �J     �J     �J     �J     �J     �J     �J     �J     �J     �J     �J     �J     �J     �J      K     K     K     K     K     K     $K     *K     0K     6K     <K     BK     HK     NK     TK     ZK     `K     fK     lK     rK  
   xK     �K     �K     �K     �K     �K     �K     �K     �K     �K     �K     �K     �K     L     L     L     L  
   'L  �  2L     �M  (    N     )N     +N     -N     /N     1N     AN     RN     aN     rN     �N     �N     �N     �N     �N     �N     �N     �N     O     +O     HO     `O     yO  ?   �O  
   �O     �O  
   �O  
   �O     �O  }   P  '   P  0   �P  C   �P     Q  ~   )Q     �Q  >   �Q  ~  �Q  u   mS  $   �S     T     T     T      T     'T  8   +T  E   dT  �   �T  8   MU  B   �U     �U  ]   �U  �   .V  �   W  �  �W     �Z     �Z     �Z  t  [  �  x\     B^  ~   R^  C   �^  j   _  �   �_  u   `  B   �`  -  �`     �a     b     0b     Cb     Xb  �   eb  	  *c  �   4d  `   �d  �   e     �e  	   �e  >   �e  �   �e  -   �f  p   �f  �   Ng     �g     �g  �   �g  Q  �h  �   �i  �  ~j     )l     0l     =l  _   Jl  /   �l  +  �l  �   o    �o  �   �p  x  �q  ~   t  �   �t  x   3u  �   �u  �   `v  t   �v  J   Zw  2   �w  *   �w  �  x  w   �y  �  
z  �   �{  �  H|    �}    �~  b   �  �   \�  �  �  u  ��  �  �  �   �  4   ԇ  c   	�     m�  
   r�     }�     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     È     Ɉ     ψ     Ո     ۈ     �     �     �     �     ��     ��     �     �     �     �     �     #�     )�     /�     5�     ;�     A�  	   H�     R�  	   W�     a�     z�     ��  3   ��     ��          ɉ     ։     �     �     �     ��     �     �   ! (exclamation) **Source code:** :source:`Lib/struct.py` 1 2 4 8 :c:expr:`_Bool` :c:expr:`char[]` :c:expr:`char` :c:expr:`double` :c:expr:`float` :c:expr:`int` :c:expr:`long long` :c:expr:`long` :c:expr:`short` :c:expr:`signed char` :c:expr:`size_t` :c:expr:`ssize_t` :c:expr:`unsigned char` :c:expr:`unsigned int` :c:expr:`unsigned long long` :c:expr:`unsigned long` :c:expr:`unsigned short` :c:expr:`void \*` :mod:`struct` --- Interpret bytes as packed binary data < (less) = (equals) > (greater) ? (question mark) @ (at) A format character may be preceded by an integral repeat count.  For example, the format string ``'4h'`` means exactly the same as ``'hhhh'``. Added support for the ``'e'`` format. Added support for the ``'n'`` and ``'N'`` formats. Added use of the :meth:`__index__` method for non-integers. Alignment Alternatively, the first character of the format string can be used to indicate the byte order, size and alignment of the packed data, according to the following table: Applications Attempt to pack an integer which is too large for the defined field:: By default, C types are represented in the machine's native format and byte order, and properly aligned by skipping pad bytes if necessary (according to the rules used by the C compiler). This behavior is chosen so that the bytes of a packed struct correspond exactly to the memory layout of the corresponding C struct. Whether to use native byte ordering and padding or standard formats depends on the application. By default, native byte ordering and alignment is used, but it is better to be explicit and use the ``'@'`` prefix character. Byte Order, Size, and Alignment Byte order C C Type Character Classes Compiled Struct objects support the following methods and attributes: Consider these two simple examples (on a 64-bit, little-endian machine):: Data is not padded to an 8-byte boundary at the end of the second format string without the use of extra padding.  A zero-repeat format code solves that problem:: Demonstrate the difference between ``'s'`` and ``'c'`` format characters:: Each iteration yields a tuple as specified by the format string. Examples Exception raised on various occasions; argument is a string describing what is wrong. For the ``'?'`` format character, the return value is either :const:`True` or :const:`False`. When packing, the truth value of the argument object is used. Either 0 or 1 in the native or standard bool representation will be packed, and any non-zero value will be ``True`` when unpacking. For the ``'f'``, ``'d'`` and ``'e'`` conversion codes, the packed representation uses the IEEE 754 binary32, binary64 or binary16 format (for ``'f'``, ``'d'`` or ``'e'`` respectively), regardless of the floating-point format used by the platform. For the ``'s'`` format character, the count is interpreted as the length of the bytes, not a repeat count like for the other format characters; for example, ``'10s'`` means a single 10-byte string mapping to or from a single Python byte string, while ``'10c'`` means 10 separate one byte character elements (e.g., ``cccccccccc``) mapping to or from ten different Python byte objects. (See :ref:`struct-examples` for a concrete demonstration of the difference.) If a count is not given, it defaults to 1.  For packing, the string is truncated or padded with null bytes as appropriate to make it fit. For unpacking, the resulting bytes object always has exactly the specified number of bytes.  As a special case, ``'0s'`` means a single, empty string (while ``'0c'`` means 0 characters). Format Format Characters Format Strings Format characters have the following meaning; the conversion between C and Python values should be obvious given their types.  The 'Standard size' column refers to the size of the packed value in bytes when using standard size; that is, when the format string starts with one of ``'<'``, ``'>'``, ``'!'`` or ``'='``.  When using native size, the size of the packed value is platform-dependent. Format strings describe the data layout when packing and unpacking data.  They are built up from :ref:`format characters<format-characters>`, which specify the type of data being packed/unpacked.  In addition, special characters control the :ref:`byte order, size and alignment<struct-alignment>`. Each format string consists of an optional prefix character which describes the overall properties of the data and one or more format characters which describe the actual data values and padding. Functions and Exceptions Identical to the :func:`iter_unpack` function, using the compiled format. The buffer's size in bytes must be a multiple of :attr:`size`. Identical to the :func:`pack_into` function, using the compiled format. Identical to the :func:`pack` function, using the compiled format. (``len(result)`` will equal :attr:`size`.) Identical to the :func:`unpack_from` function, using the compiled format. The buffer's size in bytes, starting at position *offset*, must be at least :attr:`size`. Identical to the :func:`unpack` function, using the compiled format. The buffer's size in bytes must equal :attr:`size`. If the first character is not one of these, ``'@'`` is assumed. Iteratively unpack from the buffer *buffer* according to the format string *format*.  This function returns an iterator which will read equally sized chunks from the buffer until all its contents have been consumed.  The buffer's size in bytes must be a multiple of the size required by the format, as reflected by :func:`calcsize`. JSON encoder and decoder. Module :mod:`array` Module :mod:`json` Module :mod:`pickle` Native Formats Native byte order examples (designated by the ``'@'`` format prefix or lack of any prefix character) may not match what the reader's machine produces as that depends on the platform and compiler. Native byte order is big-endian or little-endian, depending on the host system. For example, Intel x86, AMD64 (x86-64), and Apple M1 are little-endian; IBM z and many legacy architectures are big-endian. Use :data:`sys.byteorder` to check the endianness of your system. Native size and alignment are determined using the C compiler's ``sizeof`` expression.  This is always combined with native byte order. No padding is added when using non-native size and alignment, e.g. with '<', '>', '=', and '!'. Note the difference between ``'@'`` and ``'='``: both use native byte order, but the size and alignment of the latter is standardized. Notes Notes: Pack and unpack integers of three different sizes, using big endian ordering:: Pack the values *v1*, *v2*, ... according to the format string *format* and write the packed bytes into the writable buffer *buffer* starting at position *offset*.  Note that *offset* is a required argument. Packed binary storage of homogeneous data. Padding is only automatically added between successive structure members. No padding is added at the beginning or the end of the encoded struct. Previously, some of the integer formats wrapped out-of-range values and raised :exc:`DeprecationWarning` instead of :exc:`struct.error`. Python object serialization. Python type Return a bytes object containing the values *v1*, *v2*, ... packed according to the format string *format*.  The arguments must match the values required by the format exactly. Return a new Struct object which writes and reads binary data according to the format string *format*.  Creating a ``Struct`` object once and calling its methods is more efficient than calling module-level functions with the same format since the format string is only compiled once. Return the size of the struct (and hence of the bytes object produced by ``pack(format, ...)``) corresponding to the format string *format*. Several :mod:`struct` functions (and methods of :class:`Struct`) take a *buffer* argument.  This refers to objects that implement the :ref:`bufferobjects` and provide either a readable or read-writable buffer.  The most common types used for that purpose are :class:`bytes` and :class:`bytearray`, but many other types that can be viewed as an array of bytes implement the buffer protocol, so that they can be read/filled without additional copying from a :class:`bytes` object. Size Standard Formats Standard size Standard size depends only on the format character;  see the table in the :ref:`format-characters` section. The :mod:`struct` module also defines the following type: The IEEE 754 binary16 "half precision" type was introduced in the 2008 revision of the `IEEE 754 standard <ieee 754 standard_>`_. It has a sign bit, a 5-bit exponent and 11-bit precision (with 10 bits explicitly stored), and can represent numbers between approximately ``6.1e-05`` and ``6.5e+04`` at full precision. This type is not widely supported by C compilers: on a typical machine, an unsigned short can be used for storage, but not for math operations. See the Wikipedia page on the `half-precision floating-point format <half precision format_>`_ for more information. The ``'?'`` conversion code corresponds to the :c:expr:`_Bool` type defined by C99. If this type is not available, it is simulated using a :c:expr:`char`. In standard mode, it is always represented by one byte. The ``'P'`` format character is only available for the native byte ordering (selected as the default or with the ``'@'`` byte order character). The byte order character ``'='`` chooses to use little- or big-endian ordering based on the host system. The struct module does not interpret this as native ordering, so the ``'P'`` format is not available. The ``'n'`` and ``'N'`` conversion codes are only available for the native size (selected as the default or with the ``'@'`` byte order character). For the standard size, you can use whichever of the other integer formats fits your application. The ``'p'`` format character encodes a "Pascal string", meaning a short variable-length string stored in a *fixed number of bytes*, given by the count. The first byte stored is the length of the string, or 255, whichever is smaller.  The bytes of the string follow.  If the string passed in to :func:`pack` is too long (longer than the count minus 1), only the leading ``count-1`` bytes of the string are stored.  If the string is shorter than ``count-1``, it is padded with null bytes so that exactly count bytes in all are used.  Note that for :func:`unpack`, the ``'p'`` format character consumes ``count`` bytes, but that the string returned can never contain more than 255 bytes. The ``'x'`` format code can be used to specify the repeat, but for native formats it is better to use a zero-repeat format like ``'0l'``. The above results (executed on a 64-bit machine) aren't guaranteed to match when executed on different machines.  For example, the examples below were executed on a 32-bit machine:: The calculated size of the struct (and hence of the bytes object produced by the :meth:`pack` method) corresponding to :attr:`format`. The compiled versions of the most recent format strings passed to the module-level functions are cached, so programs that use only a few format strings needn't worry about reusing a single :class:`Struct` instance. The following format ``'llh0l'`` results in two pad bytes being added at the end, assuming the platform's longs are aligned on 4-byte boundaries:: The form ``'!'`` represents the network byte order which is always big-endian as defined in `IETF RFC 1700 <IETF RFC 1700_>`_. The format string type is now :class:`str` instead of :class:`bytes`. The format string used to construct this Struct object. The module defines the following exception and functions: The ordering of format characters may have an impact on size in native mode since padding is implicit. In standard mode, the user is responsible for inserting any desired padding. Note in the first ``pack`` call below that three NUL bytes were added after the packed ``'#'`` to align the following integer on a four-byte boundary. In this example, the output was produced on a little endian machine:: There is no way to indicate non-native byte order (force byte-swapping); use the appropriate choice of ``'<'`` or ``'>'``. This module converts between Python values and C structs represented as Python :class:`bytes` objects.  Compact :ref:`format strings <struct-format-strings>` describe the intended conversions to/from Python values. The module's functions and objects can be used for two largely distinct applications, data exchange with external sources (files or network connections), or data transfer between the Python application and the C layer. To align the end of a structure to the alignment requirement of a particular type, end the format with the code for that type with a repeat count of zero.  See :ref:`struct-examples`. Two main applications for the :mod:`struct` module exist, data interchange between Python and C code within an application or another application compiled using the same compiler (:ref:`native formats<struct-native-formats>`), and data interchange between applications using agreed upon data layout (:ref:`standard formats<struct-standard-formats>`).  Generally speaking, the format strings constructed for these two domains are distinct. Unpack from *buffer* starting at position *offset*, according to the format string *format*.  The result is a tuple even if it contains exactly one item.  The buffer's size in bytes, starting at position *offset*, must be at least the size required by the format, as reflected by :func:`calcsize`. Unpack from the buffer *buffer* (presumably packed by ``pack(format, ...)``) according to the format string *format*.  The result is a tuple even if it contains exactly one item.  The buffer's size in bytes must match the size required by the format, as reflected by :func:`calcsize`. Unpacked fields can be named by assigning them to variables or by wrapping the result in a named tuple:: When attempting to pack a non-integer using any of the integer conversion codes, if the non-integer has a :meth:`__index__` method then that method is called to convert the argument to an integer before packing. When constructing format strings which mimic native layouts, the compiler and machine architecture determine byte ordering and padding. In such cases, the ``@`` format character should be used to specify native byte ordering and data sizes.  Internal pad bytes are normally inserted automatically.  It is possible that a zero-repeat format code will be needed at the end of a format string to round up to the correct byte boundary for proper alignment of consecutive chunks of data. When exchanging data beyond your process such as networking or storage, be precise.  Specify the exact byte order, size, and alignment.  Do not assume they match the native order of a particular machine. For example, network byte order is big-endian, while many popular CPUs are little-endian.  By defining this explicitly, the user need not care about the specifics of the platform their code is running on. The first character should typically be ``<`` or ``>`` (or ``!``).  Padding is the responsibility of the programmer.  The zero-repeat format character won't work.  Instead, the user must explicitly add ``'x'`` pad bytes where needed.  Revisiting the examples from the previous section, we have:: When no prefix character is given, native mode is the default. It packs or unpacks data based on the platform and compiler on which the Python interpreter was built. The result of packing a given C struct includes pad bytes which maintain proper alignment for the C types involved; similarly, alignment is taken into account when unpacking.  In contrast, when communicating data between external sources, the programmer is responsible for defining byte ordering and padding between elements. See :ref:`struct-alignment` for details. When packing a value ``x`` using one of the integer formats (``'b'``, ``'B'``, ``'h'``, ``'H'``, ``'i'``, ``'I'``, ``'l'``, ``'L'``, ``'q'``, ``'Q'``), if ``x`` is outside the valid range for that format then :exc:`struct.error` is raised. When packing, ``'x'`` inserts one NUL byte. Whitespace characters between formats are ignored; a count and its format must not contain whitespace though. \(1) \(1), \(2) \(2) \(3) \(4) \(5) \(6) \(7) \(8) \(9) ``!`` ``<`` ``=`` ``>`` ``?`` ``@`` ``B`` ``H`` ``I`` ``L`` ``N`` ``P`` ``Q`` ``b`` ``c`` ``d`` ``e`` ``f`` ``h`` ``i`` ``l`` ``n`` ``p`` ``q`` ``s`` ``x`` big-endian binary bool bytes bytes of length 1 data float in struct format strings integer little-endian native network (= big-endian) no value none packing pad byte standard structures Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-02 19:38+0000
PO-Revision-Date: 2021-06-28 01:14+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 ! (感叹号) **源代码：** :source:`Lib/struct.py` 1 2 4 8 :c:expr:`_Bool` :c:expr:`char[]` :c:expr:`char` :c:expr:`double` :c:expr:`float` :c:expr:`int` :c:expr:`long long` :c:expr:`long` :c:expr:`short` :c:expr:`signed char` :c:expr:`size_t` :c:expr:`ssize_t` :c:expr:`unsigned char` :c:expr:`unsigned int` :c:expr:`unsigned long long` :c:expr:`unsigned long` :c:expr:`unsigned short` :c:expr:`void \*` :mod:`struct` --- 将字节串解读为打包的二进制数据 < (小与) = (等于号) > (大与) ? (问号) @ (at) 格式字符之前可以带有整数重复计数。 例如，格式字符串 ``'4h'`` 的含义与 ``'hhhh'`` 完全相同。 添加了对 ``'e'`` 格式的支持。 增加了对 ``'n'`` 和 ``'N'`` 格式的支持 增加了针对非整数使用 :meth:`__index__` 方法的特性。 对齐方式 或者，根据下表，格式字符串的第一个字符可用于指示打包数据的字节顺序，大小和对齐方式： 应用 尝试打包一个对于所定义字段来说过大的整数:: 在默认情况下，C 类型将以所在机器的原生格式和字节顺序来表示，并在必要时通过跳过填充字节来正确地对齐（根据 C 编译器所使用的规则）。 选择此行为是为了使已打包结构体的字节与对应的 C 结构体的内存布局完全对应。 使用原生字节顺序和填充还是标准格式取决于应用程序本身。 在默认情况下，将使用原生字节顺序和对齐，但最好是显式指定并使用 ``'@'`` 前缀字符。 字节顺序，大小和对齐方式 字节顺序 C C 类型 字符 类 已编译的 Struct 对象支持以下方法和属性： 请看这两个简单的示例（在 64 位的小端序机器上）:: 在不使用额外填充的情况下不会将数据填充到第二个格式字符串末尾的 8 字节边界上。 零重复的格式代码解决了这个问题:: 显示 ``'s'`` and ``'c'`` 格式字符之间的差异:: 每次迭代将产生一个如格式字符串所指定的元组。 例子 会在多种场合下被引发的异常；其参数为一个描述错误信息的字符串。 对于 ``'?'`` 格式字符，返回值为 :const:`True` 或 :const:`False`。 在打包时将会使用参数对象的逻辑值。 以本机或标准 bool 类型表示的 0 或 1 将被打包，任何非零值在解包时将为 ``True``。 对于 ``'f'``, ``'d'`` 和 ``'e'`` 转换码，打包表示形式将使用 IEEE 754 binary32, binary64 或 binary16 格式 (分别对应于 ``'f'``, ``'d'`` 或 ``'e'``)，无论平台使用何种浮点格式。 对于 ``'s'`` 格式字符，计数会被解读为字节的长度，而不是像其他格式字符那样的重复计数；例如，``'10s'`` 表示一个与特定的 Python 字节串互相映射的长度为 10 的字节数据，而 ``'10c'`` 则表示个 10 个与十个不同的 Python 字节对象互相映射的独立的一字节字符元素 (如 ``cccccccccc``)。 (其中的差别的具体演示请参见 :ref:`struct-examples`。) 如果未给出计数，则默认值为 1。 对于打包操作，字节串会被适当地截断或填充空字节以符合尺寸要求。 对于解包操作，结果字节对象总是会恰好具有指定数量的字节。 作为特例，``'0s'`` 表示单个空字节串 (而 ``'0c'`` 表示 0 个字符)。 格式 格式字符 格式字符串 格式字符具有以下含义；C 和 Python 值之间的按其指定类型的转换应当是相当明显的。 ‘标准大小’列是指当使用标准大小时以字节表示的已打包值大小；也就是当格式字符串以 ``'<'``, ``'>'``, ``'!'`` 或 ``'='`` 之一开头的情况。 当使用本机大小时，已打包值的大小取决于具体的平台。 格式字符串描述了打包和解包数据时的数据布局。 它们是使用 :ref:`格式字符 <format-characters>` 来构建的，格式字符指明被打包/解包的数据的类型。 此外，还有用来控制 :ref:`字节顺序、大小和对齐 <struct-alignment>` 的特殊字符。 每个格式字符串都是由一个可选的描述数据总体属性的前缀字符和一个或多个描述实际数据值和填充的格式字符组成的。 函数和异常 等价于 :func:`iter_unpack` 函数，使用了已编译的格式。 缓冲区的大小必须为 :attr:`size` 的整数倍。 等价于 :func:`pack_into` 函数，使用了已编译的格式。 等价于 :func:`pack` 函数，使用了已编译的格式。 (``len(result)`` 将等于 :attr:`size`。) 等价于 :func:`unpack_from` 函数，使用了已编译的格式。 缓冲区的字节大小从位置 *offset* 开始必须至少为 :attr:`size`。 等价于 :func:`unpack` 函数，使用了已编译的格式。 缓冲区的字节大小必须等于 :attr:`size`。 如果第一个字符不是其中之一，则假定为 ``'@'`` 。 根据格式字符串 *format* 以迭代方式从缓冲区 *buffer* 中解包。 此函数返回一个迭代器，它将从缓冲区读取大小相等的块直到其所有内容耗尽为止。 缓冲区的字节大小必须是格式所要求的大小的整数倍，如 :func:`calcsize` 所显示的。 JSON 编码器和解码器。 模块 :mod:`array` 模块 :mod:`json` 模块 :mod:`pickle` 原生格式 原生字节顺序的示例 (由 ``'@'`` 格式前缀或不带任何前缀字符的形式指定) 可能与读者机器所产生的内容不匹配，因为这取决于具体的平台和编译器。 原生字节顺序可能为大端序或小端序，具体取决于主机系统。 例如，Intel x86, AMD64 (x86-64) 和 Apple M1 是小端序的；IBM z 和许多旧式架构则是大端序的。 请使用 :data:`sys.byteorder` 来检查你的系统字节顺序。 本机大小和对齐方式是使用 C 编译器的 ``sizeof`` 表达式来确定的。 这总是会与本机字节顺序相绑定。 当使用非本机大小和对齐方式即 '<', '>', '=', and '!' 时不会添加任何填充。 请注意 ``'@'`` 和 ``'='`` 之间的区别：两个都使用本机字节顺序，但后者的大小和对齐方式是标准化的。 备注 注释： 打包和解包三种不同大小的整数，使用大端序:: 根据格式字符串 *format* 打包 *v1*, *v2*, ... 等值并将打包的字节串写入可写缓冲区 *buffer* 从 *offset* 开始的位置。 请注意 *offset* 是必需的参数。 被打包为二进制存储的同质数据。 填充只会在连续结构成员之间自动添加。 填充不会添加到已编码结构的开头和末尾。 在之前版本中，某些整数格式包装了超范围的值并会引发 :exc:`DeprecationWarning` 而不是 :exc:`struct.error`。 Python 对象序列化。 Python 类型 返回一个 bytes 对象，其中包含根据格式字符串 *format* 打包的值 *v1*, *v2*, ... 参数个数必须与格式字符串所要求的值完全匹配。 返回一个新的 Struct 对象，它会根据格式字符串object which writes and reads binary data according to the format string *format* 来写入和读取二进制数据。 一次性地创建 ``Struct`` 对象并调用其方法相比调用相同格式的模块层级函数效率更高因为格式字符串只会被编译一次。 返回与格式字符串 *format* 相对应的结构的大小（亦即 ``pack(format, ...)`` 所产生的字节串对象的大小）。 某些 :mod:`struct` 的函数（以及 :class:`Struct` 的方法）接受一个 *buffer* 参数。 这将指向实现了 :ref:`bufferobjects` 并提供只读或是可读写缓冲的对象。 用于此目的的最常见类型为 :class:`bytes` 和 :class:`bytearray`，但许多其他可被视为字节数组的类型也实现了缓冲协议，因此它们无需额外从 :class:`bytes` 对象复制即可被读取或填充。 大小 标准格式 标准大小 标准大小仅取决于格式字符；请参阅 :ref:`format-characters` 部分中的表格。 :mod:`struct` 模块还定义了以下类型： IEEE 754 binary16 "半精度" 类型是在 `IEEE 754 标准 <ieee 754 standard_>`_ 的 2008 修订版中引入的。 它包含一个符号位，5 个指数位和 11 个精度位（明确存储 10 位），可以完全精确地表示大致范围在 ``6.1e-05`` 和 ``6.5e+04`` 之间的数字。 此类型并不被 C 编译器广泛支持：在一台典型的机器上，可以使用 unsigned short 进行存储，但不会被用于数学运算。 请参阅维基百科页面 `half-precision floating-point format <half precision format_>`_ 了解详情。 ``'?'`` 转换码对应于 C99 对应的 :c:expr:`_Bool` 类型。 如此此类型不可用，则使用 :c:expr:`char` 来模块。 在标准模式下，它总是以一个字节表示。 ``'P'`` 格式字符仅对本机字节顺序可用（选择为默认或使用 ``'@'`` 字节顺序字符）。 字节顺序字符 ``'='`` 选择使用基于主机系统的小端或大端排序。 struct 模块不会将其解读为本机排序，因此 ``'P'`` 格式将不可用。 ``'n'`` 和 ``'N'`` 转换码仅对本机大小可用（选择为默认或使用 ``'@'`` 字节顺序字符）。 对于标准大小，你可以使用适合你的应用的任何其他整数格式。 ``'p'`` 格式字符用于编码“Pascal 字符串”，即存储在由计数指定的 *固定长度字节* 中的可变长度短字符串。 所存储的第一个字节为字符串长度或 255 中的较小值。 之后是字符串对应的字节。 如果传入 :func:`pack` 的字符串过长（超过计数值减 1），则只有字符串前 ``count-1`` 个字节会被存储。 如果字符串短于 ``count-1``，则会填充空字节以使得恰好使用了 count 个字节。 请注意对于 :func:`unpack`，``'p'`` 格式字符会消耗 ``count`` 个字节，但返回的字符串永远不会包含超过 255 个字节。 ``'x'`` 格式代码可被用来指定重复，但对于原生格式来说最好是使用 ``'0l'`` 这样的零重复格式。 上述结果（在 64 位机器上执行）不保证在不同的机器上执行时仍能匹配。 例如，以下示例是在 32 位机器上执行的:: 计算出对应于 :attr:`format` 的结构大小（亦即 :meth:`pack` 方法所产生的字节串对象的大小）。 传递线路模块层级函数的已编译版最新格式字符串会被缓存，因此只使用少量格式字符串的程序无需担心重用单独的 :class:`Struct` 实例。 以下格式 ``'llh0l'`` 将会在末尾添加两个填充字节，假定平台的 long 类型按 4 个字节的边界对齐的话:: 形式 ``'!'`` 代表网络字节顺序总是使用在 `IETF RFC 1700 <IETF RFC 1700_>`_ 中所定义的大端序。 格式字符串类型现在是 :class:`str` 而不再是 :class:`bytes`。 用于构造此 Struct 对象的格式字符串。 此模块定义了下列异常和函数： 格式字符的顺序可能会因为填充是隐式的而对在原生模式中的大小产生影响。 在标准模式下，用户要负责插入任何必要的填充。 请注意下面的第一个 ``pack`` 调用中在已打包的 ``'#'`` 之后添加了三个 NUL 字节以便在四字节边界上对齐到下面的整数。 在这个例子中，输出是在一台小端序的机器上产生的:: 没有什么方式能指定非本机字节顺序（强制字节对调）；请正确选择使用 ``'<'`` 或 ``'>'``。 此模块可在 Python 值和以 Python :class:`bytes` 对象表示的 C 结构体之间进行转换。 通过紧凑 :ref:`格式字符串 <struct-format-strings>` 描述预期的 Python 值转换目标/来源。 此模块的函数和对象可被用于两种相当不同的应用程序，与外部源（文件或网络连接）进行数据交换，或者在 Python 应用和 C 层级之间进行数据传输。 要将结构的末尾对齐到符合特定类型的对齐要求，请以该类型代码加重复计数的零作为格式结束。 参见 :ref:`struct-examples`。 :mod:`struct` 模块存在两个主要应用，即在一个应用程序或使用相同编译器编译的另一个应用程序中 Python 和 C 代码之间的数据交换 (:ref:`原生格式 <struct-native-formats>`)，以及使用商定的数据布局的应用程序之间的数据交换 (:ref:`标准格式 <struct-standard-formats>`)。 一般来说，针对这两个领域构造的格式字符串是不一样的。 对 *buffer* 从位置 *offset* 开始根据格式字符串 *format* 进行解包。 结果为一个元组，即使其中只包含一个条目。 缓冲区的字节大小从位置 *offset* 开始必须至少为 :func:`calcsize` 显示的格式所要求的大小。 根据格式字符串 *format* 从缓冲区 *buffer* 解包（假定是由 ``pack(format, ...)`` 打包）。 结果为一个元组，即使其只包含一个条目。 缓冲区的字节大小必须匹配格式所要求的大小，如 :func:`calcsize` 所示。 解包的字段可通过将它们赋值给变量或将结果包装为一个具名元组来命名:: 当尝试使用任何整数转换码打包一个非整数时，如果该非整数具有 :meth:`__index__` 方法，则会在打包之前调用该方法将参数转换为一个整数。 当构造模仿原生布局的格式字符串时，编译器和机器架构会决定字节顺序和填充。 在这种情况下，应当使用 ``@`` 格式字符来指明原生字节顺序和数据大小。 内部填充字节通常是自动插入的。 为了正确对齐连续的数据块可能会在格式字符串末尾需要一个零重复的格式代码以舍入到正确的字节边界。 当与你的进程之外如网络或存储交换数据时，请务必保持精确。 准确地指定字节顺序、大小和对齐。 不要假定它们与特定机器的原生顺序相匹配。 例如，网络字节顺序是大端序的，而许多流行的 CPU 则是小端序的。 通过显式定义，用户将无需关心他们的代码运行所在平台的具体规格。 第一个字符通常应为 ``<`` 或 ``>`` (或者 ``!``)。 程序员要负责填充操作。 零重复格式字符是无效的。 相反，用户必须在需要时显式地添加 ``'x'`` 填充字节。 回顾上一节中的示例，我们得到:: 当未给出前缀字符时，将默认为原生模式。 它会基于构建 Python 解释器的平台和编译器来打包和解包数据。 打包一个给定 C 结构体的结果包括为所涉及的 C 类型保持正确对齐的填充字节；类似地，当解包时也会将对齐纳入考虑。 相反地，当在外部源之间进行数据通信时，将由程序员负责定义字节顺序和元素之间的填充。 请参阅 :ref:`struct-alignment` 了解详情。 当使用某一种整数格式 (``'b'``, ``'B'``, ``'h'``, ``'H'``, ``'i'``, ``'I'``, ``'l'``, ``'L'``, ``'q'``, ``'Q'``) 打包值 ``x`` 时，如果 ``x`` 在该格式的有效范围之外则将引发 :exc:`struct.error`。 在打包时，``'x'`` 会插入一个 NUL 字节。 格式之间的空白字符会被忽略；但是计数及其格式字符中不可有空白字符。 \(1) \(1), \(2) \(2) \(3) \(4) \(5) \(6) \(7) \(8) \(9) ``!`` ``<`` ``=`` ``>`` ``?`` ``@`` ``B`` ``H`` ``I`` ``L`` ``N`` ``P`` ``Q`` ``b`` ``c`` ``d`` ``e`` ``f`` ``h`` ``i`` ``l`` ``n`` ``p`` ``q`` ``s`` ``x`` 大端 二进制 bool 字节串 长度为 1 的字节串 数据 float 在结构格式字符串中in struct format strings 整数 小端 按原字节 网络（=大端） 无 无 打包 填充字节 标准 结构 