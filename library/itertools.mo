��    �                    
  #   
     A
     [
     v
     �
     �
  9   �
               '     C  %   Q     w     �     �     �     �     �     �  *   �          )     :     O     _     n     ~     �     �  G   �  U   �  8   N  $   �  '   �  �   �  	   e  �   o  %   (  �   N  �   �  �   �     A     I  �   R  ;  2  �   n  l     �   n     n     w     �  �   �  �   b  �   T    >  �   V  �   M  w     �   �  H    �   ^  s   Y  �   �  �  �  �  _!  u   H#  �   �#     r$  8   z$  �   �$  E   4%  H   z%  D   �%  �   &     �&  b   �&  �   '  �   �'  �   �(  �   �)  �   R*  �   +  �   �+  �   m,  �   )-  �   %.  �   /  J   �/  \   �/  a   X0  h  �0  �   #2  <  �2    %5    @6  "  M7  �   p8    9  �   	:  l   �:  �   ";    �;  �   =  �   �=  3   �>  !   �>  '   �>     &?  +   <?  )   h?  '   �?  7   �?     �?  -   @  1   <@  $   n@  )   �@  3   �@  7   �@  ,   )A  -   VA     �A     �A     �A  6   �A  1   B  <   FB  2   �B     �B  	   �B  0   �B  "   C  )   $C  #   NC  	   rC     |C  -   �C     �C     �C     �C  	   �C     �C  	   �C     �C     �C     �C     D     6D     UD  	   \D  =   fD  6   �D  8   �D     E      0E  *   QE     |E  $   �E  (   �E  �  �E  #   �G     �G     �G     �G     H     .H  7   EH     }H     �H     �H     �H  %   �H     �H     I     I     $I     2I     DI     XI  "   hI     �I     �I     �I     �I     �I     �I     �I     J     J  ?   !J  Q   aJ  )   �J     �J  &   �J  �   "K     �K  �   �K  '   �L  �   �L  �   FM  �   �M     �N     �N  �   �N  0  NO     P  b   �P  �   bQ  	   @R     JR     YR  �   jR  �   %S  �   �S    �T  �   �U  �   uV  n   2W  �   �W    (X  �   DY  g   8Z  �   �Z  �  u[  �  ]  ]   �^  �    _     �_  >   �_  n   `  G   z`  A   �`  9   a  �   >a     �a  [   �a  �   ;b  �   �b  �   �c  �   ;d  �   �d  �   �e  �   f  �   �f  �   ig  �   Th  �   6i  B   �i  d   �i  q   dj  a  �j  �   8l    �l  �   �n  �   �o  �   �p  l   �q  �   \r  �   \s  _   �s  �   Qt  �   u  �   �u  }   �v  3   Qw  !   �w  '   �w     �w  +   �w  )   x  '   ;x  7   cx     �x  -   �x  1   �x  $   y  )   <y  3   fy  7   �y  ,   �y  -   �y     -z     Iz     gz  6   �z  1   �z  <   �z  *   ,{     W{  	   g{  ,   q{      �{  8   �{  #   �{  	   |     &|  :   ,|     g|     �|     �|  	   �|     �|  	   �|     �|     �|     �|     �|      }     }  	   &}  7   0}  (   h}  (   �}     �}  1   �}  ;   ~     D~  $   R~  !   w~   (d[0] if s[0]), (d[1] if s[1]), ... (p0, p1, ..., p_n-1), ... (p[0], p[1]), (p[1], p[2]) (p[0], q[0]), (p[1], q[1]), ... **Combinatoric iterators:** **Infinite iterators:** **Iterators terminating on the shortest input sequence:** :func:`accumulate` :func:`batched` :func:`chain.from_iterable` :func:`chain` :func:`combinations_with_replacement` :func:`combinations` :func:`compress` :func:`count` :func:`cycle` :func:`dropwhile` :func:`filterfalse` :func:`groupby` :func:`groupby` is roughly equivalent to:: :func:`islice` :func:`pairwise` :func:`permutations` :func:`product` :func:`repeat` :func:`starmap` :func:`takewhile` :func:`tee` :func:`zip_longest` :mod:`itertools` --- Functions creating iterators for efficient looping A common use for *repeat* is to supply a stream of constant values to *map* or *zip*: Added *step* argument and allowed non-integer arguments. Added the optional *func* parameter. Added the optional *initial* parameter. Alternate constructor for :func:`chain`.  Gets chained inputs from a single iterable argument that is evaluated lazily.  Roughly equivalent to:: Arguments Before :func:`product` runs, it completely consumes the input iterables, keeping pools of values in memory to generate the products.  Accordingly, it is only useful with finite inputs. Cartesian product of input iterables. Elements are treated as unique based on their position, not on their value.  So if the input elements are unique, the generated combinations will also be unique. Elements are treated as unique based on their position, not on their value.  So if the input elements are unique, there will be no repeated values in each combination. Elements are treated as unique based on their position, not on their value.  So if the input elements are unique, there will be no repeated values within a permutation. Example Examples For instance, SML provides a tabulation tool: ``tabulate(f)`` which produces a sequence ``f(0), f(1), ...``.  The same effect can be achieved in Python by combining :func:`map` and :func:`count` to form ``map(f, count())``. If *func* is supplied, it should be a function of two arguments. Elements of the input *iterable* may be any type that can be accepted as arguments to *func*. (For example, with the default operation of addition, elements may be any addable type including :class:`~decimal.Decimal` or :class:`~fractions.Fraction`.) If *r* is not specified or is ``None``, then *r* defaults to the length of the *iterable* and all possible full-length permutations are generated. If *start* is ``None``, then iteration starts at zero. If *step* is ``None``, then the step defaults to one. If one of the iterables is potentially infinite, then the :func:`zip_longest` function should be wrapped with something that limits the number of calls (for example :func:`islice` or :func:`takewhile`).  If not specified, *fillvalue* defaults to ``None``. Iterator Itertool functions Itertools Recipes Make an iterator returning elements from the iterable and saving a copy of each. When the iterable is exhausted, return elements from the saved copy.  Repeats indefinitely.  Roughly equivalent to:: Make an iterator that aggregates elements from each of the iterables. If the iterables are of uneven length, missing values are filled-in with *fillvalue*. Iteration continues until the longest iterable is exhausted.  Roughly equivalent to:: Make an iterator that computes the function using arguments obtained from the iterable.  Used instead of :func:`map` when argument parameters are already grouped in tuples from a single iterable (when the data has been "pre-zipped"). Make an iterator that drops elements from the iterable as long as the predicate is true; afterwards, returns every element.  Note, the iterator does not produce *any* output until the predicate first becomes false, so it may have a lengthy start-up time.  Roughly equivalent to:: Make an iterator that filters elements from *data* returning only those that have a corresponding element in *selectors* that evaluates to ``True``. Stops when either the *data* or *selectors* iterables has been exhausted. Roughly equivalent to:: Make an iterator that filters elements from iterable returning only those for which the predicate is false. If *predicate* is ``None``, return the items that are false. Roughly equivalent to:: Make an iterator that returns *object* over and over again. Runs indefinitely unless the *times* argument is specified. Make an iterator that returns accumulated sums, or accumulated results of other binary functions (specified via the optional *func* argument). Make an iterator that returns consecutive keys and groups from the *iterable*. The *key* is a function computing a key value for each element.  If not specified or is ``None``, *key* defaults to an identity function and returns the element unchanged.  Generally, the iterable needs to already be sorted on the same key function. Make an iterator that returns elements from the first iterable until it is exhausted, then proceeds to the next iterable, until all of the iterables are exhausted.  Used for treating consecutive sequences as a single sequence. Roughly equivalent to:: Make an iterator that returns elements from the iterable as long as the predicate is true.  Roughly equivalent to:: Make an iterator that returns evenly spaced values starting with number *start*. Often used as an argument to :func:`map` to generate consecutive data points. Also, used with :func:`zip` to add sequence numbers.  Roughly equivalent to:: Make an iterator that returns selected elements from the iterable. If *start* is non-zero, then elements from the iterable are skipped until start is reached. Afterward, elements are returned consecutively unless *step* is set higher than one which results in items being skipped.  If *stop* is ``None``, then iteration continues until the iterator is exhausted, if at all; otherwise, it stops at the specified position. Many of the recipes offer the same high performance as the underlying toolset. Superior memory performance is kept by processing elements one at a time rather than bringing the whole iterable into memory all at once. Code volume is kept small by linking the tools together in a functional style which helps eliminate temporary variables.  High speed is retained by preferring "vectorized" building blocks over the use of for-loops and :term:`generator`\s which incur interpreter overhead. Note, this member of the toolkit may require significant auxiliary storage (depending on the length of the iterable). Once a :func:`tee` has been created, the original *iterable* should not be used anywhere else; otherwise, the *iterable* could get advanced without the tee objects being informed. Results Return *n* independent iterators from a single iterable. Return *r* length subsequences of elements from the input *iterable* allowing individual elements to be repeated more than once. Return *r* length subsequences of elements from the input *iterable*. Return successive *r* length permutations of elements in the *iterable*. Return successive overlapping pairs taken from the input *iterable*. Roughly equivalent to nested for-loops in a generator expression. For example, ``product(A, B)`` returns the same as ``((x,y) for x in A for y in B)``. Roughly equivalent to:: See :func:`functools.reduce` for a similar function that returns only the final accumulated value. Substantially all of these recipes and many, many others can be installed from the `more-itertools project <https://pypi.org/project/more-itertools/>`_ found on the Python Package Index:: The code for :func:`combinations_with_replacement` can be also expressed as a subsequence of :func:`product` after filtering entries where the elements are not in sorted order (according to their position in the input pool):: The code for :func:`combinations` can be also expressed as a subsequence of :func:`permutations` after filtering entries where the elements are not in sorted order (according to their position in the input pool):: The code for :func:`permutations` can be also expressed as a subsequence of :func:`product`, filtered to exclude entries with repeated elements (those from the same position in the input pool):: The combination tuples are emitted in lexicographic ordering according to the order of the input *iterable*. So, if the input *iterable* is sorted, the output tuples will be produced in sorted order. The difference between :func:`map` and :func:`starmap` parallels the distinction between ``function(a,b)`` and ``function(*c)``. Roughly equivalent to:: The following Python code helps explain what *tee* does (although the actual implementation is more complex and uses only a single underlying :abbr:`FIFO (first-in, first-out)` queue):: The following module functions all construct and return iterators. Some provide streams of infinite length, so they should only be accessed by functions or loops that truncate the stream. The module standardizes a core set of fast, memory efficient tools that are useful by themselves or in combination.  Together, they form an "iterator algebra" making it possible to construct specialized tools succinctly and efficiently in pure Python. The nested loops cycle like an odometer with the rightmost element advancing on every iteration.  This pattern creates a lexicographic ordering so that if the input's iterables are sorted, the product tuples are emitted in sorted order. The number of 2-tuples in the output iterator will be one fewer than the number of inputs.  It will be empty if the input iterable has fewer than two values. The number of items returned is ``(n+r-1)! / r! / (n-1)!`` when ``n > 0``. The number of items returned is ``n! / (n-r)!`` when ``0 <= r <= n`` or zero when ``r > n``. The number of items returned is ``n! / r! / (n-r)!`` when ``0 <= r <= n`` or zero when ``r > n``. The operation of :func:`groupby` is similar to the ``uniq`` filter in Unix.  It generates a break or new group every time the value of the key function changes (which is why it is usually necessary to have sorted the data using the same key function).  That behavior differs from SQL's GROUP BY which aggregates common elements regardless of their input order. The permutation tuples are emitted in lexicographic order according to the order of the input *iterable*. So, if the input *iterable* is sorted, the output tuples will be produced in sorted order. The primary purpose of the itertools recipes is educational.  The recipes show various ways of thinking about individual tools — for example, that ``chain.from_iterable`` is related to the concept of flattening.  The recipes also give ideas about ways that the tools can be combined — for example, how ``compress()`` and ``range()`` can work together.  The recipes also show patterns for using itertools with the :mod:`operator` and :mod:`collections` modules as well as with the built-in itertools such as ``map()``, ``filter()``, ``reversed()``, and ``enumerate()``. The returned group is itself an iterator that shares the underlying iterable with :func:`groupby`.  Because the source is shared, when the :func:`groupby` object is advanced, the previous group is no longer visible.  So, if that data is needed later, it should be stored as a list:: There are a number of uses for the *func* argument.  It can be set to :func:`min` for a running minimum, :func:`max` for a running maximum, or :func:`operator.mul` for a running product.  Amortization tables can be built by accumulating interest and applying payments: These tools and their built-in counterparts also work well with the high-speed functions in the :mod:`operator` module.  For example, the multiplication operator can be mapped across two vectors to form an efficient dot-product: ``sum(starmap(operator.mul, zip(vec1, vec2, strict=True)))``. This function is roughly equivalent to the following code, except that the actual implementation does not build up intermediate results in memory:: This itertool may require significant auxiliary storage (depending on how much temporary data needs to be stored). In general, if one iterator uses most or all of the data before another iterator starts, it is faster to use :func:`list` instead of :func:`tee`. This module implements a number of :term:`iterator` building blocks inspired by constructs from APL, Haskell, and SML.  Each has been recast in a form suitable for Python. This section shows recipes for creating an extended toolset using the existing itertools as building blocks. To compute the product of an iterable with itself, specify the number of repetitions with the optional *repeat* keyword argument.  For example, ``product(A, repeat=4)`` means the same as ``product(A, A, A, A)``. Unlike regular slicing, :func:`islice` does not support negative values for *start*, *stop*, or *step*.  Can be used to extract related fields from data where the internal structure has been flattened (for example, a multi-line report may list a name field on every third line). Usually, the number of elements output matches the input iterable. However, if the keyword argument *initial* is provided, the accumulation leads off with the *initial* value so that the output has one more element than the input iterable. When counting with floating point numbers, better accuracy can sometimes be achieved by substituting multiplicative code such as: ``(start + step * i for i in count())``. ``AA AB AC AD BA BB BC BD CA CB CC CD DA DB DC DD`` ``AA AB AC AD BB BC BD CC CD DD`` ``AB AC AD BA BC BD CA CB CD DA DB DC`` ``AB AC AD BC BD CD`` ``accumulate([1,2,3,4,5]) --> 1 3 6 10 15`` ``batched('ABCDEFG', n=3) --> ABC DEF G`` ``chain('ABC', 'DEF') --> A B C D E F`` ``chain.from_iterable(['ABC', 'DEF']) --> A B C D E F`` ``combinations('ABCD', 2)`` ``combinations_with_replacement('ABCD', 2)`` ``compress('ABCDEF', [1,0,1,0,1,1]) --> A C E F`` ``count(10) --> 10 11 12 13 14 ...`` ``cycle('ABCD') --> A B C D A B C D ...`` ``dropwhile(lambda x: x<5, [1,4,6,4,1]) --> 6 4 1`` ``filterfalse(lambda x: x%2, range(10)) --> 0 2 4 6 8`` ``islice('ABCDEFG', 2, None) --> C D E F G`` ``pairwise('ABCDEFG') --> AB BC CD DE EF FG`` ``permutations('ABCD', 2)`` ``product('ABCD', repeat=2)`` ``repeat(10, 3) --> 10 10 10`` ``starmap(pow, [(2,5), (3,2), (10,3)]) --> 32 9 1000`` ``takewhile(lambda x: x<5, [1,4,6,4,1]) --> 1 4`` ``zip_longest('ABCD', 'xy', fillvalue='-') --> Ax By C- D-`` cartesian product, equivalent to a nested for-loop data, selectors elem [,n] elem, elem, elem, ... endlessly or up to n times elements from seq[start:stop:step] elements of seq where pred(elem) is false func(\*seq[0]), func(\*seq[1]), ... func, seq it, n it1, it2, ... itn  splits one iterator into n iterable iterable[, key] p p [,func] p, n p, q, ... p, q, ... [repeat=1] p, r p0, p0+p1, p0+p1+p2, ... p0, p1, ... plast, p0, p1, ... p0, p1, ... plast, q0, q1, ... p[, r] pred, seq r-length tuples, all possible orderings, no repeated elements r-length tuples, in sorted order, no repeated elements r-length tuples, in sorted order, with repeated elements seq, [start,] stop [, step] seq[0], seq[1], until pred fails seq[n], seq[n+1], starting when pred fails start, [step] start, start+step, start+2*step, ... sub-iterators grouped by value of key(v) Project-Id-Version: Python 3.12
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
 (d[0] if s[0]), (d[1] if s[1]), ... (p0, p1, ..., p_n-1), ... (p[0], p[1]), (p[1], p[2]) (p[0], q[0]), (p[1], q[1]), ... **排列组合迭代器：** **无穷迭代器：** **根据最短输入序列长度停止的迭代器：** :func:`accumulate` :func:`batched` :func:`chain.from_iterable` :func:`chain` :func:`combinations_with_replacement` :func:`combinations` :func:`compress` :func:`count` :func:`cycle` :func:`dropwhile` :func:`filterfalse` :func:`groupby` :func:`groupby` 大致相当于： :func:`islice` :func:`pairwise` :func:`permutations` :func:`product` :func:`repeat` :func:`starmap` :func:`takewhile` :func:`tee` :func:`zip_longest` :mod:`itertools` --- 为高效循环而创建迭代器的函数 *repeat* 的一个常见用途是向 *map* 或 *zip* 提供一个常量值的流: 增加参数 *step* ，允许非整型。 增加可选参数 *func* 。 添加了可选的 *initial* 形参。 构建类似 :func:`chain` 迭代器的另一个选择。从一个单独的可迭代参数中得到链式输入，该参数是延迟计算的。大致相当于： 实参 在 :func:`product` 运行之前，它会完全耗尽输入的可迭代对象，在内存中保留值的临时池以生成结果积。 相应地，它只适用于有限的输入。 可迭代对象输入的笛卡儿积。 不同位置的元素是不同的，即使它们的值相同。因此如果输入中的元素都是不同的话，返回的组合中元素也都会不同。 元素的唯一性是基于它们的位置，而不是它们的值。 因此如果输入的元素都是唯一的，则在每个组合中将不会有重复的值。 元素是基于其位置，而非其值来认定唯一性的。 因此如果输入的元素都是唯一的，则在组合中就不会有重复的值。 示例 例子 例如，SML有一个制表工具： ``tabulate(f)``，它可产生一个序列 ``f(0), f(1), ...``。在Python中可以组合 :func:`map` 和 :func:`count` 实现： ``map(f, count())``。 如果提供了 *func*，它应当为带有两个参数的函数。 输入 *iterable* 的元素可以是能被 *func* 接受为参数的任意类型。 （例如，对于默认的加法运算，元素可以是任何可相加的类型包括 :class:`~decimal.Decimal` 或 :class:`~fractions.Fraction`。） 如果 *r* 未指定或为 ``None`` ，*r* 默认设置为 *iterable* 的长度，这种情况下，生成所有全长排列。 如果 *start* 为 ``None``，迭代从0开始。如果 *step* 为 ``None`` ，步长缺省为1。 如果其中一个可迭代对象有无限长度，:func:`zip_longest` 函数应封装在限制调用次数的场景中（例如 :func:`islice` 或 :func:`takewhile`）。除非指定， *fillvalue* 默认为 ``None`` 。 迭代器 Itertool函数 itertools 配方 创建一个迭代器，返回 *iterable* 中所有元素并保存一个副本。当取完 *iterable* 中所有元素，返回副本中的所有元素。无限重复。大致相当于： 创建一个迭代器，从每个可迭代对象中收集元素。如果可迭代对象的长度未对齐，将根据 *fillvalue* 填充缺失值。迭代持续到耗光最长的可迭代对象。大致相当于： 创建一个使用从 iterable 获取的参数来运算 function 的迭代器。 当参数形参已经从单个可迭代对象分组为多个元组时（当数据已被 "预 zip" 时）代替 :func:`map` 使用。 创建一个迭代器，如果 *predicate* 为true，迭代器丢弃这些元素，然后返回其他元素。注意，迭代器在 *predicate* 首次为false之前不会产生任何输出，所以可能需要一定长度的启动时间。大致相当于： 创建一个迭代器，它返回 *data* 中经 *selectors* 真值测试为 ``True`` 的元素。迭代器在两者较短的长度处停止。大致相当于： 创建一个过滤来自 iterable 中元素从而只返回其中 predicate 为假值的元素的迭代器。 如果 *predicate* 为 ``None``，则返回为假值的项。 大致等价于:: 创建一个持续地返回 *object* 的迭代器。 将会无限期地运行除非指定了 *times* 参数。 创建一个迭代器，返回累积汇总值或其他双目运算函数的累积结果值（通过可选的 *func* 参数指定）。 创建一个迭代器，返回 *iterable* 中连续的键和组。*key* 是一个计算元素键值函数。如果未指定或为 ``None``，*key* 缺省为恒等函数（identity function），返回元素不变。一般来说，*iterable* 需用同一个键值函数预先排序。 创建一个迭代器，它首先返回第一个可迭代对象中所有元素，接着返回下一个可迭代对象中所有元素，直到耗尽所有可迭代对象中的元素。可将多个序列处理为单个序列。大致相当于： 创建一个迭代器，只要 predicate 为真就从可迭代对象中返回元素。大致相当于:: 创建一个迭代器，它从 *start* 值开始，返回均匀间隔的值。常用于 :func:`map` 中的实参来生成连续的数据点。此外，还用于 :func:`zip` 来添加序列号。大致相当于： 制作一个从可迭代对象返回选定元素的迭代器。 如果 *start* 为非零值，则会跳过可迭代对象中的部分元素直至到达 start 位置。 在此之后，将连续返回元素除非 *step* 被设为大于 1 的值而会间隔跳过部分结果。 如果 *stop* 为 ``None``，则迭代将持续进行直至迭代器中的元素耗尽；在其他情况下，它将在指定的位置上停止。 许多配方提供了与底层工具集相当的高性能。 通过每次只处理一个元素而不是将整个可迭代对象放入内存保持了更好的内存效率。 通过以有助于消除临时变量的函数式风格将这些工作链接在一起来保持代码量的精简。 通过倾向于使用 "矢量化" 构件取代会造成较大解释器开销的 for 循环和 :term:`generator` 来保持高速度。 注意，该函数可能需要相当大的辅助空间（取决于 *iterable* 的长度）。 一旦 :func:`tee` 已被创建，原有的 *iterable* 就不应在任何其他地方使用；否则，*iterable* 可能会被向下执行而不通知 tee 对象。 结果 从一个可迭代对象中返回 *n* 个独立的迭代器。 返回由输入 *iterable* 中元素组成的长度为 *r* 的子序列，允许每个元素可重复出现。 返回由输入 *iterable* 中元素组成长度为 *r* 的子序列。 连续返回由 *iterable* 元素生成长度为 *r* 的排列。 返回从输入 *iterable* 中获取的连续重叠对。 大致相当于生成器表达式中的嵌套循环。例如， ``product(A, B)`` 和 ``((x,y) for x in A for y in B)`` 返回结果一样。 大致相当于： 参考一个类似函数  :func:`functools.reduce`  ，它只返回一个最终累积值。 基本上所有这些西方和许许多多其他的配方都可以通过 Python Package Index 上的 `more-itertools 项目 <https://pypi.org/project/more-itertools/>`_ 来安装:: :func:`combinations_with_replacement` 的代码可被改写为 :func:`production` 过滤后的子序列，（相对于元素在输入中的位置）元素不是有序的。 :func:`combinations` 的代码可被改写为 :func:`permutations` 过滤后的子序列，（相对于元素在输入中的位置）元素不是有序的。 :func:`permutations` 的代码也可被改写为 :func:`product` 的子序列，只要将含有重复元素（来自输入中同一位置的）的项排除。 组合元组是根据输入的 *iterable* 顺序以词典排序的方式发出的。 因此，如果输入的 *iterable* 是已排序的，则输出的元组将按排序后的顺序产生。 :func:`map` 和 :func:`starmap` 之间的区别类似于 ``function(a,b)`` 和 ``function(*c)`` 之间的差异。 大致相当于:: 下面的 Python 代码能帮助解释 *tee* 做了什么（尽管实际的实现更复杂并且仅使用了一个底层的 :abbr:`FIFO (first-in, first-out)` 队列）:: 下列模块函数均创建并返回迭代器。有些迭代器不限制输出流长度，所以它们只应在能截断输出流的函数或循环中使用。 本模块标准化了一个快速、高效利用内存的核心工具集，这些工具本身或组合都很有用。它们一起形成了“迭代器代数”，这使得在纯Python中有可能创建简洁又高效的专用工具。 嵌套循环像里程表那样循环变动，每次迭代时将最右侧的元素向后迭代。这种模式形成了一种字典序，因此如果输入的可迭代对象是已排序的，笛卡尔积元组依次序发出。 输出迭代器中 2 元组的数量将比输入的数量少一个。 如果输入可迭代对象中少于两个值则它将为空。 当 ``n > 0`` 时，返回项个数为 ``(n+r-1)! / r! / (n-1)!``. 当 ``0 <= r <= n`` ，返回项个数为 ``n! / (n-r)!`` ；当 ``r > n`` ，返回项个数为0。 当 ``0 <= r <= n`` 时，返回项的个数是 ``n! / r! / (n-r)!``；当 ``r > n`` 时，返回项个数为0。 :func:`groupby` 操作类似于Unix中的 ``uniq``。当每次 *key* 函数产生的键值改变时，迭代器会分组或生成一个新组（这就是为什么通常需要使用同一个键值函数先对数据进行排序）。这种行为与SQL的GROUP BY操作不同，SQL的操作会忽略输入的顺序将相同键值的元素分在同组中。 组合元组是根据输入的 *iterable* 顺序以词典排序的形式发出的。 因此，如果输入的 *iterable* 是已排序的，则输出的元组将按排序后的顺序产生。 这些 itertools 例程的主要目的是教学。 各个例程显示了对单个工具的各种思维方式 — 例如，``chain.from_iterable`` 被关联到展平的概念。 这些例程还给出了有关这些工具的组合方式的想法 — 例如，``compress()`` 和 ``range()`` 应当如何一起工作。 这些例程还显示了 itertools 与 :mod:`operator` 和 :mod:`collections` 模块以及内置迭代工具如 ``map()``, ``filter()``, ``reversed()`` 和 ``enumerate()`` 相互配合的使用模式。 返回的组本身也是一个迭代器，它与 :func:`groupby` 共享底层的可迭代对象。因为源是共享的，当 :func:`groupby` 对象向后迭代时，前一个组将消失。因此如果稍后还需要返回结果，可保存为列表： *func* 参数有多种用法。 它可设为 :func:`min` 表示运行中的最小值，:func:`max` 表示运行中的最大值，或者 :func:`operator.mul` 表示运行中的积。 可以通过累积利息并应用付款额来构建摊销表: 这些工具及其内置对应物也能很好地配合 :mod:`operator` 模块中的快速函数来使用。 例如，乘法运算符可以被映射到两个向量之间执行高效的点积: ``sum(starmap(operator.mul, zip(vec1, vec2, strict=True)))``。 该函数大致相当于下面的代码，只不过实际实现方案不会在内存中创建中间结果。 该迭代工具可能需要相当大的辅助存储空间（这取决于要保存多少临时数据）。通常，如果一个迭代器在另一个迭代器开始之前就要使用大部份或全部数据，使用 :func:`list` 会比 :func:`tee` 更快。 本模块实现一系列 :term:`iterator` ，这些迭代器受到APL，Haskell和SML的启发。为了适用于Python，它们都被重新写过。 本节将展示如何使用现有的 itertools 作为基础构件来创建扩展的工具集。 要计算可迭代对象自身的笛卡尔积，将可选参数 *repeat* 设定为要重复的次数。例如，``product(A, repeat=4)`` 和 ``product(A, A, A, A)`` 是一样的。 与常规的切片不同，:func:`islice` 不支持 *start*, *stop* 或 *step* 为负值。 可被用来从内部结构已被展平的数据中提取相关字段（例如，一个多行报告可以每三行列出一个名称字段）。 通常，输出的元素数量与输入的可迭代对象是一致的。 但是，如果提供了关键字参数 *initial*，则累加会以 *initial* 值开始，这样输出就比输入的可迭代对象多一个元素。 当对浮点数计数时，替换为乘法代码有时精度会更好，例如： ``(start + step * i for i in count())`` 。 ``AA AB AC AD BA BB BC BD CA CB CC CD DA DB DC DD`` ``AA AB AC AD BB BC BD CC CD DD`` ``AB AC AD BA BC BD CA CB CD DA DB DC`` ``AB AC AD BC BD CD`` ``accumulate([1,2,3,4,5]) --> 1 3 6 10 15`` ``batched('ABCDEFG', n=3) --> ABC DEF G`` ``chain('ABC', 'DEF') --> A B C D E F`` ``chain.from_iterable(['ABC', 'DEF']) --> A B C D E F`` ``combinations('ABCD', 2)`` ``combinations_with_replacement('ABCD', 2)`` ``compress('ABCDEF', [1,0,1,0,1,1]) --> A C E F`` ``count(10) --> 10 11 12 13 14 ...`` ``cycle('ABCD') --> A B C D A B C D ...`` ``dropwhile(lambda x: x<5, [1,4,6,4,1]) --> 6 4 1`` ``filterfalse(lambda x: x%2, range(10)) --> 0 2 4 6 8`` ``islice('ABCDEFG', 2, None) --> C D E F G`` ``pairwise('ABCDEFG') --> AB BC CD DE EF FG`` ``permutations('ABCD', 2)`` ``product('ABCD', repeat=2)`` ``repeat(10, 3) --> 10 10 10`` ``starmap(pow, [(2,5), (3,2), (10,3)]) --> 32 9 1000`` ``takewhile(lambda x: x<5, [1,4,6,4,1]) --> 1 4`` ``zip_longest('ABCD', 'xy', fillvalue='-') --> Ax By C- D-`` 笛卡尔积，相当于嵌套的for循环 data, selectors elem [,n] elem, elem, elem, ... 重复无限次或n次 seq[start:stop:step]中的元素 seq中pred(x)为假值的元素，x是seq中的元素。 func(\*seq[0]), func(\*seq[1]), ... func, seq it, n it1, it2, ... itn 将一个迭代器拆分为n个迭代器 iterable -- 可迭代对象 iterable[, key] p p [,func] p, n p, q, ... p, q, ... [repeat=1] p, r p0, p0+p1, p0+p1+p2, ... p0, p1, ... plast, p0, p1, ... p0, p1, ... plast, q0, q1, ... p[, r] pred, seq 长度r元组，所有可能的排列，无重复元素 长度r元组，有序，无重复元素 长度r元组，有序，元素可重复 seq, [start,] stop [, step] seq[0], seq[1], ..., 直到pred真值测试失败 seq[n], seq[n+1], ... 从pred首次真值测试失败开始 start, [step] start, start+step, start+2*step, ... 根据key(v)值分组的迭代器 