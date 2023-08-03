��    b      ,              <  1   =  0   o  3   �  �   �  �   y  :     �   C  �   �  h  \	  �   �
  �   M  �   H  ;   �  �   ,  d  �  $   _  &   �  "   �  (   �  .   �  "   &  Z   I  �   �  r   >  w   �     )  T   5  <   �  /   �  ^   �  �   V  T  �     P  �   �     q     �     �  �   �     K  D   T     �  �   �  C   ,  ?   p  ?   �  �   �  �  �          1  #   @  �   d  n   �  �   [  y     �  �  o   T   �   �   �  N!  �   #  L   �#  f   $  _   z$  T   �$  Z   /%  �   �%  T   &  V   r&  j   �&  j   4'  �   �'  �   *(  H   �(     B)  �   ^)  U   �)  :  T*  �   �+  `   �,  �   �,  �   �-  O   &.  �   v.  6   &/  j   ]/  �   �/    �0     �1  g   �1  �  2  r  �4  �   6  Y   7  }  ]7  �  �8  �  �:  �  T<     >  �   >  /   �?  1   @  /   =@  �   m@  �   A  3   �A  l   �A  s   NB  =  �B  x    D  �   yD  �   \E  D   F  �   PF  O  !G  *   qH  ,   �H  (   �H  .   �H  4   !I  (   VI  U   I  �   �I  l   wJ  b   �J  
   GK  C   RK  8   �K  -   �K  P   �K  �   NL    �L  q   O  �   �O     'P     4P     AP  �   HP     �P  >   �P     7Q  �   ?Q  @   �Q  <   R  <   ?R  �   |R  �  S     �T     �T  %   �T  z   �T  k   aU  �   �U  �   �V  �  W  o   �X  �   EY  �  �Y  �   �[  B   #\     f\  U   �\  F   <]  T   �]  �   �]  ]   h^  Z   �^  i   !_     �_  �   `  �   �`  G   ga     �a  �   �a  [   Ob  <  �b  �   �c  H   �d  �   e  �   �e  Q   Gf  �   �f  $   Og  S   tg  �   �g  �   ph     ki  ]   xi  �  �i  r  bl  �   �m  U   �n  }  !o  �  �p  �  r  �  t     �u   **Source code:** :source:`Lib/msilib/__init__.py` *data* must be a record describing the new data. *name* is the name of the CAB file in the MSI file. *records* should be a list of tuples, each one containing all fields of a record according to the schema of the table.  For optional fields, ``None`` can be passed. *schema* must be a module object containing ``tables`` and ``_Validation_records`` attributes; typically, :mod:`msilib.schema` should be used. :mod:`msilib` --- Read and write Microsoft Installer files :mod:`msilib` provides a few subpackages that contain only schema and table definitions. Currently, these definitions are based on MSI version 2.0. :mod:`msilib` provides several classes that wrap the GUI tables in an MSI database. However, no standard user interface is provided. Add a file to the current component of the directory, starting a new one if there is no current component. By default, the file name in the source and the file table will be identical. If the *src* file is specified, it is interpreted relative to the current directory. Optionally, a *version* and a *language* can be specified for the entry in the File table. Add a list of files to the current component as specified in the glob pattern.  Individual files can be excluded in the *exclude* list. Add a new record to the ``Feature`` table, using the values *id*, *parent.id*, *title*, *desc*, *display*, *level*, *directory*, and *attributes*. The resulting feature object can be passed to the :meth:`start_component` method of :class:`Directory`. Add a radio button named *name* to the group, at the coordinates *x*, *y*, *width*, *height*, and with the label *text*. If *value* is ``None``, it defaults to *name*. Add all *records* to the table named *table* in *database*. Add all table content from *module* to *database*. *module* must contain an attribute *tables* listing all tables for which content should be added, and one attribute per table that has the actual content. Add an entry to the Component table, and make this component the current component for this directory. If no component name is given, the directory name is used. If no *feature* is given, the current feature is used. If no *flags* are given, the directory's default flags are used. If no *keyfile* is given, the KeyPath is left null in the Component table. Add and return a ``Bitmap`` control. Add and return a ``CheckBox`` control. Add and return a ``Line`` control. Add and return a ``PushButton`` control. Add and return a ``RadioButtonGroup`` control. Add and return a ``Text`` control. Add the file *path* into the ``_Stream`` table of *database*, with the stream name *name*. Add the file with the pathname *full* to the CAB file, under the name *logical*.  If there is already a file named *logical*, a new file name is created. All wrappers around MSI functions raise :exc:`MSIError`; the string inside the exception will contain more detail. Base class of the dialog controls. *dlg* is the dialog object the control belongs to, and *name* is the control's name. CAB Objects Callbacks to Python for the various steps of MSI creation are currently not exposed. Close the database object, through :c:func:`MsiCloseHandle`. Close the view, through :c:func:`MsiViewClose`. Commit the changes pending in the current transaction, by calling :c:func:`MSIDatabaseCommit`. Create a new CAB file named *cabname*. *files* must be a list of tuples, each containing the name of the file on disk, and the name of the file inside the CAB file. Create a new directory in the Directory table. There is a current component at each point in time for the directory, which is either explicitly created through :meth:`start_component`, or implicitly when files are added for the first time. Files are added into the current component, and into the cab file.  To create a directory, a base directory object needs to be specified (can be ``None``), the path to the physical directory, and a logical directory name.  *default* specifies the DefaultDir slot in the directory table. *componentflags* specifies the default flags that new components get. Create a radio button control named *name*. *property* is the installer property that gets set when a radio button is selected. Create and return a new database *name*, initialize it with *schema*, and set the properties *ProductName*, *ProductCode*, *ProductVersion*, and *Manufacturer*. Database Objects Directory Objects Errors Execute the SQL query of the view, through :c:func:`MSIViewExecute`. If *params* is not ``None``, it is a record describing actual values of the parameter tokens in the query. Features Field values can be ints, strings, or instances of the Binary class. GUI classes Generate a CAB file, add it as a stream to the MSI file, put it into the ``Media`` table, and remove the generated file from the disk. Make an entry into the ``ControlCondition`` table for this control. Make an entry into the ``ControlEvent`` table for this control. Make an entry into the ``EventMapping`` table for this control. Make this feature the current feature of :mod:`msilib`. New components are automatically added to the default feature, unless a feature is explicitly specified. Modify the view, by calling :c:func:`MsiViewModify`. *kind* can be one of ``MSIMODIFY_SEEK``, ``MSIMODIFY_REFRESH``, ``MSIMODIFY_INSERT``, ``MSIMODIFY_UPDATE``, ``MSIMODIFY_ASSIGN``, ``MSIMODIFY_REPLACE``, ``MSIMODIFY_MERGE``, ``MSIMODIFY_DELETE``, ``MSIMODIFY_INSERT_TEMPORARY``, ``MSIMODIFY_VALIDATE``, ``MSIMODIFY_VALIDATE_NEW``, ``MSIMODIFY_VALIDATE_FIELD``, or ``MSIMODIFY_VALIDATE_DELETE``. Precomputed tables Record Objects Remove ``.pyc`` files on uninstall. Represents entries in the Binary table; inserting such an object using :func:`add_data` reads the file named *filename* into the table. Return a new :class:`Control` object. An entry in the ``Control`` table is made with the specified parameters. Return a new :class:`Dialog` object. An entry in the ``Dialog`` table is made, with the specified coordinates, dialog attributes, title, name of the first, default, and cancel controls. Return a new UUID, in the format that MSI typically requires (i.e. in curly braces, and with all hexdigits in uppercase). Return a new database object by calling MsiOpenDatabase.   *path* is the file name of the MSI file; *persist* can be one of the constants ``MSIDBOPEN_CREATEDIRECT``, ``MSIDBOPEN_CREATE``, ``MSIDBOPEN_DIRECT``, ``MSIDBOPEN_READONLY``, or ``MSIDBOPEN_TRANSACT``, and may include the flag ``MSIDBOPEN_PATCHFILE``. See the Microsoft documentation for the meaning of these flags; depending on the flags, an existing database is opened, or a new one created. Return a new record object by calling :c:func:`MSICreateRecord`. *count* is the number of fields of the record. Return a new summary information object, by calling :c:func:`MsiGetSummaryInformation`.  *count* is the maximum number of updated values. Return a property of the summary, through :c:func:`MsiSummaryInfoGetProperty`. *field* is the name of the property, and can be one of the constants ``PID_CODEPAGE``, ``PID_TITLE``, ``PID_SUBJECT``, ``PID_AUTHOR``, ``PID_KEYWORDS``, ``PID_COMMENTS``, ``PID_TEMPLATE``, ``PID_LASTAUTHOR``, ``PID_REVNUMBER``, ``PID_LASTPRINTED``, ``PID_CREATE_DTM``, ``PID_LASTSAVE_DTM``, ``PID_PAGECOUNT``, ``PID_WORDCOUNT``, ``PID_CHARCOUNT``, ``PID_APPNAME``, or ``PID_SECURITY``. Return a record describing the columns of the view, through calling :c:func:`MsiViewGetColumnInfo`. *kind* can be either ``MSICOLINFO_NAMES`` or ``MSICOLINFO_TYPES``. Return a result record of the query, through calling :c:func:`MsiViewFetch`. Return a view object, by calling :c:func:`MSIDatabaseOpenView`. *sql* is the SQL statement to execute. Return the index of the file in the CAB file, and the new name of the file inside the CAB file. Return the number of fields of the record, through :c:func:`MsiRecordGetFieldCount`. Return the number of summary properties, through :c:func:`MsiSummaryInfoGetPropertyCount`. Return the string representation of a new unique identifier. This wraps the Windows API functions :c:func:`UuidCreate` and :c:func:`UuidToString`. Return the value of *field* as a string where possible.  *field* must be an integer. Return the value of *field* as an integer where possible.  *field* must be an integer. Set *field* to *value* through :c:func:`MsiRecordSetInteger`. Both *field* and *value* must be an integer. Set *field* to *value* through :c:func:`MsiRecordSetString`. *field* must be an integer; *value* a string. Set *field* to the contents of the file named *value*, through :c:func:`MsiRecordSetStream`. *field* must be an integer; *value* a string. Set a property through :c:func:`MsiSummaryInfoSetProperty`. *field* can have the same values as in :meth:`GetProperty`, *value* is the new value of the property. Possible value types are integer and string. Set all fields of the record to 0, through :c:func:`MsiRecordClearData`. Summary Information Objects The *table* argument must be one of the predefined tables in the MSI schema, e.g. ``'Feature'``, ``'File'``, ``'Component'``, ``'Dialog'``, ``'Control'``, etc. The :mod:`msilib` module is deprecated (see :pep:`PEP 594 <594#msilib>` for details). The :mod:`msilib` supports the creation of Microsoft Installer (``.msi``) files. Because these files often contain an embedded "cabinet" file (``.cab``), it also exposes an API to create CAB files. Support for reading ``.cab`` files is currently not implemented; read support for the ``.msi`` database is possible. The class :class:`CAB` represents a CAB file. During MSI construction, files will be added simultaneously to the ``Files`` table, and to a CAB file. Then, when all files have been added, the CAB file can be written, then added to the MSI file. The database will contain just the schema and the validation records when this function returns. The files are added to the CAB file in the order they appear in the list. All files are added into a single CAB file, using the MSZIP compression algorithm. The package contents can be roughly split into four parts: low-level CAB routines, low-level MSI routines, higher-level MSI routines, and standard table structures. This is a generic method; for specific types, specialized methods are provided. This is the standard MSI schema for MSI 2.0, with the *tables* variable providing a list of table definitions, and *_Validation_records* providing the data for MSI validation. This is typically used to install the sequence tables. This module contains definitions for the UIText and ActionText tables, for the standard installer actions. This module contains table contents for the standard sequence tables: *AdminExecuteSequence*, *AdminUISequence*, *AdvtExecuteSequence*, *InstallExecuteSequence*, and *InstallUISequence*. This package aims to provide complete access to all tables in an ``.msi`` file, therefore, it is a fairly low-level API. One primary application of this package is the creation of Python installer package itself (although that currently uses a different version of ``msilib``). View Objects Write the modified properties to the summary information stream, using :c:func:`MsiSummaryInfoPersist`. `Dialog Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368286.aspx>`_ `Control Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368044.aspx>`_ `Control Types <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368039.aspx>`_ `ControlCondition Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368035.aspx>`_ `ControlEvent Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368037.aspx>`_ `EventMapping Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368559.aspx>`_ `RadioButton Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370962.aspx>`_ `Directory Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368295.aspx>`_ `File Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368596.aspx>`_ `Component Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368007.aspx>`_ `FeatureComponents Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368579.aspx>`_ `FCICreate <https://msdn.microsoft.com/en-us/library/bb432265.aspx>`_ `UuidCreate <https://msdn.microsoft.com/en-us/library/windows/desktop/aa379205.aspx>`_ `UuidToString <https://msdn.microsoft.com/en-us/library/windows/desktop/aa379352.aspx>`_ `Feature Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368585.aspx>`_ `MSIDatabaseOpenView <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370082.aspx>`_ `MSIDatabaseCommit <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370075.aspx>`_ `MSIGetSummaryInformation <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370301.aspx>`_ `MsiCloseHandle <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370067.aspx>`_ `MsiRecordGetFieldCount <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370366.aspx>`_ `MsiRecordSetString <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370373.aspx>`_ `MsiRecordSetStream <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370372.aspx>`_ `MsiRecordSetInteger <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370371.aspx>`_ `MsiRecordClearData <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370364.aspx>`_ `MsiSummaryInfoGetProperty <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370409.aspx>`_ `MsiSummaryInfoGetPropertyCount <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370488.aspx>`_ `MsiSummaryInfoSetProperty <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370491.aspx>`_ `MsiSummaryInfoPersist <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370490.aspx>`_ `MsiViewExecute <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370513.aspx>`_ `MSIViewGetColumnInfo <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370516.aspx>`_ `MsiViewFetch <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370514.aspx>`_ `MsiViewModify <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370519.aspx>`_ `MsiViewClose <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370510.aspx>`_ msi Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:09+0000
Last-Translator: ppcfish <ppcfish@gmail.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码:** :source:`Lib/msilib/__init__.py` *data* 必须是一个描述新数据的记录。 *name* 是 MSI 文件中 CAB 文件的名称。 *records* 应当为一个元组的列表，其中的每个元组都包含与表结构对应的记录的所有字段。 对于可选字段，可以传入 ``None``。 *schema* 必须是一个包含 ``tables`` 和 ``_Validation_records`` 属性的模块对象；在通常情况下，:mod:`msilib.schema` 应当被使用。 :mod:`msilib` --- 读写 Microsoft Installer 文件 :mod:`msilib` 提供了一些仅包含结构模式和表定义的子包。 这些定义基于 MSI 2.0 版。 :mod:`msilib` 提供了一些在 MSI 数据库中包装 GUI 表的类。 但是，并未提供标准用户接口。 向目录的当前组件添加一个文件，如果没有当前组件则会新建一个。 在默认情况下，源中的文件名和文件表将保持一致。 如果指定了 *src* 文件，它将被解读为相对于当前目录。 作为可选项，可以为文件表中的条目指定 *version* 和 *language*。 向当前组件添加一个通过 glob 模式指定的文件列表。 单个文件可以在 *exclude* 列表中排除。 使用值 *id*, *parent.id*, *title*, *desc*, *display*, *level*, *directory* 和 *attributes* 向 ``Feature`` 表添加一条新记录。 结果特征对象可被传给 :class:`Directory` 的 :meth:`start_component` 方法。 向分组添加一个名为 *name* 的单选钮，设置坐标为 *x*, *y*, *width*, *height*，标签为 *text*。 如果 *value* 为 ``None``，则设置默认值 *name*。 将所有 *records* 添加到 *database* 中名为 *table* 的表。 将来自 *module* 的所有表内容添加到 *database*。 *module* 必须包括一个列出其内容需要被添加的所有表的属性 *tables*，并且每个具有实际内容的表对应一个属性。 向组件表添加一个条目，并将该组件设为此目录的当前组件。 如果未给出组件名称，则将使用目录名称。 如果未给出 *feature*，则将使用当前特征。 如果未给出 *flags*，则将使用目录的默认旗标。 如果未给出 *keyfile*，则组件表中的 KeyPath 将保持为空值。 添加并返回一个 ``Bitmap`` 控件。 添加并返回一个 ``CheckBox`` 控件。 添加并返回一个 ``Line`` 控件。 添加并返回一个 ``PushButton`` 控件。 添加并返回一个 ``RadioButtonGroup`` 控件。 添加并返回一个 ``Text`` 控件。 将文件 *path* 添加到 *database* 的 ``_Stream`` 表，使用流名称 *name*。 将路径名为 *full* 的文件添加到 CAB 文件中，命名为 *logical*。 如果已存在名为 *logical* 的文件，则会创建一个新的文件名。 所有 MSI 函数的包装器都会引发 :exc:`MSIError`；异常内部的字符串将包含更多细节。 对话框控件的基类。 *dlg* 是控件所属的对话框对象，*name* 是控件的名称。 CAB 对象 目前没有暴露 MSI 创建的各个步骤对 Python 的回调。 通过 :c:func:`MsiCloseHandle` 关闭数据库对象。 通过 :c:func:`MsiViewClose` 关闭窗口。 通过调用 :c:func:`MSIDatabaseCommit` 提交当前事务中挂起的修改。 新建一个名为 *cabname* 的 CAB 文件。 *files* 必须是一个元组的列表，其中每个元组包含磁盘文件的名称，以及 CAB 文件内文件的名称。 在目录表中创建一个新目录。 在每个时点上对于该目录都有一个当前组件，它或是通过 :meth:`start_component` 显式创建，或是在文件首次被加入时隐式创建。 文件会被加入当前组件，并被加入到 cab 文件中。 要创建一个目录，必须指定一个基准目录对象 (可以为 ``None``)，指向物理目录的路径，以及一个逻辑目录名称。 *default* 指明目录表中的 DefaultDir 槽位。 *componentflags* 指明新组件所获得的默认旗标。 创建一个名为 *name* 的单选钮控件。 *property* 是当单选钮被选中时设置的安装器属性。 创建并返回一个新的数据库 *name*，使用 *schema* 来初始化它，并设置属性 *ProductName*, *ProductCode*, *ProductVersion* 和 *Manufacturer*。 数据对象 目录对象 错误 通过 :c:func:`MSIViewExecute` 执行视图的 SQL 查询。 如果 *params* 不为 ``None``，它应是一条描述查询中形参名称的实际值的记录。 相关特性 字段值可以为整数、字符串或 Binary 类的实例。 GUI 类 生成一个 CAB 文件，以流方式添加到 MSI 文件，将其放入 ``Media`` 表，并从磁盘移除所生成的文件。 在 ``ControlCondition`` 表中为该控件创建一个条目。 在 ``ControlEvent`` 表中为该控件创建一个条目。 在 ``EventMapping`` 表中为该控件创建一个条目。 将此特征设为 :mod:`msilib` 的当前特征。 新组件会自动被添加到默认特征，除非显式指定了一个特征。 通过调用 :c:func:`MsiViewModify` 改变视图。 *kind* 可以是 ``MSIMODIFY_SEEK``，``MSIMODIFY_REFRESH``，``MSIMODIFY_INSERT``，``MSIMODIFY_UPDATE``，``MSIMODIFY_ASSIGN``，``MSIMODIFY_REPLACE``，``MSIMODIFY_MERGE``，``MSIMODIFY_DELETE``，``MSIMODIFY_INSERT_TEMPORARY``，``MSIMODIFY_VALIDATE``，``MSIMODIFY_VALIDATE_NEW``，``MSIMODIFY_VALIDATE_FIELD``，``MSIMODIFY_VALIDATE_DELETE`` 中的一种。 预计算的表 记录对象 在卸载时移除 ``.pyc`` 文件。 代表 Binary 表中的条目；使用 :func:`add_data` 插入这样的对象会将名为 *filename* 文件读入表中。 返回一个新的 :class:`Control` 对象。 将在 ``Control`` 表中创建带有指定形参的条目。 返回一个新的 :class:`Dialog` 对象。 将在 ``Dialog`` 表中创建一个条目，设置指定的坐标，对话框属性，标题，首个、默认和取消控件的名称。 返回一个新的 UUID，符合 MSI 通常的格式要求（即外加花括号，且所有十六进制数码均为大写形式）。 通过调用 MsiOpenDatabase 来返回一个新的数据库对象。 *path* 为 MSI 文件的名称；*persist* 可以是常量 ``MSIDBOPEN_CREATEDIRECT``, ``MSIDBOPEN_CREATE``, ``MSIDBOPEN_DIRECT``, ``MSIDBOPEN_READONLY`` 或 ``MSIDBOPEN_TRANSACT`` 中的一个，并可能包括旗标 ``MSIDBOPEN_PATCHFILE``。 请参阅 Microsoft 文档了解这些旗标的含义；根据这些旗标，将打开一个现有数据库，或者创建一个新数据库。 通过调用 :c:func:`MSICreateRecord` 来返回一个新的记录对象。 *count* 为记录的字段数量。 通过调用 :c:func:`MsiGetSummaryInformation` 返回一个新的概要信息对象。 *count* 为已更新值的最大数量。 通过 :c:func:`MsiSummaryInfoGetProperty` 返回概要的特征属性。 *field* 是属性的名称，可以是常量 ``PID_CODEPAGE``, ``PID_TITLE``, ``PID_SUBJECT``, ``PID_AUTHOR``, ``PID_KEYWORDS``, ``PID_COMMENTS``, ``PID_TEMPLATE``, ``PID_LASTAUTHOR``, ``PID_REVNUMBER``, ``PID_LASTPRINTED``, ``PID_CREATE_DTM``, ``PID_LASTSAVE_DTM``, ``PID_PAGECOUNT``, ``PID_WORDCOUNT``, ``PID_CHARCOUNT``, ``PID_APPNAME`` 或 ``PID_SECURITY`` 中的一个。 通过调用 :c:func:`MsiViewGetColumnInfo` 返回一条描述视图的列的记录。 *kind* 可以是 ``MSICOLINFO_NAMES`` 或 ``MSICOLINFO_TYPES``。 通过调用 :c:func:`MsiViewFetch` 返回查询的结果记录。 通过调用 :c:func:`MSIDatabaseOpenView` 返回一个视图对象。 *sql* 是要执行的 SQL 语句。statement to execute. 返回文件在 CAB 文件中的索引，以及文件在 CAB 文件中的新名称。 通过 :c:func:`MsiRecordGetFieldCount` 返回记录字段的数量。 通过 :c:func:`MsiSummaryInfoGetPropertyCount` 返回概要特征属性的数量。 返回一个新的唯一标识符的字符串表示形式。 这封装了 Windows API 函数 :c:func:`UuidCreate` 和 :c:func:`UuidToString`。 在可能的情况下将 *field* 的值以字符串形式返回。 *field* 必须为整数。 在可能的情况下将 *field* 的值以整数形式返回。 *field* 必须为整数。 通过 :c:func:`MsiRecordSetInteger` 将 *field* 设为 *value*。 *field* 和 *value* 必须为整数。 通过 :c:func:`MsiRecordSetString` 将 *field* 设为 *value*。 *field* 必须是一个整数；*value* 是一个字符串。 通过 :c:func:`MsiRecordSetStream` 将 *field* 设为名为 *value* 的文件的内容。 *field* 必须是一个整数；*value* 是一个字符串。 通过 :c:func:`MsiSummaryInfoSetProperty` 设置特征属性。 *field* 可以有与 :meth:`GetProperty` 相同的值。 *value* 是属性的新值。 可用的值类型有整数和字符串。 通过 :c:func:`MsiRecordClearData` 将记录的所有字段设为 0。 对象总览 *table* 参数必须为 MSI 方案中预定义的表之一，即 ``'Feature'``, ``'File'``, ``'Component'``, ``'Dialog'``, ``'Control'`` 等等。 :mod:`msilib` 模块已被弃用（请参阅 :pep:`PEP 594 <594#msilib>` 了解详情）。 :mod:`msilib` 支持创建 Microsoft 安装程序 (``.msi``) 文件。 由于这种文件往往包含一个嵌入的 "cabinet" 文件 (``.cab``)，它也暴露了一个用于创建 CAB 文件的 API。  目前没有实现对读取 ``.cab`` 文件的支持；对于读取 ``.msi`` 数据库的支持则是可能的。 :class:`CAB` 类代表一个 CAB 文件。 在 MSI 构建过程中，文件将被同时添加到 ``Files`` 表，以及 CAB 中。 然后，当所有文件添加完成时，即可写入 CAB 文件，再添加到 MSI 文件中。 此此函数返回时该数据库将只包含表结构和验证记录。 这些文件将按照它们在列表中出现的顺序被添加到 CAB 文件中。 所有文件都会被添加到单个 CAB 文件，使用 MSZIP 压缩算法。 这个包的内容可以大致分为四个部分：低层级 CAB 例程、低层级 MSI 例程、高层级 MSI 例程以及标准表结构。 这是一个通用方法；对于特定的类型，还提供了专用的方法。 这是基于 MSI 2.0 的标准 MSI 结构模式，其中 *tables* 变量提供了一个由表定义组成的列表，而 *_Validation_records* 提供了用于 MSI 验证的数据。 这通常被用来安装序列表。 此模块包含 UIText 和 ActionText 表的定义，用于标准安装器动作。 此模块包含针对标准序列表的表内容: *AdminExecuteSequence*, *AdminUISequence*, *AdvtExecuteSequence*, *InstallExecuteSequence* 和 *InstallUISequence*。 这个包的目标是提供对 ``.msi`` 文件中的全部表的完整访问，因此，它是一个相当低层级的 API。 这个包的一个主要应用是创建 Python 安装程序包本身 (尽管它目前是使用不同版本的 ``msilib``)。 视图对象 使用 :c:func:`MsiSummaryInfoPersist` 将已修改的特征属性写入到概要信息流。 `Dialog Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368286.aspx>`_ `Control Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368044.aspx>`_ `Control Types <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368039.aspx>`_ `ControlCondition Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368035.aspx>`_ `ControlEvent Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368037.aspx>`_ `EventMapping Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368559.aspx>`_ `RadioButton Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370962.aspx>`_ `Directory Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368295.aspx>`_ `File Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368596.aspx>`_ `Component Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368007.aspx>`_ `FeatureComponents Table <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368579.aspx>`_ `FCICreate <https://msdn.microsoft.com/en-us/library/bb432265.aspx>`_ `UuidCreate <https://msdn.microsoft.com/en-us/library/windows/desktop/aa379205.aspx>`_ `UuidToString <https://msdn.microsoft.com/en-us/library/windows/desktop/aa379352.aspx>`_ `特征表 <https://msdn.microsoft.com/en-us/library/windows/desktop/aa368585.aspx>`_ `MSIDatabaseOpenView <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370082.aspx>`_ `MSIDatabaseCommit <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370075.aspx>`_ `MSIGetSummaryInformation <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370301.aspx>`_ `MsiCloseHandle <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370067.aspx>`_ `MsiRecordGetFieldCount <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370366.aspx>`_ `MsiRecordSetString <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370373.aspx>`_ `MsiRecordSetStream <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370372.aspx>`_ `MsiRecordSetInteger <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370371.aspx>`_ `MsiRecordClearData <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370364.aspx>`_ `MsiSummaryInfoGetProperty <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370409.aspx>`_ `MsiSummaryInfoGetPropertyCount <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370488.aspx>`_ `MsiSummaryInfoSetProperty <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370491.aspx>`_ `MsiSummaryInfoPersist <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370490.aspx>`_ `MsiViewExecute <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370513.aspx>`_ `MSIViewGetColumnInfo <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370516.aspx>`_ `MsiViewFetch <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370514.aspx>`_ `MsiViewModify <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370519.aspx>`_ `MsiViewClose <https://msdn.microsoft.com/en-us/library/windows/desktop/aa370510.aspx>`_ msi 