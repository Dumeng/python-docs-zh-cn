��    |      �              �  2   �      �  	  �   �
     Z     w     �     �     �     �     �               1     I     ]     w     �     �     �     �     �     �          *     A     S  )   h  "   �     �     �     �     �       (   $     M     _     l     {  5   �     �  ?   �  �        �  �   �  h   9  �   �  m   #  9   �  =   �  9   	  9   C  8   }  �   �  �   H  }  �  �   S  K   E  )   �  a   �  J     :   h  <   �  $   �       ]     =  t  <  �  !   �  :     �  L     �  	     ?     @   \  �  �    t    �   (  �!  f   �"  #   D#  r   h#  |   �#     X$     f$  ?   t$  �  �$  M  D&  �   �(  <  v)  O   �*  B   +    F+  X   ],  �   �,  �   �-  p   G.     �.     �.     �.     �.     �.     �.     /  +   ./  A   Z/  J   �/  V   �/  *   >0     i0  L   �0  J   �0     1     +1  �   81     �1     �1     �1  (   �1     2  	   /2  %   92     _2  �  s2  2   14  �   d4  d  ,5  {   �6     7     *7     A7     ]7     t7     �7     �7     �7     �7     �7     �7     8     *8     B8     Z8     s8     �8     �8     �8     �8     �8     �8     9  )   9  "   E9     h9     y9     �9     �9     �9  (   �9      :     :     :     .:  5   C:     y:  0   �:  s   �:     2;  �   ?;  r   �;  s   H<  a   �<  3   =  7   R=  3   �=  3   �=  2   �=  �   %>  �   �>  j  -?  �   �@  F   wA  2   �A  H   �A  L   :B  A   �B  B   �B  -   C     :C  a   GC  (  �C  H  �D     F  %   .F  c  TF     �G     �G  ?   �G  ;   H  �  KH  -  �I  -  -K    [L  k   gM  %   �M  z   �M  �   tN  	   �N     O  J   O  g  YO  %  �P  �   �R  P  �S  E   3U  1   yU  �   �U  [   �V  �   W  �   �W  z   �X     �X     Y     Y     )Y     8Y     EY     VY  +   uY  A   �Y  J   �Y  V   .Z  *   �Z     �Z  L   �Z  J   [     e[     r[  �   [     \     \     &\  (   7\     `\  	   v\  %   �\     �\   **Source code:** :source:`Lib/_collections_abc.py` 1) A newly written class can inherit directly from one of the abstract base classes.  The class must supply the required abstract methods.  The remaining mixin methods come from inheritance and can be overridden if desired.  Other methods may be added as needed: 2) Existing classes and built-in classes can be registered as "virtual subclasses" of the ABCs.  Those classes should define the full API including all of the abstract methods and all of the mixin methods. This lets users rely on :func:`issubclass` or :func:`isinstance` tests to determine whether the full interface is supported.  The exception to this rule is for methods that are automatically inferred from the rest of the API: 3) Some simple interfaces are directly recognizable by the presence of the required methods (unless those methods have been set to :const:`None`): :class:`AsyncGenerator` [1]_ :class:`AsyncIterable` :class:`AsyncIterable` [1]_ :class:`AsyncIterator` :class:`AsyncIterator` [1]_ :class:`Awaitable` :class:`Awaitable` [1]_ :class:`Buffer` [1]_ :class:`ByteString` :class:`Callable`  [1]_ :class:`Collection` :class:`Collection`  [1]_ :class:`Container` [1]_ :class:`Coroutine` [1]_ :class:`Generator`  [1]_ :class:`Hashable` [1]_ :class:`ItemsView` :class:`Iterable` :class:`Iterable` [1]_ [2]_ :class:`Iterator` :class:`Iterator` [1]_ :class:`KeysView` :class:`MappingView` :class:`MappingView`, :class:`Collection` :class:`MappingView`, :class:`Set` :class:`Mapping` :class:`MutableMapping` :class:`MutableSequence` :class:`MutableSet` :class:`Reversible` [1]_ :class:`Reversible`, :class:`Collection` :class:`Sequence` :class:`Set` :class:`Sized` :class:`Sized`  [1]_ :class:`Sized`, :class:`Iterable`, :class:`Container` :class:`ValuesView` :mod:`collections.abc` --- Abstract Base Classes for Containers :term:`Coroutine <coroutine>` objects and instances of the :class:`~collections.abc.Coroutine` ABC are all instances of this ABC. ABC ABC for :term:`awaitable` objects, which can be used in :keyword:`await` expressions.  Custom implementations must provide the :meth:`__await__` method. ABC for asynchronous generator classes that implement the protocol defined in :pep:`525` and :pep:`492`. ABC for classes that provide ``__aiter__`` and ``__anext__`` methods.  See also the definition of :term:`asynchronous iterator`. ABC for classes that provide ``__aiter__`` method.  See also the definition of :term:`asynchronous iterable`. ABC for classes that provide the :meth:`__call__` method. ABC for classes that provide the :meth:`__contains__` method. ABC for classes that provide the :meth:`__hash__` method. ABC for classes that provide the :meth:`__iter__` method. ABC for classes that provide the :meth:`__len__` method. ABC for classes that provide the :meth:`~iterator.__iter__` and :meth:`~iterator.__next__` methods.  See also the definition of :term:`iterator`. ABC for classes that provide the :meth:`~object.__buffer__` method, implementing the :ref:`buffer protocol <bufferobjects>`. See :pep:`688`. ABC for coroutine compatible classes.  These implement the following methods, defined in :ref:`coroutine-objects`: :meth:`~coroutine.send`, :meth:`~coroutine.throw`, and :meth:`~coroutine.close`.  Custom implementations must also implement :meth:`__await__`.  All :class:`Coroutine` instances are also instances of :class:`Awaitable`.  See also the definition of :term:`coroutine`. ABC for generator classes that implement the protocol defined in :pep:`342` that extends iterators with the :meth:`~generator.send`, :meth:`~generator.throw` and :meth:`~generator.close` methods. See also the definition of :term:`generator`. ABC for iterable classes that also provide the :meth:`__reversed__` method. ABC for sized iterable container classes. ABCs allow us to ask classes or instances if they provide particular functionality, for example:: ABCs for mapping, items, keys, and values :term:`views <dictionary view>`. ABCs for read-only and mutable :term:`mappings <mapping>`. ABCs for read-only and mutable :term:`sequences <sequence>`. ABCs for read-only and mutable sets. Abstract Methods An :func:`issubclass` or :func:`isinstance` test for an interface works in one of three ways. Checking ``isinstance(obj, Iterable)`` detects classes that are registered as :class:`Iterable` or that have an :meth:`__iter__` method, but it does not detect classes that iterate with the :meth:`__getitem__` method.  The only reliable way to determine whether an object is :term:`iterable` is to call ``iter(obj)``. Checking ``isinstance(obj, Iterable)`` detects classes that are registered as :class:`Iterable` or that have an :meth:`__iter__` method, but it does not detect classes that iterate with the :meth:`__getitem__` method. The only reliable way to determine whether an object is :term:`iterable` is to call ``iter(obj)``. Collections Abstract Base Classes Collections Abstract Base Classes -- Detailed Descriptions Complex interfaces do not support this last technique because an interface is more than just the presence of method names.  Interfaces specify semantics and relationships between methods that cannot be inferred solely from the presence of specific method names.  For example, knowing that a class supplies ``__getitem__``, ``__len__``, and ``__iter__`` is insufficient for distinguishing a :class:`Sequence` from a :class:`Mapping`. Examples and Recipes Footnotes For more about ABCs, see the :mod:`abc` module and :pep:`3119`. Formerly, this module was part of the :mod:`collections` module. Implementation note: Some of the mixin methods, such as :meth:`__iter__`, :meth:`__reversed__` and :meth:`index`, make repeated calls to the underlying :meth:`__getitem__` method. Consequently, if :meth:`__getitem__` is implemented with constant access speed, the mixin methods will have linear performance; however, if the underlying method is linear (as it would be with a linked list), the mixins will have quadratic performance and will likely need to be overridden. In CPython, generator-based coroutines (generators decorated with :func:`types.coroutine`) are *awaitables*, even though they do not have an :meth:`__await__` method. Using ``isinstance(gencoro, Awaitable)`` for them will return ``False``. Use :func:`inspect.isawaitable` to detect them. In CPython, generator-based coroutines (generators decorated with :func:`types.coroutine`) are *awaitables*, even though they do not have an :meth:`__await__` method. Using ``isinstance(gencoro, Coroutine)`` for them will return ``False``. Use :func:`inspect.isawaitable` to detect them. In this example, class :class:`D` does not need to define ``__contains__``, ``__iter__``, and ``__reversed__`` because the :ref:`in-operator <comparisons>`, the :term:`iteration <iterable>` logic, and the :func:`reversed` function automatically fall back to using ``__getitem__`` and ``__len__``. Inherited :class:`Mapping` methods and ``pop``, ``popitem``, ``clear``, ``update``, and ``setdefault`` Inherited :class:`Sequence` methods Inherited :class:`Sequence` methods and ``append``, ``reverse``, ``extend``, ``pop``, ``remove``, and ``__iadd__`` Inherited :class:`Set` methods and ``clear``, ``pop``, ``remove``, ``__ior__``, ``__iand__``, ``__ixor__``, and ``__isub__`` Inherits from Mixin Methods Notes on using :class:`Set` and :class:`MutableSet` as a mixin: Several of the ABCs are also useful as mixins that make it easier to develop classes supporting container APIs.  For example, to write a class supporting the full :class:`Set` API, it is only necessary to supply the three underlying abstract methods: :meth:`__contains__`, :meth:`__iter__`, and :meth:`__len__`. The ABC supplies the remaining methods such as :meth:`__and__` and :meth:`isdisjoint`:: Since some set operations create new sets, the default mixin methods need a way to create new instances from an iterable. The class constructor is assumed to have a signature in the form ``ClassName(iterable)``. That assumption is factored-out to an internal classmethod called :meth:`_from_iterable` which calls ``cls(iterable)`` to produce a new set. If the :class:`Set` mixin is being used in a class with a different constructor signature, you will need to override :meth:`_from_iterable` with a classmethod or regular method that can construct new instances from an iterable argument. The :class:`ByteString` ABC has been deprecated. For use in typing, prefer a union, like ``bytes | bytearray``, or :class:`collections.abc.Buffer`. For use as an ABC, prefer :class:`Sequence` or :class:`collections.abc.Buffer`. The :class:`Set` mixin provides a :meth:`_hash` method to compute a hash value for the set; however, :meth:`__hash__` is not defined because not all sets are :term:`hashable` or immutable.  To add set hashability using mixins, inherit from both :meth:`Set` and :meth:`Hashable`, then define ``__hash__ = Set._hash``. The collections module offers the following :term:`ABCs <abstract base class>`: The index() method added support for *stop* and *start* arguments. These ABCs override :meth:`object.__subclasshook__` to support testing an interface by verifying the required methods are present and have not been set to :const:`None`.  This only works for simple interfaces.  More complex interfaces require registration or direct subclassing. These abstract classes now support ``[]``. See :ref:`types-genericalias` and :pep:`585`. This module provides :term:`abstract base classes <abstract base class>` that can be used to test whether a class provides a particular interface; for example, whether it is :term:`hashable` or whether it is a mapping. To override the comparisons (presumably for speed, as the semantics are fixed), redefine :meth:`__le__` and :meth:`__ge__`, then the other operations will automatically follow suit. `OrderedSet recipe <https://code.activestate.com/recipes/576694/>`_ for an example built on :class:`MutableSet`. ``__aiter__`` ``__anext__`` ``__await__`` ``__buffer__`` ``__call__`` ``__contains__`` ``__contains__``, ``__iter__`` ``__contains__``, ``__iter__``, ``__len__`` ``__contains__``, ``__iter__``, ``__len__``, ``add``, ``discard`` ``__contains__``, ``__iter__``, ``__reversed__``, ``index``, and ``count`` ``__contains__``, ``keys``, ``items``, ``values``, ``get``, ``__eq__``, and ``__ne__`` ``__getitem__``, ``__iter__``, ``__len__`` ``__getitem__``, ``__len__`` ``__getitem__``, ``__setitem__``, ``__delitem__``, ``__iter__``, ``__len__`` ``__getitem__``, ``__setitem__``, ``__delitem__``, ``__len__``, ``insert`` ``__hash__`` ``__iter__`` ``__le__``, ``__lt__``, ``__eq__``, ``__ne__``, ``__gt__``, ``__ge__``, ``__and__``, ``__or__``, ``__sub__``, ``__xor__``, and ``isdisjoint`` ``__len__`` ``__next__`` ``__reversed__`` ``aclose``, ``__aiter__``, ``__anext__`` ``asend``, ``athrow`` ``close`` ``close``, ``__iter__``, ``__next__`` ``send``, ``throw`` Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:56+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码：** :source:`Lib/_collections_abc.py` 1) 新编写的类可以直接继承自某个抽象基类。 该类必须提供所需的抽象方法。 其他混合方法来自于继承并可在需要时被重载。 其他方法可以按需添加: 2) 已有的类和内置类可被注册为 ABC 的“虚拟子类”。 这些类应当定义完整的 API 包括所有抽象方法和所有混合方法。 这使得用户能依靠 :func:`issubclass` 或 :func:`isinstance` 测试来确定完整接口是否受到支持。 此规则的例外情况是那些从 API 的其他部分自动推断出来的方法: 3) 某些简单的接口通过所需方法的存在是直接可识别的 (除非这些方法已被设置为 :const:`None`): :class:`AsyncGenerator` [1]_ :class:`AsyncIterable` :class:`AsyncIterable` [1]_ :class:`AsyncIterator` :class:`AsyncIterator` [1]_ :class:`Awaitable` :class:`Awaitable` [1]_ :class:`Buffer` [1]_ :class:`ByteString` :class:`Callable`  [1]_ :class:`Collection` :class:`Collection`  [1]_ :class:`Container` [1]_ :class:`Coroutine` [1]_ :class:`Generator`  [1]_ :class:`Hashable` [1]_ :class:`ItemsView` :class:`Iterable` :class:`Iterable` [1]_ [2]_ :class:`Iterator` :class:`Iterator` [1]_ :class:`KeysView` :class:`MappingView` :class:`MappingView`, :class:`Collection` :class:`MappingView`, :class:`Set` :class:`Mapping` :class:`MutableMapping` :class:`MutableSequence` :class:`MutableSet` :class:`Reversible` [1]_ :class:`Reversible`, :class:`Collection` :class:`Sequence` :class:`Set` :class:`Sized` :class:`Sized`  [1]_ :class:`Sized`, :class:`Iterable`, :class:`Container` :class:`ValuesView` :mod:`collections.abc` --- 容器的抽象基类 :term:`协程 <coroutine>` 对象和 :class:`~collections.abc.Coroutine` ABC 的实例都是这个 ABC 的实例。 抽象基类 为可等待对象 :term:`awaitable` 提供的类，可以被用于 :keyword:`await` 表达式中。习惯上必须实现 :meth:`__await__` 方法。 为异步生成器类提供的抽象基类，这些类实现了定义在 :pep:`525` 和 :pep:`492` 里的协议。 提供了 ``__aiter__`` 和 ``__anext__`` 方法的抽象基类。参见 :term:`asynchronous iterator` 的定义。 提供了 ``__aiter__`` 方法的抽象基类。参见 :term:`asynchronous iterable` 的定义。 提供了 :meth:`__call__` 方法的抽象基类。 提供了 :meth:`__contains__` 方法的抽象基类。 提供了 :meth:`__hash__` 方法的抽象基类。 提供了 :meth:`__iter__` 方法的抽象基类。 提供了 :meth:`__len__` 方法的抽象基类。 提供了 :meth:`~iterator.__iter__` 和 :meth:`~iterator.__next__` 方法的抽象基类。参见 :term:`iterator` 的定义。 针对提供 :meth:`~object.__buffer__` 方法的类的 ABC，实现了 :ref:`缓冲区协议 <bufferobjects>`。 参见 :pep:`688`。 用于协程兼容类的抽象基类。实现了如下定义在 :ref:`coroutine-objects`: 里的方法： :meth:`~coroutine.send`，:meth:`~coroutine.throw` 和 :meth:`~coroutine.close`。通常的实现里还需要实现 :meth:`__await__` 方法。所有的 :class:`Coroutine` 实例都必须是 :class:`Awaitable` 实例。参见 :term:`coroutine` 的定义。 生成器类，实现了 :pep:`342` 中定义的协议，继承并扩展了迭代器，提供了 :meth:`~generator.send`, :meth:`~generator.throw` 和 :meth:`~generator.close` 方法。参见 :term:`generator` 的定义。 为可迭代类提供了 :meth:`__reversed__` 方法的抽象基类。 集合了 Sized 和 Iterable 类的抽象基类。 ABC 允许我们询问类或实例是否提供特定的功能，例如:: 映射及其键和值的 :term:`视图 <dictionary view>` 的抽象基类。 只读的与可变的 :term:`映射 <mapping>` 的抽象基类。 只读的与可变的 :term:`序列 <sequence>` 的抽象基类。 只读的与可变的集合的抽象基类。 抽象方法 一个接口的 :func:`issubclass` 或 :func:`isinstance` 测试采用以下三种方式之一。 检查 ``isinstance(obj, Iterable)`` 是否侦测到被注册为 :class:`Iterable` 或者具有 :meth:`__iter__` 方法的类，但它不能侦测到使用 :meth:`__getitem__` 方法进行迭代的类。 确定一个对象是否为 :term:`iterable` 的唯一可靠方式是调用 ``iter(obj)``。 使用 ``isinstance(obj, Iterable)`` 可以检测一个类是否已经注册到了 :class:`Iterable` 或者实现了 :meth:`__iter__` 函数，但是无法检测这个类是否能够使用 :meth:`__getitem__` 方法进行迭代。检测一个对象是否是 :term:`iterable` 的唯一可信赖的方法是调用 ``iter(obj)``。 容器抽象基类 多项集抽象基类 -- 详细描述 复杂的接口不支持最后这种技术手段因为接口并不只是作为方法名称存在。 接口指明了方法之间的语义和关系，这些是无法根据特定方法名称的存在推断出来的。 例如，知道一个类提供了 ``__getitem__``, ``__len__`` 和 ``__iter__`` 并不足以区分 :class:`Sequence` 和 :class:`Mapping`。 例子和配方 附注 对于抽象基类，参见 :mod:`abc` 模块和 :pep:`3119`。 该模块曾是 :mod:`collections` 模块的组成部分。 实现笔记：一些混入（Maxin）方法比如 :meth:`__iter__`, :meth:`__reversed__` 和 :meth:`index` 会重复调用底层的 :meth:`__getitem__` 方法。因此，如果实现的 :meth:`__getitem__` 是常数级访问速度，那么相应的混入方法会有一个线性的表现；然而，如果底层方法是线性实现（例如链表），那么混入方法将会是平方级的表现，这也许就需要被重构了。 在 CPython 中，基于生成器的协程（使用 :func:`types.coroutine` 装饰的生成器）都是 *可等待对象*，即使它们没有 :meth:`__await__` 方法。 对它们使用 ``isinstance(gencoro, Awaitable)`` 将返回 ``False``。 请使用 :func:`inspect.isawaitable` 来检测它们。 在 CPython 中，基于生成器的协程（使用 :func:`types.coroutine` 装饰的生成器）都是 *可等待对象*，即使它们没有 :meth:`__await__` 方法。 对它们使用 ``isinstance(gencoro, Coroutine)`` 将返回 ``False``。 请使用 :func:`inspect.isawaitable` 来检测它们。 在这个例子中，:class:`D` 类不需要定义 ``__contains__``, ``__iter__`` 和 ``__reversed__`` 因为 :ref:`in 运算符 <comparisons>`, the :term:`迭代 <iterable>` 逻辑和 :func:`reversed` 函数会自动回退为使用 ``__getitem__`` 和 ``__len__``。 继承自 :class:`Mapping` 的方法以及 ``pop``, ``popitem``, ``clear``, ``update``，和 ``setdefault`` 继承自 :class:`Sequence` 的方法 继承自 :class:`Sequence` 的方法，以及 ``append``, ``reverse``, ``extend``, ``pop``, ``remove``，和 ``__iadd__`` 继承自 :class:`Set` 的方法以及 ``clear``, ``pop``, ``remove``, ``__ior__``, ``__iand__``, ``__ixor__``，和  ``__isub__`` 继承自 Mixin 方法 当把 :class:`Set` 和 :class:`MutableSet` 用作混入类时需注意： 有些抽象基类也可以用作混入类（mixin），这可以更容易地开发支持容器 API 的类。例如，要写一个支持完整 :class:`Set` API 的类，只需要提供下面这三个方法： :meth:`__contains__`, :meth:`__iter__` 和 :meth:`__len__`。抽象基类会补充上其余的方法，比如 :meth:`__and__` 和 :meth:`isdisjoint`:: 由于某些集合操作会创建新集合，默认的混入方法需要一种从可迭代对象里创建新实例的方式。 假定类构造器具有 ``ClassName(iterable)`` 形式的签名。 这样它将执行一个名为 :meth:`_from_iterable` 的内部类方法，该方法会调用 ``cls(iterable)`` 来产生一个新集合。 如果 :class:`Set` 混入类在具有不同构造器签名的类中被使用，你将需要通过类方法或常规方法来重载 :meth:`_from_iterable`，以便基于可迭代对象参数来构造新的实例。 :class:`ByteString` ABC 已被弃用。 当用于类型标注时，建议改为并集形式，如 ``bytes | bytearray``，或 :class:`collections.abc.Buffer`。 当用作 ABC 时，建议改为 :class:`Sequence` 或 :class:`collections.abc.Buffer`。 :class:`Set` 混入类提供了一个 :meth:`_hash` 方法为集合计算哈希值；但是，没有定义 :meth:`__hash__` 因为并非所有集合都是 :term:`hashable` 或不可变对象。 要使用混入类为集合添加哈希能力，可以同时继承 :meth:`Set` 和 :meth:`Hashable`，然后定义 ``__hash__ = Set._hash``。 这个容器模块提供了以下 :term:`ABCs <abstract base class>`: index() 方法支持 *stop* 和 *start* 参数。 这些 ABC 重载了 :meth:`object.__subclasshook__` 以便支持通过验证所需的方法是否存在并且没有被设为 :const:`None` 来测试一个接口。 这只适用于简单的接口。 更复杂的接口需要注册或直接子类化。 这些抽象类现在都支持 ``[]``。 参见 :ref:`types-genericalias` 和 :pep:`585`。 本模块提供了一些 :term:`抽象基类 <abstract base class>`，它们可用于测试一个类是否提供某个特定的接口；例如，它是否为 :term:`hashable` 或是否为映射等。 重载比较符时时（想必是为了速度，因为其语义都是固定的），只需要重定义 :meth:`__le__` 和 :meth:`__ge__` 函数，然后其他的操作会自动跟进。 `OrderedSet recipe <https://code.activestate.com/recipes/576694/>`_ 是基于 :class:`MutableSet` 构建的一个示例。 ``__aiter__`` ``__anext__`` ``__await__`` ``__buffer__`` ``__call__`` ``__contains__`` ``__contains__``, ``__iter__`` ``__contains__``, ``__iter__``, ``__len__`` ``__contains__``, ``__iter__``, ``__len__``, ``add``, ``discard`` ``__contains__``, ``__iter__``, ``__reversed__``, ``index``, and ``count`` ``__contains__``, ``keys``, ``items``, ``values``, ``get``, ``__eq__``, and ``__ne__`` ``__getitem__``, ``__iter__``, ``__len__`` ``__getitem__``, ``__len__`` ``__getitem__``, ``__setitem__``, ``__delitem__``, ``__iter__``, ``__len__`` ``__getitem__``, ``__setitem__``, ``__delitem__``, ``__len__``, ``insert`` ``__hash__`` ``__iter__`` ``__le__``, ``__lt__``, ``__eq__``, ``__ne__``, ``__gt__``, ``__ge__``, ``__and__``, ``__or__``, ``__sub__``, ``__xor__``, and ``isdisjoint`` ``__len__`` ``__next__`` ``__reversed__`` ``aclose``, ``__aiter__``, ``__anext__`` ``asend``, ``athrow`` ``close`` ``close``, ``__iter__``, ``__next__`` ``send``, ``throw`` 