��          �               �   *   �   5     :   N  :   �  :   �  :   �  :   :  :   u  	   �  �   �    Q  ;   V  �  �  *   J  ,   u  !   �  !   �  !   �  !     !   *  !   L     n  �   w  �  	  .   �
   **Source code:** :source:`Lib/colorsys.py` :mod:`colorsys` --- Conversions between color systems Convert the color from HLS coordinates to RGB coordinates. Convert the color from HSV coordinates to RGB coordinates. Convert the color from RGB coordinates to HLS coordinates. Convert the color from RGB coordinates to HSV coordinates. Convert the color from RGB coordinates to YIQ coordinates. Convert the color from YIQ coordinates to RGB coordinates. Example:: More information about color spaces can be found at https://poynton.ca/ColorFAQ.html and https://www.cambridgeincolour.com/tutorials/color-spaces.htm. The :mod:`colorsys` module defines bidirectional conversions of color values between colors expressed in the RGB (Red Green Blue) color space used in computer monitors and three other coordinate systems: YIQ, HLS (Hue Lightness Saturation) and HSV (Hue Saturation Value).  Coordinates in all of these color spaces are floating point values.  In the YIQ space, the Y coordinate is between 0 and 1, but the I and Q coordinates can be positive or negative.  In all other spaces, the coordinates are all between 0 and 1. The :mod:`colorsys` module defines the following functions: Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:57+0000
Last-Translator: nick <2330458484@qq.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码：** :source:`Lib/colorsys.py` :mod:`colorsys` --- 颜色系统间的转换 把颜色从HLS值转为RGB值。 把颜色从HSV值转为RGB值。 把颜色从RGB值转为HLS值。 把颜色从RGB值转为HSV值。 把颜色从RGB值转为YIQ值。 把颜色从YIQ值转为RGB值。 示例:: 有关色彩空间的更多信息可访问 https://poynton.ca/ColorFAQ.html 和 https://www.cambridgeincolour.com/tutorials/color-spaces.htm。 :mod:`colorsys` 模块定义了计算机显示器所用的 RGB (Red Green Blue) 色彩空间与三种其他色彩坐标系统 YIQ, HLS (Hue Lightness Saturation) 和 HSV (Hue Saturation Value) 表示的颜色值之间的双向转换。 所有这些色彩空间的坐标都使用浮点数值来表示。 在 YIQ 空间中，Y 坐标取值为 0 和 1 之间，而 I 和 Q 坐标均可以为正数或负数。 在所有其他空间中，坐标取值均为 0 和 1 之间。 :mod:`colorsys` 模块定义了如下函数： 