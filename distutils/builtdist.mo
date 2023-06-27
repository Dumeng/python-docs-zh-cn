��    �      $              ,     -     1     I     `     h     o     {     �     �  �  �  �  b
  '     �   7  R   	     \     j  	   r  	   |     �     �  �  �     x     �     �     �     �     �     �     �     �  <   �  �  <          #  ~   (    �     �     �  	   �  �  �    �  �  �     �     �     �  (   �     �     �       {   "  �   �  �   �     �  �   �     a  �  }  2   E   S   x   �   �   �   �!  g   �"  p   �"     Z#  �   {$  �   V%  !  #&  �   E(  �  D)  �   ,+    ,     .     .     ".  �   *.  1  �.     %1     *1     /1  R   41     �1  	   �1     �1     �1     �1  	   �1  	   �1     �1     �1     2     2     2     '2     52     B2     N2     [2     g2     t2     |2     �2     �2  
   �2     �2  	   �2     �2     �2  #   �2  $   �2  �   3  �   �3     [4     q4     �4     �4  "   �4  E   �4     5  .   �5  |   �5  	   76     A6  #   Y6  �  }6  +   58  N   a8  �   �8  "   V9     y9  �  �9     O;     S;     k;     �;     �;     �;     �;     �;     �;  {  �;  x  _=  &   �?  �   �?  U   �@     A     'A     .A     5A     BA     XA  �  kA     �B     C      C     (C     DC     KC     RC     YC     tC  @   yC  �  �C     �E     �E  {   �E    'F     >G  	   EG     OG  �  VG     I  �  K     �L     �L     �L  '   �L     M     %M     ,M  c   GM  �   �M  �   �N     kO  �   �O     5P  �  EP  "   �Q  B   	R  �   LR  �   S  Y   �S  \   $T  �   �T  �   pU  �   QV  �  W  �   Y  �  �Y  �   �[  �  �\     �^  	   �^     �^  �   �^    `_     ea     ja     oa  R   ta     �a  	   �a     �a     �a     b  	   b  	   "b     ,b     5b     Ab     Vb     ^b     gb     ub     �b     �b     �b     �b     �b     �b     �b     �b  
   �b     �b  	   �b     �b     �b  %   c  "   -c  �   Pc  �   d     �d     �d     �d  	   �d  $   �d  A   �d  v   7e  *   �e  �   �e  	   [f     ef  #   f  �  �f  %   |h  Y   �h  �   �h  $   �i     �i   "1" "Development/Libraries" %description (section) (2),(4) (none) (see above) :command:`bdist_dumb` :command:`bdist_rpm` :command:`bdist_rpm` option A "built distribution" is what you're probably used to thinking of either as a "binary package" or an "installer" (depending on your background).  It's not necessarily binary, though, because it might contain only Python source code and/or byte-code; and we don't call it a package, because that word is already spoken for in Python.  (And "installer" is a term specific to the world of mainstream desktop systems.) A built distribution is how you make life as easy as possible for installers of your module distribution: for users of RPM-based Linux systems, it's a binary RPM; for Windows users, it's an executable installer; for Debian-based Linux users, it's a Debian package; and so forth.  Obviously, no one person will be able to create built distributions for every platform under the sun, so the Distutils are designed to enable module developers to concentrate on their specialty---writing code and creating source distributions---while an intermediary species called *packagers* springs up to turn source distributions into built distributions for as many platforms as there are packagers. Added support for the ``xztar`` format. Additionally, there are many options in :file:`.spec` files that don't have corresponding options in the setup script.  Most of these are handled through options to the :command:`bdist_rpm` command as follows: As a simple example, if I run the following command in the Distutils source tree:: BuildRequires Command Conflicts Copyright Creating Built Distributions Creating RPM packages Creating RPM packages is driven by a :file:`.spec` file, much as using the Distutils is driven by the setup script.  To make your life easier, the :command:`bdist_rpm` command normally creates a :file:`.spec` file based on the information you supply in the setup script, on the command line, and in any Distutils configuration files.  Various options and sections in the :file:`.spec` file are derived from options in the setup script as follows: Cross-compiling on Windows Description Distribution Distutils setup script option Format Formats Group HP-UX :program:`swinstall` Icon If the folder cannot be retrieved, :exc:`OSError` is raised. If you wish, you can separate these three steps.  You can use the :option:`!--spec-only` option to make :command:`bdist_rpm` just create the :file:`.spec` file and exit; in this case, the :file:`.spec` file will be written to the "distribution directory"---normally :file:`dist/`, but customizable with the :option:`!--dist-dir` option.  (Normally, the :file:`.spec` file winds up deep in the "build tree," in a temporary directory created by :command:`bdist_rpm`.) Microsoft Installer. Name Normally, RPM bundles the last two steps together; when you use the Distutils, all three steps are typically bundled together. Note that by default, Visual Studio 2008 does not install 64bit compilers or tools.  You may need to reexecute the Visual Studio setup process and select these tools (using Control Panel->[Add/Remove] Programs is a convenient way to check or modify your existing install.) Notes Notes: Obsoletes Obviously, for pure Python distributions, this isn't any simpler than just running ``python setup.py install``\ ---but for non-pure distributions, which include extensions that would need to be compiled, it can mean the difference between someone being able to use your extensions or not.  And creating "smart" built distributions, such as an RPM package or an executable installer for Windows, is far more convenient for users even if your distribution doesn't include any extensions. Obviously, supplying even a few of these options on the command-line would be tedious and error-prone, so it's usually best to put them in the setup configuration file, :file:`setup.cfg`\ ---see section :ref:`setup-config`.  If you distribute or package many Python module distributions, you might want to put options that apply to all of them in your personal Distutils configuration file (:file:`~/.pydistutils.cfg`).  If you want to temporarily disable this file, you can pass the :option:`!--no-user-cfg` option to :file:`setup.py`. Of course, the module developer could be their own packager; or the packager could be a volunteer "out there" somewhere who has access to a platform which the original developer does not; or it could be software periodically grabbing new source distributions and turning them into built distributions for as many platforms as the software has access to.  Regardless of who they are, a packager uses the setup script and the :command:`bdist` command family to generate built distributions. Packager Provides RPM RPM :file:`.spec` file option or section Release Requires Solaris :program:`pkgtool` Some functions especially useful in this context are available as additional built-in functions in the installation script. Starting with Python 2.3, a postinstallation script can be specified with the :option:`!--install-script` option.  The basename of the script must be specified, and the script filename must also be listed in the scripts argument to the setup function. Starting with Python 2.6, distutils is capable of cross-compiling between Windows platforms.  In practice, this means that with the correct tools installed, you can use a 32bit version of Windows to create 64bit extensions and vice-versa. Summary (in preamble) The :command:`bdist` command has a :option:`!--formats` option, similar to the :command:`sdist` command, which you can use to select the types of built distribution to generate: for example, :: The Postinstallation script The RPM format is used by many popular Linux distributions, including Red Hat, SuSE, and Mandrake.  If one of these (or any of the other RPM-based Linux distributions) is your usual environment, creating RPM packages for other users of that same distribution is trivial. Depending on the complexity of your module distribution and differences between Linux distributions, you may also be able to create RPMs that work on different RPM-based distributions. The available formats for built distributions are: The following sections give details on the individual :command:`bdist_\*` commands. The former allows you to specify RPM-specific options; the latter allows  you to easily specify multiple formats in one run.  If you need to do both, you can explicitly specify multiple :command:`bdist_\*` commands and their options:: The installation script runs embedded in the windows installer, every output (``sys.stdout``, ``sys.stderr``) is redirected into a buffer and will be displayed in the GUI after the script has finished. The usual way to create an RPM of your module distribution is to run the :command:`bdist_rpm` command:: There are three steps to building a binary RPM package, all of which are handled automatically by the Distutils: These functions should be called when a directory or file is created by the postinstall script at installation time.  It will register *path* with the uninstaller, so that it will be removed when the distribution is uninstalled. To be safe, directories are only removed if they are empty. This document is being retained solely until the ``setuptools`` documentation at https://setuptools.readthedocs.io/en/latest/setuptools.html independently covers all of the relevant information currently included here. This function can be used to retrieve special folder locations on Windows like the Start Menu or the Desktop.  It returns the full path to the folder. *csidl_string* must be one of the following strings:: This function creates a shortcut. *target* is the path to the program to be started by the shortcut. *description* is the description of the shortcut. *filename* is the title of the shortcut that the user will see. *arguments* specifies the command line arguments, if any. *workdir* is the working directory for the program. *iconpath* is the file containing the icon for the shortcut, and *iconindex* is the index of the icon in the file *iconpath*.  Again, for details consult the Microsoft documentation for the :class:`IShellLink` interface. This script will be run at installation time on the target system after all the files have been copied, with ``argv[1]`` set to :option:`!-install`, and again at uninstallation time before the files are removed with ``argv[1]`` set to :option:`!-remove`. Thus, the above command on a Unix system creates :file:`Distutils-1.0.{plat}.tar.gz`; unpacking this tarball from the right place installs the Distutils just as though you had downloaded the source distribution and run ``python setup.py install``.  (The "right place" is either the root of the filesystem or  Python's :file:`{prefix}` directory, depending on the options given to the :command:`bdist_dumb` command; the default is to make dumb distributions relative to :file:`{prefix}`.) To build for an alternate platform, specify the :option:`!--plat-name` option to the build command.  Valid values are currently 'win32', and  'win-amd64'. For example, on a 32bit version of Windows, you could execute:: To cross-compile, you must download the Python source code and cross-compile Python itself for the platform you are targeting - it is not possible from a binary installation of Python (as the .lib etc file for other platforms are not included.)  In practice, this means the user of a 32 bit operating system will need to use Visual Studio 2008 to open the :file:`PCbuild/PCbuild.sln` solution in the Python source tree and build the "x64" configuration of the 'pythoncore' project before cross-compiling extensions is possible. Url Vendor Version Which folders are available depends on the exact Windows version, and probably also the configuration.  For details refer to Microsoft's documentation of the :c:func:`SHGetSpecialFolderPath` function. You don't have to use the :command:`bdist` command with the :option:`!--formats` option; you can also use the command that directly implements the format you're interested in.  Some of these :command:`bdist` "sub-commands" actually generate several similar formats; for instance, the :command:`bdist_dumb` command generates all the "dumb" archive formats (``tar``, ``gztar``, ``bztar``, ``xztar``, ``ztar``, and ``zip``), and :command:`bdist_rpm` generates both binary and source RPMs.  The :command:`bdist` sub-commands, and the formats generated by each, are: \(1) \(3) \(5) ``author`` and ``author_email``, or  --- & ``maintainer`` and ``maintainer_email`` ``build_requires`` ``bztar`` ``conflicts`` ``description`` ``distribution_name`` ``group`` ``gztar`` ``icon`` ``license`` ``long_description`` ``msi`` ``name`` ``obsoletes`` ``packager`` ``pkgtool`` ``provides`` ``release`` ``requires`` ``rpm`` ``sdux`` ``tar`` ``url`` ``vendor`` ``version`` ``xztar`` ``zip`` ``ztar`` bzipped tar file (:file:`.tar.bz2`) compressed tar file (:file:`.tar.Z`) create a :file:`.spec` file, which describes the package (analogous  to the Distutils setup script; in fact, much of the information in the  setup script winds up in the :file:`.spec` file) create the "binary" RPM (which may or may not contain binary code, depending on whether your module distribution contains Python extensions) create the source RPM default on Unix default on Windows default value gzipped tar file (:file:`.tar.gz`) or the :command:`bdist` command with the :option:`!--format` option:: requires either external :program:`zip` utility or :mod:`zipfile` module (part of the standard Python library since Python 1.6) requires external :program:`compress` utility. requires external :program:`rpm` utility, version 3.0.4 or better (use ``rpm --version`` to find out which version you have) rpm, srpm tar file (:file:`.tar`) tar, gztar, bztar, xztar, ztar, zip then the Distutils builds my module distribution (the Distutils itself in this case), does a "fake" installation (also in the :file:`build` directory), and creates the default type of built distribution for my platform.  The default format for built distributions is a "dumb" tar file on Unix, and a simple executable installer on Windows.  (That tar file is considered "dumb" because it has to be unpacked in a specific location to work.) to build a 64bit version of your extension. would create a 64bit installation executable on your 32bit version of Windows. would, when run on a Unix system, create :file:`Distutils-1.0.{plat}.zip`\ ---again, this archive would be unpacked from the root directory to install the Distutils. xzipped tar file (:file:`.tar.xz`) zip file (:file:`.zip`) Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:51+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 "1" "Development/Libraries" %d描述（部分） (2),(4) (none) （同上） :command:`bdist_dumb` :command:`bdist_rpm` :command:`bdist_rpm` 选项 “构建分发版”即你通常所认为的“二进制包”或“安装程序”（取决于你的技术背景）。 但它并不一定是二进制的，因为它可能只包含 Python 源代码和/或字节码；并且我们也不将其称为包，因为这个词在 Python 中已经被使用。 （而“安装程序”是主流桌面系统领域的一个专有术语。） 分发版可以让你的模块分发安装器尽可能地方便易用：对于基于 RPM 的 Linux 系统的用户，它将为二进制 RPM；对于 Windows 的用户，它将为可执行文件安装器；对于基于 Debian 的 Linux 用户，它将为 Debian 安装包；诸如此类。 显然，没有人能为世界上所有的系统平台都构建分发版，因此 Distutils 被设计用来让模块开发者能够专注于他们的专长 --- 编写代码并创建源代码分发版 --- 而让另一群作为中介的 *打包者* 负责在尽可能多的受支持系统平台上将源代码分发版转换为构建分发版。 添加了对 ``xztar`` 格式的支持 此外，在 :file:`.spec` 文件中还有许多选项在 setup 脚本中没有对应的选项。 这些选项大多是通过传给 :command:`bdist_rpm` 命令的选项来处理的，如下所示: 作为一个简单示例，如果我在 Distutils 源代码树中运行以下命令:: 构建要求 命令 冲突 版权所有 创建构建分发版 创建RPM软件包 创建 RPM 包的操作是由 :file:`.spec` 文件驱动的，就像 Distutils 的使用是由 setup 脚本驱动的一样。 为了让你更方便，:command:`bdist_rpm` 命令通常会根据你在 setup 脚本、命令行和任意 Distutils 配置文件中提供的信息创建一个 :file:`.spec` 文件。 :file:`.spec` 文件中的各种选项和小节从 setup 脚本中派生的情况如下: 在 Windows 上的交叉编译 描述  发行 Distutils安装脚本选项 格式 格式 组织 HP-UX :program:`swinstall` Icon 如果文件夹不能被检索到，会触发 :exc:`OSError` 。 如果你愿意，你也可以将这三个步骤分开。 你可以使用 :option:`!--spec-only` 选项来让 :command:`bdist_rpm` 只创建 :file:`.spec` 文件并退出；在这种情况下，:file:`.spec` 文件将被写到“分发目录” --- 通常为 :file:`dist/`，但可通过 :option:`!--dist-dir` 选项来自定义。 （通常，:file:`.spec` 文件会位于“构建树”的深处，在 :command:`bdist_rpm` 所创建的一个临时目录中。） Microsoft安装程序。 名称 通常，RPM 会将后两个步骤捆绑在一起；当你使用 Distutils 时，三个步骤通常都会捆绑在一起。 请注意在默认情况下，Visual Studio 2008 并不会安装 64 位编译器或工具。 你可能需要重新执行 Visual Studio 安装过程并选择这些工具（使用控制面板 -> [添加/移除] 程序是检查或修改你的现有安装的一个便捷方式。） 备注 注释： 淘汰 显然，对于纯粹的 Python 分发版来说，这并不比运行 ``python setup.py install`` 更简单 --- 但是对于包括需要被编译的扩展的非纯粹的分发版来说，就可能是有人能使用你的扩展而有人不能使用的差别。 而创建“自动”构建分发版，例如 RPM 包或 Windows 的可执行文件安装器，对于用户来说就会更加方便，即使你的分发版不包括任何扩展。 显然，即使是在命令行中提供少量的此类选项也是很繁琐易出错的，因此通常最好是将它们放在 setup 配置文件 :file:`setup.cfg` 中，参见 :ref:`setup-config` 一节。 如果你要分发或打包许多 Python 模块分发版，你可能会需要将适用于所有这些分发版的选项放在你私人的 Distutils 配置文件中 (:file:`~/.pydistutils.cfg`)。 如果你想要临时禁用此文件，你可以将 :option:`!--no-user-cfg` 选项传给 :file:`setup.py`。 当然，模块开发者可以是自己模块的打包者；或者打包者也可以是住在别处的“某一位”能够接触到原始开发者接触不到的特定系统平台的志愿者；或者还可以是一个定期抓取新的源代码分发版并在尽可能多的受支持系统平台上将其转换为构建分发版的软件。 无论他们属于哪一种，打包者都会使用设置脚本和 :command:`bdist` 命令族来生成构建分发版。 打包 提供 RPM RPM :file:`.spec` 文件配置或选项 发布版本 需求 Solaris :program:`pkgtool` 一些在此上下文中特别有用的功能在安装脚本中作为附加内置函数被提供。 从 Python 2.3 开始，可以通过 :option:`!--install-script` 选项指定一个安装后脚本。 必须要指定脚本的主文件名，并且该脚本文件名还必须在传给 setup 函数的参数中列出。 从 Python 2.6 开始，distutils 能够在不同 Windows 平台之间执行交叉编译。 实际上，这意味着只要安装了正确的工具，你可以使用 32 位版 Windows 来创建 64 位的扩展或是反向操作。 摘要（在序言中） :command:`bdist` 命令有一个 :option:`!--formats` 选项，与 :command:`sdist` 命令类似，你可以用该选项来选择要生成的构建分发版类型：例如，:: 安装后脚本 RPM 格式被许多流行的 Linux 发行版所使用，包括 Red Hat, SuSE 和 Mandrake。 如果其中（或任何其他基于 RPM 的 Linux 发行版）的某一个是你的常用环境，那么为相同发行版的其他用户创建 RPM 包是很容易的。 根据你的模块分发版的复杂度以及 Linux 发行版之间的差异性，你还可能创建适用于多个基于 RPM 的发行版的 RPM 包。 构建分发版的可用格式有: 以下小节提供了每个 :command:`bdist_\*` 命令的详情。 前者允许你指定 RPM 专属的选项；后者允许你方便地一次性指定多种格式。 如果这两样你全都要，你可以显式地指定多个 :command:`bdist_\*` 命令及其选项:: 安装脚本嵌入在 Windows 安装程序中运行，每个输出 (``sys.stdout``, ``sys.stderr``) 都会被重定向到一个缓冲区并将在脚本完成后显示到 GUI 中。 为你的模块分发版创建 RPM 的通常方式是运行 :command:`bdist_rpm` 命令:: 构建一个二进制 RPM 包有三个步骤，它们全都是由 Distutils 自动处理的: 这些函数应当在安装时的安装后脚本创建某个目录或文件时被调用。 它会将 *path* 注册到卸载程序，这样当分发版被卸载时它将被移除。 安全起见，目录只有在为空时才会被移除。 这篇文档是历史遗留文档，在 https://setuptools.readthedocs.io/en/latest/setuptools.html 上的 ``setuptools`` 文档独立涵盖此处包含的所有相关信息之后，将不再单独作为正式文档保留。 此函数可被用来获取 Windows 中的特殊文件夹位置如 Start Menu 或 Desktop。 它将返回相应文件夹的完整路径。 *csidl_string* 必须为下列字符串之一:: 此函数会创建一个快捷方式。 *target* 是此快捷方式要启动的程序的路径。 *description* 是快捷方式的描述文本。 *filename* 是用户将看到的快捷方式的标题。 *arguments* 指定命令行参数，如果有的话。 *workdir* 是程序的工作目录。 *iconpath* 是包含快捷方式的图标的文件，而 *iconindex* 是 *iconpath* 文件中图标的索引号。 同样地，更多细节请参考 Microsoft 有关 :class:`IShellLink` 接口的文档。 在安装时当所有文件拷贝完毕后该脚本将会在目标系统上运行，并将 ``argv[1]`` 设为 :option:`!-install`，而在卸载时当文件被移除前会再次运行并将 ``argv[1]`` 设为 :option:`!-remove`。 这样，上述命令在 Unix 系统上将会创建 :file:`Distutils-1.0.{plat}.tar.gz`；在正确的位置上解包这个 tar 文件将会装好 Distutils，就像是你下载了源代码分发版并运行 ``python setup.py install`` 一样。 （这个“正确的位置”可能是文件系统根目录或 Python 的 :file:`{prefix}` 目录，具体取决于提供给 :command:`bdist_dumb` 命令的选项；在默认情况下是相对于 :file:`{prefix}` 创建非自动颁发版。） 要针对替代平台进行编译，请为构建命令指定 :option:`!--plat-name` 选项。 目前的有效值为 'win32' 和d  'win-amd64'。 例如，在 32 位版 Windows 上，你可以执行:: 要进行交叉编译，你必须下载 Python 源代码并针对你的目标平台交叉编译 Python 本身 —— 使用 Python 的二进制安装版是无法做到的（因为其中不包括针对其他平台的 .lib 等文件。） 实际上，这意味着 32 位操作系统的用户将需要使用 Visual Studio 2008 来打开 Python 源代码目录树下的 :file:`PCbuild/PCbuild.sln` 解决方案并构建 'pythoncore' 项目的 "x64" 配置之后才能进行扩展的交叉编译。 Url 供应商 版本 有哪些可用的文件夹取决于的 Windows 的具体版本，并可能受特定配置的影响。 更多细节请参考 Microsoft 有关 :c:func:`SHGetSpecialFolderPath` 函数的文档。 你不必附带 :option:`!--formats` 来使用 :command:`bdist` 命令；你还可以使用直接实现了你想要的特定格式的命令。 某些这样的 :command:`bdist` "子命令" 实际上会生成几种相似的格式；例如，:command:`bdist_dumb` 命令将生成所有 "非自动" 归档格式 (``tar``, ``gztar``, ``bztar``, ``xztar``, ``ztar`` 和 ``zip``)，而 :command:`bdist_rpm` 将同时生成二进制和源代码 RPM。 :command:`bdist` 子命令以及每个子命令所生成的格式如下: \(1) \(3) \(5) ``author`` 和 ``author_email``, 或 --- & ``maintainer`` 和 ``maintainer_email`` ``build_requires`` ``bztar`` ``conflicts`` ``description`` ``distribution_name`` ``group`` ``gztar`` ``icon`` ``license`` ``long_description`` ``msi`` ``name`` ``obsoletes`` ``packager`` ``pkgtool`` ``provides`` ``release`` ``requires`` ``rpm`` ``sdux`` ``tar`` ``url`` ``vendor`` ``version`` ``xztar`` ``zip`` ``ztar`` bzipped tar 文件 (:file:`.tar.bz2`) 压缩 tar 文件 (:file:`.tar.Z`) 创建一个 :file:`.spec` 文件，该文件对包进行了描述（类似于 Distutils setup 脚本；实际上 setup 脚本中的许多信息都会出现在 :file:`.spec` 文件中） 创建“二进制”RPM（其中可能包含二进制代码也可能不包含，具体取决于你的模块分发版是否包含 Python 扩展） 创建源 RPM 默认 Unix 默认Windows 默认值 gzipped tar 文件 (:file:`.tar.gz`) 或者 :command:`bdist` 命令附带 :option:`!--format` 选项:: 需要有外部 :program:`zip` 工具或 :mod:`zipfile` 模块（自 Python 1.6 起是标准 Python 库的一部分） 需要外部 :program:`compress` 工具。 需要有外部 :program:`rpm` 工具，版本号为 3.0.4 或以上（可使用 ``rpm --version`` 查看你所使用的版本） rpm, srpm tar 文件 (:file:`.tar`) tar, gztar, bztar, xztar, ztar, zip 则 Distutils 将构建我的模块分发版（在此情况下即 Distutils 本身），执行“模拟”安装（同样是在 :file:`build` 目录中），并为我的系统平台创建默认类型的构建分发版。 构建分发版的默认格式在 Unix 上是一个“非自动” tar 文件，而在 Windows 上则是一个简单的可执行文件安装器。 （此 tar 文件被称为“非自动”是因为它必须在指定的位置上解包方可使用。） 来构建你的扩展的 64 位版。 将在你的 32 位版 Windows 上创建一个 64 位版的安装程序可执行文件。 当在 Unix 系统上运行时，会再次创建 :file:`Distutils-1.0.{plat}.zip`，这个归档文件将从根目录被解包以安装 Distutils。 xzipped tar 文件 (:file:`.tar.xz`) zip 文件 (:file:`.zip`) 