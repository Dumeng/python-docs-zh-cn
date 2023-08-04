��    /      �                (     )  6  �   `  V   W  �   �     j  <   n  %   �  A   �  A        U  !   t  )   �  �   �  f   C  �   �  �   �	  9  B
  <   |  >   �     �  �      �   �  :   5  @   p  *   �  [   �     8  _   N  (  �  ;  �  �      �  �   �  �  a  +   @  �  l  �   "  �     �   �  W   �  �   A  �        �     �     �  �  �  (   |   '  �   �   �!  J   �"  �   �"     �#  5   �#  $   �#  D   $  D   P$     �$      �$  (   �$  w   �$  [   u%  �   �%  �   �&  #  I'  '   m(  <   �(     �(  �   �(  �   ])  8   �)  G   )*  '   q*  N   �*     �*  U   �*  �   S+  1  K,  x  }-     �.  k   �/  7  c0  )   �3  �  �3  �   G5  �   6  �   �6  R   �7  �   �7  �   �8     "9     /9     49   **Source code:** :source:`Lib/pprint.py` *compact* impacts the way that long sequences (lists, tuples, sets, etc) are formatted. If *compact* is false (the default) then each item of a sequence will be formatted on a separate line.  If *compact* is true, as many items as will fit within the *width* will be formatted on each output line. *depth* controls the number of nesting levels which may be printed; if the data structure being printed is too deep, the next contained level is replaced by ``...``.  By default, there is no constraint on the depth of the objects being formatted. *indent* (default 1) specifies the amount of indentation added for each nesting level. *width* (default 80) specifies the desired maximum number of characters per line in the output. If a structure cannot be formatted within the width constraint, a best effort will be made. ... :class:`PrettyPrinter` instances have the following methods: :mod:`pprint` --- Data pretty printer Added support for pretty-printing :class:`dataclasses.dataclass`. Added support for pretty-printing :class:`types.SimpleNamespace`. Added the *compact* parameter. Added the *sort_dicts* parameter. Added the *underscore_numbers* parameter. Additionally, maximum character *width* can be suggested. If a long object cannot be split, the specified width will be exceeded:: Construct a :class:`PrettyPrinter` instance.  This constructor understands several keyword parameters. Determine if *object* requires a recursive representation.  This function is subject to the same limitations as noted in :func:`saferepr` below and may raise an :exc:`RecursionError` if it fails to detect a recursive object. Determine if the formatted representation of *object* is "readable", or can be used to reconstruct the value using :func:`eval`.  This always returns ``False`` for recursive objects. Determine if the formatted representation of the object is "readable," or can be used to reconstruct the value using :func:`eval`.  Note that this returns ``False`` for recursive objects.  If the *depth* parameter of the :class:`PrettyPrinter` is set and the object is deeper than allowed, this returns ``False``. Determine if the object requires a recursive representation. Dictionaries are sorted by key before the display is computed. Example If *sort_dicts* is true (the default), dictionaries will be formatted with their keys sorted, otherwise they will display in insertion order. If *underscore_numbers* is true, integers will be formatted with the ``_`` character for a thousands separator, otherwise underscores are not displayed (the default). In its basic form, :func:`pprint` shows the whole object:: No longer attempts to write to ``sys.stdout`` if it is ``None``. One more support function is also defined: Other values configure the manner in which nesting of complex data structures is displayed. PrettyPrinter Objects Print the formatted representation of *object* on the configured stream, followed by a newline. Prints the formatted representation of *object* followed by a newline. If *sort_dicts* is false (the default), dictionaries will be displayed with their keys in insertion order, otherwise the dict keys will be sorted. *args* and *kwargs* will be passed to :func:`pprint` as formatting parameters. Prints the formatted representation of *object* on *stream*, followed by a newline.  If *stream* is ``None``, ``sys.stdout`` is used. This may be used in the interactive interpreter instead of the :func:`print` function for inspecting values (you can even reassign ``print = pprint.pprint`` for use within a scope). Return a string representation of *object*, protected against recursion in some common data structures, namely instances of :class:`dict`, :class:`list` and :class:`tuple` or subclasses whose ``__repr__`` has not been overridden.  If the representation of object exposes a recursive entry, the recursive reference will be represented as ``<Recursion on typename with id=number>``.  The representation is not otherwise formatted. Return the formatted representation of *object* as a string.  *indent*, *width*, *depth*, *compact*, *sort_dicts* and *underscore_numbers* are passed to the :class:`PrettyPrinter` constructor as formatting parameters and their meanings are as described in its documentation above. Return the formatted representation of *object*.  This takes into account the options passed to the :class:`PrettyPrinter` constructor. Returns three values: the formatted version of *object* as a string, a flag indicating whether the result is readable, and a flag indicating whether recursion was detected.  The first argument is the object to be presented.  The second is a dictionary which contains the :func:`id` of objects that are part of the current presentation context (direct and indirect containers for *object* that are affecting the presentation) as the keys; if an object needs to be presented which is already represented in *context*, the third return value should be ``True``.  Recursive calls to the :meth:`.format` method should add additional entries for containers to this dictionary.  The third argument, *maxlevels*, gives the requested limit to recursion; this will be ``0`` if there is no requested limit.  This argument should be passed unmodified to recursive calls. The fourth argument, *level*, gives the current level; recursive calls should be passed a value less than that of the current call. The :mod:`pprint` module defines one class: The :mod:`pprint` module provides a capability to "pretty-print" arbitrary Python data structures in a form which can be used as input to the interpreter. If the formatted structures include objects which are not fundamental Python types, the representation may not be loadable.  This may be the case if objects such as files, sockets or classes are included, as well as many other objects which are not representable as Python literals. The configuration parameters *stream*, *indent*, *width*, *depth*, *compact*, *sort_dicts* and *underscore_numbers* are passed to the :class:`PrettyPrinter` constructor and their meanings are as described in its documentation above. The following methods provide the implementations for the corresponding functions of the same names.  Using these methods on an instance is slightly more efficient since new :class:`PrettyPrinter` objects don't need to be created. The formatted representation keeps objects on a single line if it can, and breaks them onto multiple lines if they don't fit within the allowed width. Construct :class:`PrettyPrinter` objects explicitly if you need to adjust the width constraint. The result can be limited to a certain *depth* (ellipsis is used for deeper contents):: This method is provided as a hook to allow subclasses to modify the way objects are converted to strings.  The default implementation uses the internals of the :func:`saferepr` implementation. To demonstrate several uses of the :func:`pprint` function and its parameters, let's fetch information about a project from `PyPI <https://pypi.org>`_:: built-in function eval placeholder Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-08-04 14:13+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码：** :source:`Lib/pprint.py` *compact* 影响长序列（列表、元组、集合等等）的格式化方式。 如果 *compact* 为假值（默认）则序列的每一项将格式化为单独的行。 如果 *compact* 为真值，则每个输出行格式化时将在 *width* 的限制之内尽可能地容纳多个条目。 *depth* 控制可被打印的缩进层级数量；如果要打印的数据结构层级过深，则其所包含的下一层级将用 ``...`` 替换。 默认情况下，对于被格式化对象的层级深度没有任何限制。 *indent* (默认为 1) 指定要为每个缩进层级添加的缩进量。 *width* (默认为 80) 指定输出中每行所允许的最大字符数。 如果一个数据结构无法在宽度限制之内被格式化，将显示尽可能多的内容。 ... :class:`PrettyPrinter` 的实例具有下列方法： :mod:`pprint` --- 数据美化输出 添加了对美化打印 :class:`dataclasses.dataclass` 的支持。 添加了对美化打印 :class:`types.SimpleNamespace` 的支持。 增加了 *compact* 形参。 增加了 *sort_dicts* 形参。 添加了 *underscore_numbers* 形参。 此外，还可以设置建议的最大字符 *width*。 如果一个对象无法被拆分，则将超出指定宽度:: 构造一个 :class:`PrettyPrinter` 实例。 这个构造器支持一些关键字形参。 确定 *object* 是否需要递归的表示。 此函数会受到下面 :func:`saferepr` 所提及的同样限制的影响并可能在无法检测到可递归对象时引发 :exc:`RecursionError`。 确定 *object* 的格式化表示是否“可读”，或是否可被用来通过 :func:`eval` 重新构建对象的值。 此函数对于递归对象总是返回 ``False``。 确定对象的格式化表示是否“可读”，或者是否可使用 :func:`eval` 重建对象值。 请注意此方法对于递归对象将返回 ``False``。 如果设置了 :class:`PrettyPrinter` 的 *depth* 形参并且对象深度超出允许范围，此方法将返回 ``False``。 确定对象是否需要递归表示。 字典在计算其显示形式前会先根据键来排序。 示例 如果 *sort_dicts* 为真值（默认），字典在格式化时将基于键进行排序，否则它们将按插入顺序显示。 如果 *underscore_numbers* 为真值，整数在格式化时将使用 ``_`` 字符作为千位分隔符，否则不显示下划线（默认）。 :func:`pprint` 以其基本形式显示了整个对象:: 如果 ``sys.stdout`` 为 ``None`` 则将不会尝试向其中写入。 此外还定义了一个支持函数： 其他值可用来配置复杂数据结构嵌套要以何种形式被展示。 PrettyPrinter 对象 在所配置的流上打印 *object* 的格式化表示，并附加一个换行符。 打印 *object* 的格式化表示并附带一个换行符。 如果 *sort_dicts* 为假值（默认），字典将按键的插入顺序显示，否则将按字典键排序。 *args* 和 *kwargs* 将作为格式化形参被传给 :func:`pprint`。 在 *stream* 上打印 *object* 的格式化表示形式。 如果 *stream* 为 ``None``，则会使用 ``sys.stdout``。 这可以在交互式解释器中代替 :func:`print` 函数使用以便检查对象的值（你甚至可以通过重赋值 ``print = pprint.pprint`` 在特定作用域内使用）。 返回 *object* 的字符串表示，并为某些通用数据结构提供防递归保护，包括 :class:`dict`, :class:`list` 和 :class:`tuple` 或其未重载 ``__repr__`` 的子类的实例。 如果该对象表示形式公开了一个递归条目，该递归引用会被表示为 ``<Recursion on typename with id=number>``。 否则该表示形式将不会被格式化。 将 *object* 的格式化表示形式作为字符串返回。 *indent*, *width*, *depth*, *compact*, *sort_dicts* 和 *underscore_numbers* 将作为格式化形参传递给 :class:`PrettyPrinter` 构造器，它们的含义见以上相应文档的说明。 返回 *object* 格式化表示。 这会将传给 :class:`PrettyPrinter` 构造器的选项纳入考虑。 返回三个值：字符串形式的 *object* 已格式化版本，指明结果是否可读的旗标，以及指明是否检测到递归的旗标。 第一个参数是要表示的对象。 第二个是以对象 :func:`id` 为键的字典，这些对象是当前表示上下文的一部分（影响 *object* 表示的直接和间接容器）；如果需要呈现一个已经在 *context* 中表示的对象，则第三个返回值应当为 ``True``。 对 :meth:`.format` 方法的递归调用应当将容器的附加条目添加到此字典中。 第三个参数 *maxlevels* 给出了对递归的请求限制；如果没有请求限制则其值将为 ``0``。 此参数应当不加修改地传给递归调用。 第四个参数 *level* 给出于当前层级；传给递归调用的参数值应当小于当前调用的值。 :mod:`pprint` 模块定义了一个类： :mod:`pprint` 模块提供了“美化打印”任意 Python 数据结构的功能，这种美化形式可用作对解释器的输入。 如果经格式化的结构包含非基本 Python 类型的对象，则其美化形式可能无法被加载。 包含文件、套接字或类对象，以及许多其他不能用 Python 字面值来表示的对象都有可能导致这样的结果。 配置形参 *stream*, *indent*, *width*, *depth*, *compact*, *sort_dicts* 和 *underscore_numbers* 将被传递给 :class:`PrettyPrinter` 构造器，它们的含义见以上相应文档的说明。 下列方法提供了与同名函数相对应的实现。 在实例上使用这些方法效率会更高一些，因为不需要创建新的 :class:`PrettyPrinter` 对象。 格式化后的形式会在可能的情况下以单行来表示对象，并在无法在允许宽度内容纳对象的情况下将其分为多行。 如果你需要调整宽度限制则应显式地构造 :class:`PrettyPrinter` 对象。 结果可以被限制到特定的 *depth* (更深层的内容将使用省略号):: 此方法作为一个钩子提供，允许子类修改将对象转换为字符串的方式。 默认实现使用 :func:`saferepr` 实现的内部方式。 为了演示 :func:`pprint` 函数及其形参的几种用法，让我们从 `PyPI <https://pypi.org>`_ 获取关于某个项目的信息:: 内置函数 eval placeholder 