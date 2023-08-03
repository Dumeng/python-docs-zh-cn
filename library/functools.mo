Þ    [      ô              Ì  +   Í  ~   ù     x  o     °    C   ²  p  ö  N   g
     ¶
  %  >     d  !   ~  +      «  Ì    x  f    4   w  8   ¬  Ò   å  à   ¸  0     Ú   Ê  	   ¥  }   ¯     -  K   ;  Ï     b   W  +  º  ¼   æ  r   £  4       K    â  ¥     >   ¨  ¡   ç  R    H  Ü  ´   %!  _  Ú!  i   :#  ó   ¤#     $  U   °$  x   %  {   %  B  û%  Å  >'  O  )  q   T*  C   Æ*  º   
+  <   Å+  É   ,     Ì,  ´   e-  |   .  r   .     
/  b   ©/  W   0     d0  I  å0  Î   /2  Ì   þ2     Ë3  è   d4    M5  ñ   P6  T   B7  ý   7    8  s   9  È   :  ê   ×:     Â;  ï   S<  _   C=  ]   £=  )  >    +?  ¸  ®@  C  gC  @  «D  P   ìE  2  =F  t  pG  ²   åH  J  I  ½  ãJ  )   ¡L     ËL     VM  k   nM  £  ÚM  B   ~O  h  ÁO  ?   *Q     jQ    òQ     S  #   S  %   ?S    eS  z  ìT  A  gV  &   ©X  *   ÐX  È   ûX  Ê   ÄY  '   Z  ·   ·Z     o[  e   x[  	   Þ[  K   è[  ¥   4\  T   Ú\    /]  ¼   J^  z   _  "  _  o   ¥`    a     %b  :   ªb     åb  %  zc  P   d     ñe  T  f  U   ãg  Ò   9h     i  Z   i  p   zi  q   ëi    ]j  ª  fk  '  m  m   9n  8   §n     àn  -   zo  «   ¨o     Tp     Üp  u   wq  b   íq  ¢   Pr  [   ór  E   Os  c   s    ùs  ¾   þt  ¨   ½u     fv  Þ   ùv  ã   Øw  â   ¼x  I   y  Õ   éy  Õ   ¿z  `   {  ¹   ö{  ç   °|  u   }  Ý   ~  X   ì~  X   E  7    h  Ö  .  ?  =  n  >  ¬  J   ë    6  L  Q        4  ?   **Source code:** :source:`Lib/functools.py` *func* must be a :term:`descriptor` or a callable (objects which are both, like normal functions, are handled as descriptors). :class:`partial` Objects :class:`partial` objects are callable objects created by :func:`partial`. They have three read-only attributes: :class:`partial` objects are like :class:`function` objects in that they are callable, weak referencable, and can have attributes.  There are some important differences.  For instance, the :attr:`~definition.__name__` and :attr:`__doc__` attributes are not created automatically.  Also, :class:`partial` objects defined in classes behave like static methods and do not transform into bound methods during instance attribute look-up. :data:`types.UnionType` and :data:`typing.Union` can also be used:: :func:`update_wrapper` may be used with callables other than functions. Any attributes named in *assigned* or *updated* that are missing from the object being wrapped are ignored (i.e. this function will not attempt to set them on the wrapper function). :exc:`AttributeError` is still raised if the wrapper function itself is missing any attributes named in *updated*. :mod:`functools` --- Higher-order functions and operations on callable objects A callable object or function.  Calls to the :class:`partial` object will be forwarded to :attr:`func` with new arguments and keywords. A comparison function is any callable that accepts two arguments, compares them, and returns a negative number for less-than, zero for equality, or a positive number for greater-than.  A key function is a callable that accepts one argument and returns another value to be used as the sort key. Added the *typed* option. Added the *user_function* option. Added the function :func:`cache_parameters` Also, this decorator requires that the ``__dict__`` attribute on each instance be a mutable mapping. This means it will not work with some types, such as metaclasses (since the ``__dict__`` attributes on type instances are read-only proxies for the class namespace), and those that specify ``__slots__`` without including ``__dict__`` as one of the defined slots (as such classes don't provide a ``__dict__`` attribute at all). An `LRU (least recently used) cache <https://en.wikipedia.org/wiki/Cache_replacement_policies#Least_recently_used_(LRU)>`_ works best when the most recent calls are the best predictors of upcoming calls (for example, the most popular articles on a news server tend to change each day).  The cache's size limit assures that the cache does not grow without bound on long-running processes such as web servers. Apply *function* of two arguments cumulatively to the items of *iterable*, from left to right, so as to reduce the iterable to a single value.  For example, ``reduce(lambda x, y: x+y, [1, 2, 3, 4, 5])`` calculates ``((((1+2)+3)+4)+5)``. The left argument, *x*, is the accumulated value and the right argument, *y*, is the update value from the *iterable*.  If the optional *initializer* is present, it is placed before the items of the iterable in the calculation, and serves as a default when the iterable is empty.  If *initializer* is not given and *iterable* contains only one item, the first item is returned. Automatic addition of the ``__wrapped__`` attribute. Copying of the ``__annotations__`` attribute by default. Decorator to wrap a function with a memoizing callable that saves up to the *maxsize* most recent calls.  It can save time when an expensive or I/O bound function is periodically called with the same arguments. Distinct argument patterns may be considered to be distinct calls with separate cache entries.  For example, ``f(a=1, b=2)`` and ``f(b=2, a=1)`` differ in their keyword argument order and may have two separate cache entries. Example of an LRU cache for static web content:: Example of efficiently computing `Fibonacci numbers <https://en.wikipedia.org/wiki/Fibonacci_number>`_ using a cache to implement a `dynamic programming <https://en.wikipedia.org/wiki/Dynamic_programming>`_ technique:: Example:: For code which doesn't use type annotations, the appropriate type argument can be passed explicitly to the decorator itself:: For example:: For sorting examples and a brief sorting tutorial, see :ref:`sortinghowto`. Given a class defining one or more rich comparison ordering methods, this class decorator supplies the rest.  This simplifies the effort involved in specifying all of the possible rich comparison operations: If *maxsize* is set to ``None``, the LRU feature is disabled and the cache can grow without bound. If *typed* is set to true, function arguments of different types will be cached separately.  If *typed* is false, the implementation will usually regard them as equivalent calls and only cache a single result. (Some types such as *str* and *int* may be cached separately even when *typed* is false.) If *user_function* is specified, it must be a callable. This allows the *lru_cache* decorator to be applied directly to a user function, leaving the *maxsize* at its default value of 128:: If a method is cached, the ``self`` instance argument is included in the cache.  See :ref:`faq-cache-method-calls` If a mutable mapping is not available or if space-efficient key sharing is desired, an effect similar to :func:`cached_property` can also be achieved by stacking :func:`property` on top of :func:`lru_cache`. See :ref:`faq-cache-method-calls` for more details on how this differs from :func:`cached_property`. If an implementation is registered to an :term:`abstract base class`, virtual subclasses of the base class will be dispatched to that implementation:: In general, the LRU cache should only be used when you want to reuse previously computed values.  Accordingly, it doesn't make sense to cache functions with side-effects, functions that need to create distinct mutable objects on each call, or impure functions such as time() or random(). It is possible for the wrapped function to be called more than once if another thread makes an additional call before the initial call has been completed and cached. Missing attributes no longer trigger an :exc:`AttributeError`. Note, this decorator interferes with the operation of :pep:`412` key-sharing dictionaries.  This means that instance dictionaries can take more space than usual. Note, type specificity applies only to the function's immediate arguments rather than their contents.  The scalar arguments, ``Decimal(42)`` and ``Fraction(42)`` are be treated as distinct calls with distinct results. In contrast, the tuple arguments ``('answer', Decimal(42))`` and ``('answer', Fraction(42))`` are treated as equivalent. Prior to Python 3.12, ``cached_property`` included an undocumented lock to ensure that in multi-threaded usage the getter function was guaranteed to run only once per instance. However, the lock was per-property, not per-instance, which could result in unacceptably high lock contention. In Python 3.12+ this locking is removed. Return a new :class:`partialmethod` descriptor which behaves like :class:`partial` except that it is designed to be used as a method definition rather than being directly callable. Return a new :ref:`partial object<partial-objects>` which when called will behave like *func* called with the positional arguments *args* and keyword arguments *keywords*. If more arguments are supplied to the call, they are appended to *args*. If additional keyword arguments are supplied, they extend and override *keywords*. Roughly equivalent to:: Returning NotImplemented from the underlying comparison function for unrecognised types is now supported. Returns the same as ``lru_cache(maxsize=None)``, creating a thin wrapper around a dictionary lookup for the function arguments.  Because it never needs to evict old values, this is smaller and faster than :func:`lru_cache()` with a size limit. Roughly equivalent to:: See :func:`itertools.accumulate` for an iterator that yields all intermediate values. Simple lightweight unbounded function cache.  Sometimes called `"memoize" <https://en.wikipedia.org/wiki/Memoization>`_. Since a dictionary is used to cache results, the positional and keyword arguments to the function must be :term:`hashable`. The *cached_property* decorator only runs on lookups and only when an attribute of the same name doesn't exist.  When it does run, the *cached_property* writes to the attribute with the same name. Subsequent attribute reads and writes take precedence over the *cached_property* method and it works like a normal attribute. The *cached_property* does not prevent a possible race condition in multi-threaded usage. The getter function could run more than once on the same instance, with the latest run setting the cached value. If the cached property is idempotent or otherwise not harmful to run more than once on an instance, this is fine. If synchronization is needed, implement the necessary locking inside the decorated getter function or around the cached property access. The :func:`partial` is used for partial function application which "freezes" some portion of a function's arguments and/or keywords resulting in a new object with a simplified signature.  For example, :func:`partial` can be used to create a callable that behaves like the :func:`int` function where the *base* argument defaults to two: The :func:`register` attribute now supports :data:`types.UnionType` and :data:`typing.Union` as type annotations. The :func:`register` attribute now supports using type annotations. The :func:`register` attribute returns the undecorated function. This enables decorator stacking, :mod:`pickling<pickle>`, and the creation of unit tests for each variant independently:: The :mod:`functools` module defines the following functions: The :mod:`functools` module is for higher-order functions: functions that act on or return other functions. In general, any callable object can be treated as a function for the purposes of this module. The ``__wrapped__`` attribute now always refers to the wrapped function, even if that function defined a ``__wrapped__`` attribute. (see :issue:`17482`) The cache is threadsafe so that the wrapped function can be used in multiple threads.  This means that the underlying data structure will remain coherent during concurrent updates. The cache keeps references to the arguments and return values until they age out of the cache or until the cache is cleared. The cached value can be cleared by deleting the attribute.  This allows the *cached_property* method to run again. The class must define one of :meth:`__lt__`, :meth:`__le__`, :meth:`__gt__`, or :meth:`__ge__`. In addition, the class should supply an :meth:`__eq__` method. The decorator also provides a :func:`cache_clear` function for clearing or invalidating the cache. The keyword arguments that will be supplied when the :class:`partial` object is called. The leftmost positional arguments that will be prepended to the positional arguments provided to a :class:`partial` object call. The main intended use for this function is in :term:`decorator` functions which wrap the decorated function and return the wrapper. If the wrapper function is not updated, the metadata of the returned function will reflect the wrapper definition rather than the original function definition, which is typically less than helpful. The mechanics of :func:`cached_property` are somewhat different from :func:`property`.  A regular property blocks attribute writes unless a setter is defined. In contrast, a *cached_property* allows writes. The original underlying function is accessible through the :attr:`__wrapped__` attribute.  This is useful for introspection, for bypassing the cache, or for rewrapping the function with a different cache. The same pattern can be used for other similar decorators: :func:`@staticmethod<staticmethod>`, :func:`@abstractmethod<abc.abstractmethod>`, and others. The wrapped function is instrumented with a :func:`cache_parameters` function that returns a new :class:`dict` showing the values for *maxsize* and *typed*.  This is for information purposes only.  Mutating the values has no effect. This decorator makes no attempt to override methods that have been declared in the class *or its superclasses*. Meaning that if a superclass defines a comparison operator, *total_ordering* will not implement it again, even if the original method is abstract. This is a convenience function for invoking :func:`update_wrapper` as a function decorator when defining a wrapper function.  It is equivalent to ``partial(update_wrapper, wrapped=wrapped, assigned=assigned, updated=updated)``. For example:: To access all registered implementations, use the read-only ``registry`` attribute:: To add overloaded implementations to the function, use the :func:`register` attribute of the generic function, which can be used as a decorator.  For functions annotated with types, the decorator will infer the type of the first argument automatically:: To allow access to the original function for introspection and other purposes (e.g. bypassing a caching decorator such as :func:`lru_cache`), this function automatically adds a ``__wrapped__`` attribute to the wrapper that refers to the function being wrapped. To check which implementation the generic function will choose for a given type, use the ``dispatch()`` attribute:: To define a generic function, decorate it with the ``@singledispatch`` decorator. When defining a function using ``@singledispatch``, note that the dispatch happens on the type of the first argument:: To define a generic method, decorate it with the ``@singledispatchmethod`` decorator. When defining a function using ``@singledispatchmethod``, note that the dispatch happens on the type of the first non-*self* or non-*cls* argument:: To enable registering :term:`lambdas<lambda>` and pre-existing functions, the :func:`register` attribute can also be used in a functional form:: To help measure the effectiveness of the cache and tune the *maxsize* parameter, the wrapped function is instrumented with a :func:`cache_info` function that returns a :term:`named tuple` showing *hits*, *misses*, *maxsize* and *currsize*. Transform a function into a :term:`single-dispatch <single dispatch>` :term:`generic function`. Transform a method into a :term:`single-dispatch <single dispatch>` :term:`generic function`. Transform a method of a class into a property whose value is computed once and then cached as a normal attribute for the life of the instance. Similar to :func:`property`, with the addition of caching. Useful for expensive computed properties of instances that are otherwise effectively immutable. Transform an old-style comparison function to a :term:`key function`.  Used with tools that accept key functions (such as :func:`sorted`, :func:`min`, :func:`max`, :func:`heapq.nlargest`, :func:`heapq.nsmallest`, :func:`itertools.groupby`).  This function is primarily used as a transition tool for programs being converted from Python 2 which supported the use of comparison functions. Update a *wrapper* function to look like the *wrapped* function. The optional arguments are tuples to specify which attributes of the original function are assigned directly to the matching attributes on the wrapper function and which attributes of the wrapper function are updated with the corresponding attributes from the original function. The default values for these arguments are the module level constants ``WRAPPER_ASSIGNMENTS`` (which assigns to the wrapper function's ``__module__``, ``__name__``, ``__qualname__``, ``__annotations__`` and ``__doc__``, the documentation string) and ``WRAPPER_UPDATES`` (which updates the wrapper function's ``__dict__``, i.e. the instance dictionary). When *func* is a descriptor (such as a normal Python function, :func:`classmethod`, :func:`staticmethod`, :func:`abstractmethod` or another instance of :class:`partialmethod`), calls to ``__get__`` are delegated to the underlying descriptor, and an appropriate :ref:`partial object<partial-objects>` returned as the result. When *func* is a non-descriptor callable, an appropriate bound method is created dynamically. This behaves like a normal Python function when used as a method: the *self* argument will be inserted as the first positional argument, even before the *args* and *keywords* supplied to the :class:`partialmethod` constructor. When called, the generic function dispatches on the type of the first argument:: Where there is no registered implementation for a specific type, its method resolution order is used to find a more generic implementation. The original function decorated with ``@singledispatch`` is registered for the base :class:`object` type, which means it is used if no better implementation is found. While this decorator makes it easy to create well behaved totally ordered types, it *does* come at the cost of slower execution and more complex stack traces for the derived comparison methods. If performance benchmarking indicates this is a bottleneck for a given application, implementing all six rich comparison methods instead is likely to provide an easy speed boost. Without the use of this decorator factory, the name of the example function would have been ``'wrapper'``, and the docstring of the original :func:`example` would have been lost. ``@singledispatchmethod`` supports nesting with other decorators such as :func:`@classmethod<classmethod>`. Note that to allow for ``dispatcher.register``, ``singledispatchmethod`` must be the *outer most* decorator. Here is the ``Negator`` class with the ``neg`` methods bound to the class, rather than an instance of the class:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-09 14:13+0000
PO-Revision-Date: 2021-06-28 01:06+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **æºä»£ç :** :source:`Lib/functools.py` *func* å¿é¡»æ¯ä¸ä¸ª :term:`descriptor` æå¯è°ç¨å¯¹è±¡ï¼åå±ä¸¤èçå¯¹è±¡ä¾å¦æ®éå½æ°ä¼è¢«å½ä½æè¿°å¨æ¥å¤çï¼ã :class:`partial` å¯¹è±¡ :class:`partial` å¯¹è±¡æ¯ç± :func:`partial` åå»ºçå¯è°ç¨å¯¹è±¡ã å®ä»¬å·æä¸ä¸ªåªè¯»å±æ§ï¼ :class:`partial` å¯¹è±¡ä¸ :class:`function` å¯¹è±¡çç±»ä¼¼ä¹å¤å¨äºå®ä»¬é½æ¯å¯è°ç¨ãå¯å¼±å¼ç¨çå¯¹è±¡å¹¶å¯æ¥æå±æ§ã ä½ä¸¤èä¹å­å¨ä¸äºéè¦çåºå«ã ä¾å¦åèä¸ä¼èªå¨åå»º :attr:`~definition.__name__` å :attr:`__doc__` å±æ§ã èä¸ï¼å¨ç±»ä¸­å®ä¹ç :class:`partial` å¯¹è±¡çè¡ä¸ºç±»ä¼¼äºéææ¹æ³ï¼å¹¶ä¸ä¸ä¼å¨å®ä¾å±æ§æ¥æ¾æé´è½¬æ¢ä¸ºç»å®æ¹æ³ã è¿å¯ä»¥ä½¿ç¨ :data:`types.UnionType` å :data:`typing.Union`:: :func:`update_wrapper` å¯ä»¥ä¸å½æ°ä¹å¤çå¯è°ç¨å¯¹è±¡ä¸åä½¿ç¨ã å¨ *assigned* æ *updated* ä¸­å½åçä»»ä½å±æ§å¦æä¸å­å¨äºè¢«åè£å¯¹è±¡åä¼è¢«å¿½ç¥ï¼å³è¯¥å½æ°å°ä¸ä¼å°è¯å¨åè£å¨å½æ°ä¸è®¾ç½®å®ä»¬ï¼ã å¦æåè£å¨å½æ°èªèº«ç¼ºå°å¨ *updated* ä¸­å½åçä»»ä½å±æ§åä»å°å¼å :exc:`AttributeError`ã :mod:`functools` --- é«é¶å½æ°åå¯è°ç¨å¯¹è±¡ä¸çæä½ ä¸ä¸ªå¯è°ç¨å¯¹è±¡æå½æ°ã å¯¹ :class:`partial` å¯¹è±¡çè°ç¨å°è¢«è½¬åç» :attr:`func` å¹¶éå¸¦æ°çåæ°åå³é®å­ã æ¯è¾å½æ°æ¯ä»»ä½æ¥åä¸¤ä¸ªåæ°ï¼å¯¹å®ä»¬è¿è¡æ¯è¾ï¼å¹¶å¨ç»æä¸ºå°äºæ¶è¿åä¸ä¸ªè´æ°ï¼ç¸ç­æ¶è¿åé¶ï¼å¤§äºæ¶è¿åä¸ä¸ªæ­£æ°çå¯è°ç¨å¯¹è±¡ã é®å½æ°æ¯æ¥åä¸ä¸ªåæ°å¹¶è¿åå¦ä¸ä¸ªç¨ä½æåºé®çå¼çå¯è°ç¨å¯¹è±¡ã æ·»å  *typed* éé¡¹ã æ·»å äº *user_function* éé¡¹ã æ°å¢å½æ° :func:`cache_parameters` èä¸ï¼è¿ä¸ªè£é¥°å¨è¦æ±æ¯ä¸ªå®ä¾ä¸ç ``__dict__`` æ¯å¯åçæ å°ã è¿æå³çå®å°ä¸éç¨äºæäºç±»åï¼ä¾å¦åç±»ï¼å ä¸ºç±»åå®ä¾ä¸ç ``__dict__`` å±æ§æ¯ç±»å½åç©ºé´çåªè¯»ä»£çï¼ï¼ä»¥åé£äºæå®äº ``__slots__`` ä½æªåæ¬ ``__dict__`` ä½ä¸ºæå®ä¹çç©ºä½ä¹ä¸çç±»ï¼å ä¸ºè¿æ ·çç±»æ ¹æ¬æ²¡ææä¾ ``__dict__`` å±æ§ï¼ã `LRUï¼æä¹æªä½¿ç¨ç®æ³ï¼ç¼å­ <https://en.wikipedia.org/wiki/Cache_replacement_policies#Least_recently_used_(LRU)>`_ å¨æè¿çè°ç¨æ¯å³å°å°æ¥çè°ç¨çæä½³é¢æµå¼æ¶æ§è½æå¥½ï¼ä¾å¦ï¼æ°é»æå¡å¨ä¸æç­é¨æç« å¾åäºæ¯å¤©æ´æ¹ï¼ã ç¼å­çå¤§å°éå¶å¯ç¡®ä¿ç¼å­ä¸ä¼å¨é¿æè¿è¡è¿ç¨å¦ç½ç«æå¡å¨ä¸æ éå¶å°å¢é¿ã å°ä¸¤ä¸ªåæ°ç *function* ä»å·¦è³å³ç§¯ç´¯å°åºç¨å° *iterable* çæ¡ç®ï¼ä»¥ä¾¿å°è¯¥å¯è¿­ä»£å¯¹è±¡ç¼©åä¸ºåä¸çå¼ã ä¾å¦ï¼``reduce(lambda x, y: x+y, [1, 2, 3, 4, 5])`` æ¯è®¡ç® ``((((1+2)+3)+4)+5)`` çå¼ã å·¦è¾¹çåæ° *x* æ¯ç§¯ç´¯å¼èå³è¾¹çåæ° *y* åæ¯æ¥èª *iterable* çæ´æ°å¼ã å¦æå­å¨å¯éé¡¹ *initializer*ï¼å®ä¼è¢«æ¾å¨åä¸è®¡ç®çå¯è¿­ä»£å¯¹è±¡çæ¡ç®ä¹åï¼å¹¶å¨å¯è¿­ä»£å¯¹è±¡ä¸ºç©ºæ¶ä½ä¸ºé»è®¤å¼ã å¦ææ²¡æç»åº *initializer* å¹¶ä¸ *iterable* ä»åå«ä¸ä¸ªæ¡ç®ï¼åå°è¿åç¬¬ä¸é¡¹ã èªå¨æ·»å  ``__wrapped__`` å±æ§ã é»è®¤æ·è´ ``__annotations__`` å±æ§ã ä¸ä¸ªä¸ºå½æ°æä¾ç¼å­åè½çè£é¥°å¨ï¼ç¼å­ *maxsize* ç»ä¼ å¥åæ°ï¼å¨ä¸æ¬¡ä»¥ç¸ååæ°è°ç¨æ¶ç´æ¥è¿åä¸ä¸æ¬¡çç»æãç¨ä»¥èçº¦é«å¼éæI/Oå½æ°çè°ç¨æ¶é´ã ä¸åçåæ°æ¨¡å¼å¯è½ä¼è¢«è§ä¸ºå·æåç¬ç¼å­é¡¹çä¸åè°ç¨ã ä¾å¦ï¼``f(a=1, b=2)`` å ``f(b=2, a=1)`` å å¶å³é®å­åæ°é¡ºåºä¸åèå¯è½ä¼å·æä¸¤ä¸ªåç¬çç¼å­é¡¹ã éæ Web åå®¹ç LRU ç¼å­ç¤ºä¾:: ä»¥ä¸æ¯ä½¿ç¨ç¼å­éè¿ `å¨æè§å <https://zh.wikipedia.org/wiki/å¨æè§å>`_  è®¡ç® `ææ³¢é£å¥æ°å <https://zh.wikipedia.org/wiki/ææ³¢é£å¥æ°å>`_  çä¾å­ã ç¤ºä¾:: å¯¹äºä¸ä½¿ç¨ç±»åæ æ³¨çä»£ç ï¼å¯ä»¥å°éå½çç±»ååæ°æ¾å¼å°ä¼ ç»è£é¥°å¨æ¬èº«:: ä¾å¦ï¼ æå³æåºç¤ºä¾åç®è¦æåºæç¨ï¼è¯·åé :ref:`sortinghowto` ã ç»å®ä¸ä¸ªå£°æä¸ä¸ªæå¤ä¸ªå¨æ¯è¾æåºæ¹æ³çç±»ï¼è¿ä¸ªç±»è£é¥°å¨å®ç°å©ä½çæ¹æ³ãè¿åè½»äºæå®ææå¯è½çå¨æ¯è¾æä½çå·¥ä½ã å¦æ *maxsize* è®¾ä¸º ``None``ï¼LRU ç¹æ§å°è¢«ç¦ç¨ä¸ç¼å­å¯æ éå¢é¿ã å¦æ *typed* è¢«è®¾ç½®ä¸º true ï¼ä¸åç±»åçå½æ°åæ°å°è¢«åå«ç¼å­ã å¦æ *typed* ä¸º false ï¼å®ç°éå¸¸ä¼å°å®ä»¬è§ä¸ºç­ä»·çè°ç¨ï¼åªç¼å­ä¸ä¸ªç»æã(æäºç±»åï¼å¦ *str* å *int* ï¼å³ä½¿ *typed* ä¸º false ï¼ä¹å¯è½è¢«åå¼ç¼å­ï¼ã å¦ææå®äº *user_function*ï¼å®å¿é¡»æ¯ä¸ä¸ªå¯è°ç¨å¯¹è±¡ã è¿åè®¸ *lru_cache* è£é¥°å¨è¢«ç´æ¥åºç¨äºä¸ä¸ªç¨æ·èªå®ä¹å½æ°ï¼è®© *maxsize* ä¿æå¶é»è®¤å¼ 128:: å¦æä¸ä¸ªæ¹æ³è¢«ç¼å­ï¼å ``self`` å®ä¾åæ°ä¼è¢«åæ¬å¨ç¼å­ä¸­ã è¯·åé :ref:`faq-cache-method-calls` å¦æå¯åçæ å°ä¸å¯ç¨æèå¦ææ³è¦èçç©ºé´çé®å±äº«ï¼å¯ä»¥éè¿å¨ :func:`lru_cache` ä¸å å  :func:`property` æ¥å®ç°ç±»ä¼¼ :func:`cached_property` çææã è¯·åé :ref:`faq-cache-method-calls` äºè§£è¿ä¸ :func:`cached_property` ä¹é´åºå«çè¯¦æã å¦æä¸ä¸ªå®ç°è¢«æ³¨åå° :term:`abstract base class`ï¼ååºç±»çèæå­ç±»å°è¢«åéå°è¯¥å®ç°:: ä¸è¬æ¥è¯´ï¼LRUç¼å­åªå¨å½ä½ æ³è¦éç¨ä¹åè®¡ç®çç»ææ¶ä½¿ç¨ãå æ­¤ï¼ç¨å®ç¼å­å·æå¯ä½ç¨çå½æ°ãéè¦å¨æ¯æ¬¡è°ç¨æ¶åå»ºä¸åãæåçå¯¹è±¡çå½æ°æèè¯¸å¦timeï¼ï¼ærandomï¼ï¼ä¹ç±»çä¸çº¯å½æ°æ¯æ²¡ææä¹çã å¦æå¦ä¸ä¸ªçº¿ç¨å¨åå§è°ç¨å®æå¹¶è¢«ç¼å­ä¹åæ§è¡äºé¢å¤çè°ç¨åè¢«åè£çå½æ°å¯è½ä¼è¢«å¤æ¬¡è°ç¨ã ä¸å­å¨çå±æ§å°ä¸åè§¦å :exc:`AttributeError`ã æ³¨æï¼è¿ä¸ªè£é¥°å¨ä¼å½±å :pep:`412` é®å±äº«å­å¸çæä½ã è¿æå³çç¸åºçå­å¸å®ä¾å¯è½å ç¨æ¯éå¸¸æ¶æ´å¤çç©ºé´ã æ³¨æï¼ç±»åçç¹æ®æ§åªéç¨äºå½æ°çç´æ¥åæ°èä¸æ¯å®ä»¬çåå®¹ã æ éåæ° ``Decimal(42)`` å ``Fraction(42)`` è¢«è§ä¸ºå·æä¸åç»æçä¸åè°ç¨ãç¸æ¯ä¹ä¸ï¼åç»åæ° ``('answer', Decimal(42))`` å ``('answer', Fraction(42))`` è¢«è§ä¸ºç­åçã å¨ Python 3.12 ä¹åï¼``cached_property`` åæ¬äºä¸ä¸ªæªåå¥ææ¡£çéç¨æ¥ç¡®ä¿å¨å¤çº¿ç¨ä½¿ç¨ä¸­ getter å½æ°å¯¹äºæ¯ä¸ªå®ä¾ä¿è¯åªè¿è¡ä¸æ¬¡ã ä½æ¯ï¼è¿ä¸ªéæ¯éå¯¹ç¹å¾å±æ§çï¼ä¸æ¯éå¯¹å®ä¾çï¼è¿å¯è½å¯¼è´ä¸å¯æ¥åçé«å¼ºåº¦éäºç¨ã å¨ Python 3.12+ ä¸­è¿ä¸ªéå·²è¢«ç§»é¤ã è¿åä¸ä¸ªæ°ç :class:`partialmethod` æè¿°å¨ï¼å¶è¡ä¸ºç±»ä¼¼ :class:`partial` ä½å®è¢«è®¾è®¡ç¨ä½æ¹æ³å®ä¹èéç´æ¥ç¨ä½å¯è°ç¨å¯¹è±¡ã è¿åä¸ä¸ªæ°ç :ref:`é¨åå¯¹è±¡<partial-objects>`ï¼å½è¢«è°ç¨æ¶å¶è¡ä¸ºç±»ä¼¼äº *func* éå¸¦ä½ç½®åæ° *args* åå³é®å­åæ° *keywords* è¢«è°ç¨ã å¦æä¸ºè°ç¨æä¾äºæ´å¤çåæ°ï¼å®ä»¬ä¼è¢«éå å° *args*ã å¦ææä¾äºé¢å¤çå³é®å­åæ°ï¼å®ä»¬ä¼æ©å±å¹¶éè½½ *keywords*ã å¤§è´ç­ä»·äº:: ç°å¨å·²æ¯æä»æªè¯å«ç±»åçä¸å±æ¯è¾å½æ°è¿å NotImplemented å¼å¸¸ã è¿åå¼ä¸ ``lru_cache(maxsize=None)`` ç¸åï¼åå»ºä¸ä¸ªæ¥æ¾å½æ°åæ°çå­å¸çç®ååè£å¨ã å ä¸ºå®ä¸éè¦ç§»åºæ§å¼ï¼æä»¥æ¯å¸¦æå¤§å°éå¶ç :func:`lru_cache()` æ´å°æ´å¿«ã å¤§è´ç¸å½äºï¼ è¯·åé :func:`itertools.accumulate` äºè§£æå³å¯äº§çææä¸­é´å¼çè¿­ä»£å¨ã ç®åè½»éçº§æªç»å®å½æ°ç¼å­ã ææ¶ç§°ä¸º `"memoize" <https://en.wikipedia.org/wiki/Memoization>`_ã ç±äºä½¿ç¨å­å¸æ¥ç¼å­ç»æï¼å æ­¤ä¼ ç»è¯¥å½æ°çä½ç½®åå³é®å­åæ°å¿é¡»ä¸º :term:`hashable`ã *cached_property* è£é¥°å¨ä»å¨æ§è¡æ¥æ¾ä¸ä¸å­å¨ååå±æ§æ¶æä¼è¿è¡ã å½è¿è¡æ¶ï¼*cached_property* ä¼åå¥ååçå±æ§ã åç»­çå±æ§è¯»åååå¥æä½ä¼ä¼åäº *cached_property* æ¹æ³ï¼å¶è¡ä¸ºå°±åæ®éçå±æ§ä¸æ ·ã *cached_property* ä¸è½é²æ­¢å¨å¤çº¿ç¨ä½¿ç¨ä¸­å¯è½åºç°çç«äºæ¡ä»¶ã getter å½æ°å¯ä»¥å¨åä¸å®ä¾ä¸å¤æ¬¡è¿è¡ï¼æåä¸æ¬¡è¿è¡å°è®¾ç½®ç¼å­å¼ã å¦æç¼å­çç¹å¾å±æ§æ¯å¹ç­çæèå¯¹äºå¨åä¸å®ä¾ä¸å¤æ¬¡è¿è¡æ¯æ å®³çï¼é£å°±æ²¡æé®é¢ã å¦æéè¦è¿è¡åæ­¥ï¼è¯·å¨è¢«è£é¥°ç getter å½æ°åé¨æå¨ç¼å­çç¹å¾å±æ§è®¿é®å¤é¨å®ç°å¿è¦çéå®æä½ã :func:`partial` ä¼è¢«âå»ç»äºâä¸é¨åå½æ°åæ°å/æå³é®å­çé¨åå½æ°åºç¨æä½¿ç¨ï¼ä»èå¾å°ä¸ä¸ªå·æç®åç­¾åçæ°å¯¹è±¡ã ä¾å¦ï¼:func:`partial` å¯ç¨æ¥åå»ºä¸ä¸ªè¡ä¸ºç±»ä¼¼äº :func:`int` å½æ°çå¯è°ç¨å¯¹è±¡ï¼å¶ä¸­ *base* åæ°é»è®¤ä¸ºäºï¼ :func:`register` å±æ§ç°å¨æ¯æå° :data:`types.UnionType` å :data:`typing.Union` ä½ä¸ºç±»åæ æ³¨ã :func:`register` å±æ§ç°å¨æ¯æä½¿ç¨ç±»åæ æ³¨ã :func:`register` å±æ§ä¼è¿åæªè¢«è£é¥°çå½æ°ã è¿å°å¯ç¨è£é¥°å¨æ ã:mod:`å°å­ <pickle>`ï¼å¹¶ä¸ºæ¯ä¸ªåéåç¬åå»ºååæµè¯:: :mod:`functools` æ¨¡åå®ä¹äºä»¥ä¸å½æ°: :mod:`functools` æ¨¡ååºç¨äºé«é¶å½æ°ï¼å³åæ°æï¼åï¼è¿åå¼ä¸ºå¶ä»å½æ°çå½æ°ã éå¸¸æ¥è¯´ï¼æ­¤æ¨¡åçåè½éç¨äºææå¯è°ç¨å¯¹è±¡ã ``__wrapped__`` å±æ§ç°å¨æ»æ¯æåè¢«åè£çå½æ°ï¼å³ä½¿è¯¥å½æ°å®ä¹äº ``__wrapped__`` å±æ§ã (åè§ :issue:`17482`) è¯¥ç¼å­æ¯çº¿ç¨å®å¨çå æ­¤è¢«åè£çå½æ°å¯å¨å¤çº¿ç¨ä¸­ä½¿ç¨ã è¿æå³çä¸å±çæ°æ®ç»æå°å¨å¹¶åæ´æ°æé´ä¿æä¸è´æ§ã ç¼å­ä¼ä¿æå¯¹åæ°çå¼ç¨å¹¶è¿åå¼ï¼ç´å°å®ä»¬ç»æçå½æéåºç¼å­æèç´å°ç¼å­è¢«æ¸ç©ºã ç¼å­çå¼å¯éè¿å é¤è¯¥å±æ§æ¥æ¸ç©ºã è¿åè®¸ *cached_property* æ¹æ³åæ¬¡è¿è¡ã æ­¤ç±»å¿é¡»åå«ä»¥ä¸æ¹æ³ä¹ä¸ï¼:meth:`__lt__` ã:meth:`__le__`ã:meth:`__gt__` æ :meth:`__ge__`ãå¦å¤ï¼æ­¤ç±»å¿é¡»æ¯æ :meth:`__eq__` æ¹æ³ã è¯¥è£é¥°å¨ä¹æä¾äºä¸ä¸ªç¨äºæ¸ç/ä½¿ç¼å­å¤±æçå½æ° :func:`cache_clear` ã å½è°ç¨ :class:`partial` å¯¹è±¡æ¶å°è¦æä¾çå³é®å­åæ°ã æå·¦è¾¹çä½ç½®åæ°å°æ¾ç½®å¨æä¾ç» :class:`partial` å¯¹è±¡è°ç¨çä½ç½®åæ°ä¹åã æ­¤å½æ°çä¸»è¦ç®çæ¯å¨ :term:`decorator` å½æ°ä¸­ç¨æ¥åè£è¢«è£é¥°çå½æ°å¹¶è¿ååè£å¨ã å¦æåè£å¨å½æ°æªè¢«æ´æ°ï¼åè¢«è¿åå½æ°çåæ°æ®å°åæ åè£å¨å®ä¹èä¸æ¯åå§å½æ°å®ä¹ï¼è¿éå¸¸æ²¡æä»ä¹ç¨å¤ã :func:`cached_property` çè®¾å®ä¸ :func:`property` ææä¸åã å¸¸è§ç property ä¼é»æ­¢å±æ§åå¥ï¼é¤éå®ä¹äº setterã ä¸ä¹ç¸åï¼*cached_property* ååè®¸åå¥ã åå§çæªç»è£é¥°çå½æ°å¯ä»¥éè¿ :attr:`__wrapped__` å±æ§è®¿é®ãå®å¯ä»¥ç¨äºæ£æ¥ãç»è¿ç¼å­ï¼æä½¿ç¨ä¸åçç¼å­åæ¬¡è£é¥°åå§å½æ°ã åæ ·çæ¨¡å¼ä¹å¯è¢«ç¨äºå¶ä»ç±»ä¼¼çè£é¥°å¨: :func:`@staticmethod<staticmethod>`, :func:`@abstractmethod<abc.abstractmethod>` ç­ç­ã è¢«åè£çå½æ°éæä¸ä¸ª :func:`cache_parameters` å½æ°ï¼è¯¥å½æ°è¿åä¸ä¸ªæ°ç :class:`dict` ç¨æ¥æ¾ç¤º *maxsize* å *typed* çå¼ã è¿åªæ¯åºäºæ¾ç¤ºä¿¡æ¯çç®çã æ¹åå¼æ²¡æä»»ä½ææã è¿ä¸ªè£é¥°å¨ä¸ä¼å°è¯éè½½ç±» *æå¶ä¸çº§ç±»* ä¸­å·²ç»è¢«å£°æçæ¹æ³ã è¿æå³çå¦ææä¸ªä¸çº§ç±»å®ä¹äºæ¯è¾è¿ç®ç¬¦ï¼å *total_ordering* å°ä¸ä¼åæ¬¡å®ç°å®ï¼å³ä½¿åæ¹æ³æ¯æ½è±¡æ¹æ³ã è¿æ¯ä¸ä¸ªä¾¿æ·å½æ°ï¼ç¨äºå¨å®ä¹åè£å¨å½æ°æ¶åèµ·è°ç¨ :func:`update_wrapper` ä½ä¸ºå½æ°è£é¥°å¨ã å®ç­ä»·äº ``partial(update_wrapper, wrapped=wrapped, assigned=assigned, updated=updated)``ã ä¾å¦:: è¦è®¿é®ææå·²æ³¨åå®ç°ï¼è¯·ä½¿ç¨åªè¯»ç ``registry`` å±æ§:: è¦å°éè½½çå®ç°æ·»å å°å½æ°ä¸­ï¼è¯·ä½¿ç¨æ³åå½æ°ç :func:`register` å±æ§ï¼å®å¯ä»¥è¢«ç¨ä½è£é¥°å¨ã å¯¹äºå¸¦æç±»åæ æ³¨çå½æ°ï¼è¯¥è£é¥°å¨å°èªå¨æ¨æ­ç¬¬ä¸ä¸ªåæ°çç±»å:: ä¸ºäºåè®¸åºäºåçåå¶ä»ç®çè®¿é®åå§å½æ°ï¼ä¾å¦ç»è¿ :func:`lru_cache` ä¹ç±»çç¼å­è£é¥°å¨ï¼ï¼æ­¤å½æ°ä¼èªå¨ä¸º wrapper æ·»å ä¸ä¸ªæåè¢«åè£å½æ°ç ``__wrapped__`` å±æ§ã è¦æ£æ¥æ³åå½æ°å°ä¸ºç»å®çç±»åéæ©åªä¸ªå®ç°ï¼è¯·ä½¿ç¨ ``dispatch()`` å±æ§:: è¦å®ä¹ä¸ä¸ªæ³åå½æ°ï¼ç¨è£é¥°å¨ ``@singledispatch`` æ¥è£é¥°å®ãå½ä½¿ç¨ ``@singledispatch`` å®ä¹ä¸ä¸ªå½æ°æ¶ï¼è¯·æ³¨æè°åº¦åçå¨ç¬¬ä¸ä¸ªåæ°çç±»åä¸:: è¦å®ä¹ä¸ä¸ªæ³åæ¹æ³ï¼è¯·ç¨ ``@singledispatchmethod`` è£é¥°å¨æ¥è£é¥°å®ã å½ä½¿ç¨ ``@singledispatchmethod`` å®ä¹ä¸ä¸ªå½æ°æ¶ï¼è¯·æ³¨æåéæä½å°éå¯¹ç¬¬ä¸ä¸ªé *self* æé *cls* åæ°çç±»åä¸:: è¦å¯ç¨æ³¨å :term:`lambda <lambda>` åç°æçå½æ°ï¼ä¹å¯ä»¥ä½¿ç¨ :func:`register` å±æ§çå½æ°å½¢å¼:: ä¸ºäºå¸®å©è¡¡éç¼å­çæææ§ä»¥åè°æ´ *maxsize* å½¢åï¼è¢«åè£çå½æ°ä¼å¸¦æä¸ä¸ª :func:`cache_info` å½æ°ï¼å®è¿åä¸ä¸ª :term:`named tuple` ä»¥æ¾ç¤º *hits*, *misses*, *maxsize* å *currsize*ã å°ä¸ä¸ªå½æ°è½¬æ¢ä¸º :term:`ååæ´¾ <single dispatch>` :term:`generic function`ã å°ä¸ä¸ªæ¹æ³è½¬æ¢ä¸º :term:`ååæ´¾ <single dispatch>` :term:`generic function`ã å°ä¸ä¸ªç±»æ¹æ³è½¬æ¢ä¸ºç¹å¾å±æ§ï¼ä¸æ¬¡æ§è®¡ç®è¯¥ç¹å¾å±æ§çå¼ï¼ç¶åå°å¶ç¼å­ä¸ºå®ä¾çå½å¨æåçæ®éå±æ§ã ç±»ä¼¼äº :func:`property` ä½å¢å äºç¼å­åè½ã å¯¹äºå¨å¶ä»æåµä¸å®éä¸å¯åçé«è®¡ç®èµæºæ¶èçå®ä¾ç¹å¾å±æ§æ¥è¯´è¯¥å½æ°éå¸¸æç¨ã å°(æ§å¼ç)æ¯è¾å½æ°è½¬æ¢ä¸ºæ°å¼ç :term:`key function` .  å¨ç±»ä¼¼äº :func:`sorted` ï¼ :func:`min` ï¼ :func:`max` ï¼ :func:`heapq.nlargest` ï¼ :func:`heapq.nsmallest` ï¼ :func:`itertools.groupby` ç­å½æ°ç `key` åæ°ä¸­ä½¿ç¨ãæ­¤å½æ°ä¸»è¦ç¨ä½å° Python 2 ç¨åºè½¬æ¢è³æ°ççè½¬æ¢å·¥å·ï¼ä»¥ä¿æå¯¹æ¯è¾å½æ°çå¼å®¹ã æ´æ°ä¸ä¸ª *wrapper* å½æ°ä»¥ä½¿å¶ç±»ä¼¼äº *wrapped* å½æ°ã å¯éåæ°ä¸ºææåå½æ°çåªäºå±æ§è¦ç´æ¥è¢«èµå¼ç» wrapper å½æ°çå¹éå±æ§çåç»ï¼å¹¶ä¸è¿äº wrapper å½æ°çå±æ§å°ä½¿ç¨åå½æ°çå¯¹åºå±æ§æ¥æ´æ°ã è¿äºåæ°çé»è®¤å¼æ¯æ¨¡åçº§å¸¸é ``WRAPPER_ASSIGNMENTS`` (å®å°è¢«èµå¼ç» wrapper å½æ°ç ``__module__``, ``__name__``, ``__qualname__``, ``__annotations__`` å ``__doc__`` å³ææ¡£å­ç¬¦ä¸²) ä»¥å ``WRAPPER_UPDATES`` (å®å°æ´æ° wrapper å½æ°ç ``__dict__`` å³å®ä¾å­å¸)ã å½ *func* æ¯ä¸ä¸ªæè¿°å¨ï¼ä¾å¦æ®é Python å½æ°, :func:`classmethod`, :func:`staticmethod`, :func:`abstractmethod` æå¶ä» :class:`partialmethod` çå®ä¾ï¼æ¶, å¯¹ ``__get__`` çè°ç¨ä¼è¢«å§æç»åºå±çæè¿°å¨ï¼å¹¶ä¼è¿åä¸ä¸ªéå½ç :ref:`é¨åå¯¹è±¡<partial-objects>` ä½ä¸ºç»æã å½ *func* æ¯ä¸ä¸ªéæè¿°å¨ç±»å¯è°ç¨å¯¹è±¡æ¶ï¼åä¼å¨æåå»ºä¸ä¸ªéå½çç»å®æ¹æ³ã å½ç¨ä½æ¹æ³æ¶å¶è¡ä¸ºç±»ä¼¼æ®é Python å½æ°ï¼å°ä¼æå¥ *self* åæ°ä½ä¸ºç¬¬ä¸ä¸ªä½ç½®åæ°ï¼å¶ä½ç½®çè³ä¼å¤äºæä¾ç» :class:`partialmethod` æé å¨ç *args* å *keywords* ä¹åã å¨è°ç¨æ¶ï¼æ³åå½æ°ä¼æ ¹æ®ç¬¬ä¸ä¸ªåæ°çç±»åè¿è¡åæ´¾:: å¨æ²¡æéå¯¹ç¹å®ç±»åçå·²æ³¨åå®ç°çæåµä¸ï¼ä¼ä½¿ç¨å¶æ¹æ³è§£æé¡ºåºæ¥æ¥æ¾æ´éç¨çå®ç°ã ä½¿ç¨ ``@singledispatch`` è£é¥°çåå§å½æ°å°ä¸ºåºæ¬ç :class:`object` ç±»åè¿è¡æ³¨åï¼è¿æå³çå®å°å¨æ¾ä¸å°æ´å¥½çå®ç°æ¶è¢«ä½¿ç¨ã è½ç¶æ­¤è£é¥°å¨ä½¿å¾åå»ºå·æè¯å¥½è¡ä¸ºçå®å¨æåºç±»ååå¾éå¸¸å®¹æï¼ä½å® *ç¡®å®* æ¯ä»¥æ§è¡éåº¦æ´ç¼æ¢åæ´¾çæ¯è¾æ¹æ³çå æ åæº¯æ´å¤æä¸ºä»£ä»·çã å¦ææ§è½åºåæµè¯è¡¨æè¿æ¯ç¹å®åºç¨çç¶é¢æå¨ï¼åæ¹ä¸ºå®ç°å¨é¨å­ä¸ªå¯æ¯è¾æ¹æ³åºè¯¥ä¼è½»æ¾æåéåº¦ã å¦æä¸ä½¿ç¨è¿ä¸ªè£é¥°å¨å·¥åå½æ°ï¼å example å½æ°çåç§°å°åä¸º ``'wrapper'``ï¼å¹¶ä¸ :func:`example` åæ¬çææ¡£å­ç¬¦ä¸²å°ä¼ä¸¢å¤±ã ``@singledispatchmethod`` æ¯æä¸å¶ä»è£é¥°å¨å¦ :func:`@classmethod<classmethod>` ç¸åµå¥ã è¯·æ³¨æä¸ºäºåè®¸ ``dispatcher.register``ï¼``singledispatchmethod`` å¿é¡»æ¯ *æå¤å±ç* è£é¥°å¨ã ä¸é¢æ¯ä¸ä¸ª ``Negator`` ç±»åå«ç»å®å°ç±»ç ``neg`` æ¹æ³ï¼èä¸æ¯ä¸ä¸ªç±»å®ä¾:: 