��    1      �              ,  j   -  n   �       |     2  �  '   �  g   �  i  ]  �   �  �   b	     S
  E   _
  *   �
     �
    �
  &   �       <   8  �  u  0   ,     ]  '  m  �   �     _  ,   q  �   �  g   -  f   �  7   �  \  4     �     �  �   �  )   D  �   n     <     E  �   Q  l   '  2  �  �   �  9  v  %   �  �  �    �  $  �  �   �     �  �  �  [   9!  c   �!     �!  P   "  �   b"     S#  I   i#  �  �#  {   �%  �   &     �&  2   �&  '   '     C'  �   P'     (     )(  &   <(  @  c(  -   �)     �)  �  �)  �   �+     O,  '   ^,  z   �,  M   -  T   O-  &   �-    �-     �.     �.  u   /     |/  �   �/     W0     ^0  �   j0  E   01  �   v1  ~   P2  �   �2  &   �3  b  �3  �   N5  �   6  �   	7     �7   :mod:`ipaddress` provides some simple, hopefully intuitive ways to compare objects, where it makes sense:: A :exc:`TypeError` exception is raised if you try to compare objects of different versions or different types. A Note on IP Versions Addresses can also be created directly from integers. Values that will fit within 32 bits are assumed to be IPv4 addresses:: Addresses, often referred to as "host addresses" are the most basic unit when working with IP addressing. The simplest way to create addresses is to use the :func:`ipaddress.ip_address` factory function, which automatically determines whether to create an IPv4 or IPv6 address based on the passed in value: An introduction to the ipaddress module As for addresses, a factory function is provided that determines the correct IP version automatically:: As mentioned just above, if you need to describe an address on a particular network, neither the address nor the network classes are sufficient. Notation like ``192.0.2.1/24`` is commonly used by network engineers and the people who write tools for firewalls and routers as shorthand for "the host ``192.0.2.1`` on the network ``192.0.2.0/24``", Accordingly, :mod:`ipaddress` provides a set of hybrid classes that associate an address with a particular network. The interface for creation is identical to that for defining network objects, except that the address portion isn't constrained to being a network address. As with addresses, creation of a particular kind of network can be forced by calling the class constructor directly instead of using the factory function. By default, attempting to create a network object with host bits set will result in :exc:`ValueError` being raised. To request that the additional bits instead be coerced to zero, the flag ``strict=False`` can be passed to the constructor:: Comparisons Containment testing is done efficiently based on the network prefix:: Creating Address/Network/Interface objects Defining Networks Explaining the details of the differences between the two versions of the protocol is beyond the scope of this introduction, but readers need to at least be aware that these two versions exist, and it will sometimes be necessary to force the use of one version or the other. Exploding or compressing the address:: Extracting the IP version:: Finding out how many individual addresses are in a network:: For readers that aren't particularly familiar with IP addressing, it's important to know that the Internet Protocol (IP) is currently in the process of moving from version 4 of the protocol to version 6. This transition is occurring largely because version 4 of the protocol doesn't provide enough addresses to handle the needs of the whole world, especially given the increasing number of devices with direct connections to the internet. Getting more detail when instance creation fails Host Interfaces Host addresses are usually grouped together into IP networks, so :mod:`ipaddress` provides a way to create, inspect and manipulate network definitions. IP network objects are constructed from strings that define the range of host addresses that are part of that network. The simplest form for that information is a "network address/network prefix" pair, where the prefix defines the number of leading bits that are compared to determine whether or not an address is part of the network and the network address defines the expected value of those bits. However, both of the module specific exceptions have :exc:`ValueError` as their parent class, so if you're not concerned with the particular type of error, you can still write code like the following:: IP Host Addresses Inspecting Address/Network/Interface Objects Integer inputs are accepted (as with networks), and use of a particular IP version can be forced by calling the relevant constructor directly. It also means that network objects lend themselves to using the list membership test syntax like this:: It's sometimes useful to treat networks as lists.  This means it is possible to index them like this:: Iterating through the "usable" addresses on a network:: Network objects cannot have any host bits set.  The practical effect of this is that ``192.0.2.1/24`` does not describe a network.  Such definitions are referred to as interface objects since the ip-on-a-network notation is commonly used to describe network interfaces of a computer on a given network and are described further in the next section. Networks as lists of Addresses Nick Coghlan Obtaining the netmask (i.e. set bits corresponding to the network prefix) or the hostmask (any bits that are not part of the netmask): Obtaining the network from an interface:: Other modules that use IP addresses (such as :mod:`socket`) usually won't accept objects from this module directly. Instead, they must be coerced to an integer or string that the other module will accept:: Overview Peter Moody Since :mod:`ipaddress` is a module for inspecting and manipulating IP addresses, the first thing you'll want to do is create some objects.  You can use :mod:`ipaddress` to create objects from strings and integers. The error messages are significantly more detailed when using the class constructors directly. For example:: This document aims to provide a gentle introduction to the :mod:`ipaddress` module. It is aimed primarily at users that aren't already familiar with IP networking terminology, but may also be useful to network engineers wanting an overview of how :mod:`ipaddress` represents IP network addressing concepts. To force the use of IPv4 or IPv6 addresses, the relevant classes can be invoked directly. This is particularly useful to force creation of IPv6 addresses for small integers:: To support use cases where it is useful to have access to this additional detail, the individual class constructors actually raise the :exc:`ValueError` subclasses :exc:`ipaddress.AddressValueError` and :exc:`ipaddress.NetmaskValueError` to indicate exactly which part of the definition failed to parse correctly. Using IP Addresses with other modules When creating address/network/interface objects using the version-agnostic factory functions, any errors will be reported as :exc:`ValueError` with a generic error message that simply says the passed in value was not recognized as an object of that type. The lack of a specific error is because it's necessary to know whether the value is *supposed* to be IPv4 or IPv6 in order to provide more detail on why it has been rejected. While IPv4 doesn't support explosion or compression, the associated objects still provide the relevant properties so that version neutral code can easily ensure the most concise or most verbose form is used for IPv6 addresses while still correctly handling IPv4 addresses. While the string form offers significantly more flexibility, networks can also be defined with integers, just like host addresses. In this case, the network is considered to contain only the single address identified by the integer, so the network prefix includes the entire network address:: You've gone to the trouble of creating an IPv(4|6)(Address|Network|Interface) object, so you probably want to get information about it.  :mod:`ipaddress` tries to make doing this easy and intuitive. author Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:53+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :mod:`ipaddress` 有意义地提供了一些简单、希望直观的比较对象的方法:: 如果你尝试比较不同版本或不同类型的对象，则会引发 :exc:`TypeError` 异常。 关于IP版本的说明 地址也可以直接从整数创建，适配32位的值并假定为IPv4地址:: 通常称为“主机地址”的地址是使用IP寻址时最基本的单元。 创建地址的最简单方法是使用 :func:`ipaddress.ip_address` 工厂函数，该函数根据传入的值自动确定是创建 IPv4 还是 IPv6 地址： ipaddress模块介绍 对于地址，提供了一个自动确定正确IP版本的工厂函数:: 如上所述，如果您需要描述特定网络上的地址，则地址和网络类都不够。 像 ``192.0.2.1/24`` 这样的表示法通常被网络工程师和为防火墙和路由器编写工具的人用作“ ``192.0.2.0/24`` 网络上的主机 ``192.0.2.1`` ”的简写。因此，:mod:`ipaddress` 提供了一组将地址与特定网络相关联的混合类。用于创建的接口与用于定义网络对象的接口相同，除了地址部分不限于是网络地址。 与地址一样，可以通过直接调用类构造函数而不是使用工厂函数来强制创建特定类型的网络。 默认情况下，尝试创建一个设置了主机位的网络对象将导致 :exc:`ValueError` 被引发。 要请求将附加位强制为零，可以将标志 ``strict=False`` 传递给构造函数:: 比较运算 根据网络前缀有效地完成包含性测试:: 创建 Address/Network/Interface 对象 定义网络 解释协议的两个版本之间的差异的细节超出了本介绍的范围，但读者需要至少知道存在这两个版本，并且有时需要强制使用一个版本或其他版本。 展开或压缩地址:: 提取 IP 版本:: 找出网络中有多少独立地址:: 对于不太熟悉 IP 寻址的读者来说，重要的一点是知道互联网协议 (IP) 目前正在从第 4 版协议迁移到第 6 版。 进行这样的迁移主要是因为第 4 版协议无法提供足够的地址来满足全世界的需求，特别是考虑到有越来越多的设备连接到了互联网中。 实例创建失败时获取更多详细信息 主机接口 主机地址通常组合在一起形成IP网络，因此 :mod:`ipaddress` 提供了一种创建、检查和操作网络定义的方法。 IP网络对象由字符串构成，这些字符串定义作为该网络一部分的主机地址范围。 该信息的最简单形式是“网络地址/网络前缀”对，其中前缀定义了比较的前导比特数，以确定地址是否是网络的一部分，并且网络地址定义了那些位的预期值。 但是，两个模块特定的异常都有 :exc:`ValueError` 作为它们的父类，所以如果你不关心特定类型的错误，你仍然可以编写如下代码:: IP主机地址 审查 Address/Network/Interface 对象 接受整数输入（与网络一样），并且可以通过直接调用相关构造函数来强制使用特定IP版本。 它还意味着网络对象可以使用像这样的列表成员测试语法:: 将网络视为列表有时很有用。 这意味着它可以像这样索引它们:: 迭代网络上的“可用”地址:: 网络对象不能设置任何主机位。 这样做的实际效果是 ``192.0.2.1/24`` 没有描述网络。 这种定义被称为接口对象，因为网络上IP表示法通常用于描述给定网络上的计算机的网络接口，并在下一节中进一步描述。 Network 作为 Address 列表 Nick Coghlan 获取网络掩码（即对应于网络前缀的设置位）或主机掩码（不属于网络掩码的任何位）： 从接口获取网络:: 其他使用IP地址的模块（例如 :mod:`socket` ）通常不会直接接受来自该模块的对象。 相反，它们必须被强制转换为另一个模块可接受的整数或字符串:: 概述 Peter Moody 因为 :mod:`ipaddress` 是一个用于检查和操作 IP 地址的模块，你要做的第一件事就是创建一些对象。 您可以使用 :mod:`ipaddress` 从字符串和整数创建对象。 直接使用类构造函数时，错误消息更加详细。 例如:: 本文档旨在简要介绍 :mod:`ipaddress` 模块。 它主要针对那些不熟悉 IP 网络术语的用户，但也可能对想要速览 :mod:`ipaddress` 如何代表IP网络寻址概念的网络工程师有用。 要强制使用IPv4或IPv6地址，可以直接调用相关的类。 这对于强制为小整数创建IPv6地址特别有用:: 为了支持访问这些额外细节的用例，各个类构造函数实际上引发了 :exc:`ValueError` 子类 :exc:`ipaddress.AddressValueError` 和 :exc:`ipaddress.NetmaskValueError` 以准确指示定义的哪一部分无法正确解析。 将IP地址与其他模块一起使用 使用与版本无关的工厂函数创建 address/network/interface 对象时，任何错误都将报告为 :exc:`ValueError` ，带有一般错误消息，只是说传入的值未被识别为该类型的对象。 缺少特定错误是因为有必要知道该值是*假设*是IPv4还是IPv6，以便提供有关其被拒绝原因的更多详细信息。 虽然IPv4不支持展开或压缩，但关联对象仍提供相关属性，因此版本中性代码可以轻松确保最简洁或最详细的形式用于IPv6地址，同时仍能正确处理IPv4地址。 虽然字符串形式提供了更大的灵活性，但网络也可以用整数定义，就像主机地址一样。 在这种情况下，网络被认为只包含由整数标识的单个地址，因此网络前缀包括整个网络地址:: 你已经遇到了创建IPv(4|6)(Address|Network|Interface) 对象的麻烦，因此你可能希望获得有关它的信息。 :mod:`ipaddress` 试图让这个过程变得简单直观。 作者 