GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0M      U      -��`�0��x�5�[   res://Main Scene.tscn          �      �qg�\\Pc��t�o�   res://Node Manager.gd.remap @]      '       lE���7u�j>�����   res://Node Manager.gdc  �      P      �4$��1� O��-9U   res://Node Simulation.tscn  0      U      �@�!LU��GG�(�   res://Node Strength.gd.remapp]      (       ��|��E,�C��ȹ   res://Node Strength.gdc �            ;��Z5r���5�^9�   res://Node.gd.remap �]             ���
�?��M<�4   res://Node.gdc  �      �      4K&����l�릇XW��   res://ProgressBar.gd.remap  �]      &       0A�Zi�w��1���$   res://ProgressBar.gdc   `      �       �ޫ��1���V��$�$   res://Secondary Pannel Style.tres   @      k       �l"?�	�o����    res://Simulate Button.gd.remap  �]      *       ��|j߃A�$,f�ù�   res://Simulate Button.gdc   �      (      ���>�r�U.<�\7�_�   res://Simulator.gd.remap ^      $       Ug��!(+�M����   res://Simulator.gdc �      �      ķ�(9%�zk��   res://UI Controller.gd.remapP^      (       ���kӹ��l�%f��   res://UI Controller.gdc �2            ��Y���	��K)S   res://User Interface.tscn   �5      �      [
R�p��� ����t   res://default_env.tres  �L      �       um�`�N��<*ỳ�8   res://icon.png  �^      �      G1?��z�c��vN��   res://icon.png.import   �Z      �      "�Պ����$��㹌   res://project.binarypk      )      ���4�B6�����T��            [gd_scene load_steps=3 format=2]

[ext_resource path="res://Node Simulation.tscn" type="PackedScene" id=1]
[ext_resource path="res://User Interface.tscn" type="PackedScene" id=2]

[node name="MainScene" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="UI" parent="." instance=ExtResource( 2 )]

[node name="Simulation Manager" parent="." instance=ExtResource( 1 )]
position = Vector2( 0, 0 )
z_index = -1
             GDSC         C   `     ���ӄ�   ����Ŷ��   ����������Ӷ   �����������Ӷ���   �����϶�   ������¶   �������Ŷ���   �����׶�   �������ض���   ������������������������ض��   ������������������Ӷ   ���Ӷ���   �������������Ӷ�   ����������ٶ   �����Ŷ�   �����¶�   ����¶��   ����������������Ҷ��   �������Ҷ���   �����������������Ҷ�   ����Ӷ��   ���������Ӷ�   ���������Ӷ�   �������޶���   �����Ķ�   ��������ݶ��   ����   ��������Ҷ��   ���ݶ���   ����������������¶��   ���������������Ӷ���          ../UI         newNodeRequested      on_UI_NodeRequest         nodeRemovalRequested      on_UI_NodeRemove                   click      	   ui_cancel      d   When a node is requested, this creates the new node and then sets it's
position to that of the mouse   d                      	      
                           	      
   (      4      5      6      =      G      O      Q      R      S      ^      q      t      w      z      {      |      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2     3     4     5      6   !  7   "  8   +  9   ;  :   <  ;   B  <   J  =   K  >   R  ?   S  @   Y  A   Z  B   ^  C   3YY;�  LMYY;�  YY;�  YY0�  PQV�  W�  T�  P�  RR�  Q�  W�  T�  P�  RR�  Q�  YY0�  P�  QV�  &PP�  QQV�  �  T�  �	  PQ�  -YYY0�
  P�  V�  QX�  V�  &P�  T�  T�  P�	  PQQ	�  T�  QV�  .�  �  (V�  .�  YYY0�  P�  QV�  &P�  T�  P�  QQV�  )�  �  V�  &P�
  P�  QQV�  �  �  �  �  &P�  QV�  T�  �  �  �  �  �  �  �  T�  �  �  +�  &P�  T�  P�  QQV�  �  �  &P�  T�  P�	  QP�  QQV�  �  �  T�  P�  Q�  �  �  T�  PQ�  �  �  YYY0�  P�  V�  R�  V�  QX�  V�  �  T�  P�  T�  P�  R�  QQ�  �  P�  T�  PQQ�  .�  T�  PQYY�
  Y0�  P�  R�  QV�  �  P�  R�  QT�  �  P�  R�  QYY0�  PQV�  &P�  QV�  �  �  T�  P�  Q�  �  �  T�  PQ�  �  �  Y`[gd_scene load_steps=3 format=2]

[ext_resource path="res://Node Manager.gd" type="Script" id=1]
[ext_resource path="res://Simulator.gd" type="Script" id=2]

[node name="Simulation Manager" type="Node2D"]
position = Vector2( 0.770691, 0 )
script = ExtResource( 1 )

[node name="Simulator" type="Node2D" parent="."]
script = ExtResource( 2 )
           GDSC      
      �      ����ڶ��   ����������Ѷ   ����Ӷ��   ����ڶ��   �����������Ӷ���   �����϶�   �������Ӷ���   ������¶   ���¶���   ��������������Ҷ   ���������������Ҷ���                   Plus      pressed       on_Plus_pressed       Minus         on_Minus_pressed      Value         1                            
                              *   	   8   
   ?      E      F      L      T      X      a      b      h      q      u      ~      3YY;�  V�  Y;�  V�  Y;�  V�  YY0�  PQV�  �  P�  QT�  P�  RR�  Q�  �  P�  QT�  P�  RR�  Q�  �  �  P�  Q�  �  T�  �  YY0�	  PQV�  &P�  	�	  QV�  �  �  �  �  T�  �>  P�  QYY0�
  PQV�  &P�  �	  QV�  �  �  �  �  T�  �>  P�  QY`       GDSC            �      ���ӄ�   �������������Ӷ�   �����������Ķ���   �����������޶���   �����Ķ�   ���Ӷ���   �����Ŷ�   �������Ҷ���   ����¶��   �������޶���   ��ڶ   �������ض���   ��������   �������Ŷ���   �����׶�   �����Ӷ�   ��������   ����������۶   ����������Ӷ   ����Ӷ��                                                                                  	   !   
   "      1      5      9      ?      K      L      S      W      X      ^      b      c      i      o      ~      �      �      �      3YY2�  YY;�  Y;�  �  Y;�  V�  T�  Y;�  Y;�  V�  YY0�  P�	  �  R�
  �  T�  QV�  �  �	  �  �  �
  �  �  �  T�  �  �  P�  �  Q�  �  YY0�  P�  QV�  �  PQYY0�  PQV�  �  PQYY0�  PQV�  &P�  QV�  �  P�  T�  R�  �  R�  T�  Q�  (V�  �  P�  T�  R�  �  R�  T�  Q�  �  P�  T�  R�  R�  QY`            GDSC                  ����������Ķ   �������Ŷ���   �����׶�   ����Ӷ��   �������Ŷ���   ,   /root/MainScene/Simulation Manager/Simulator                   
            3YY0�  P�  QV�  T�  WT�  Y`[gd_resource type="StyleBoxFlat" format=2]

[resource]
bg_color = Color( 0.203461, 0.203461, 0.230469, 1 )
     GDSC         
   $      �����ض�   ��������������ض   �����϶�   ������¶   ��������ƶ��   ����������ڶ   	   button_up         startSimulation                                                     	   "   
   3YYB�  YY0�  PQV�  �  PRRQYY0�  PQV�  �  P�  QY`        GDSC   W      �   �     ���ӄ�   �������������Ŷ�   �����ض�   ������������Ӷ��   ����Ŷ��   ��������϶��   ������Ѷ   ��������������Ҷ   �������Ŷ���   ������������Ҷ��   ������ζ   ������ζ   �����҇�   �����҄�   �����҅�   ���Ӈ���   �����϶�   ����Ӷ��   ����   �����������Ӷ���   �����������ض���   ������������������Ӷ   ����ζ��   �����Ҷ�   ������¶   �������Ŷ���   �����׶�   ����������Ӷ   �������������޶�   �����ݶ�   �����Ӷ�   �嶶   �������������ն�   ����������Ӷ   ζ��   �����������������ض�   ��������Ŷ��   �����������Ӷ���   �������Ҷ���   ���ݶ���   ��������������������   ���Ӷ���   ����������޶   �����������¶���   ϶��   ����¶��   ��������������������Ŷ��   ���Ŷ���   ��������ڶ��   �������������ڶ�   ���������������Ҷ���   ��������   �����������Ӷ���   ��������   �����Ӷ�   ���ڶ���   ����������������Ӷ��   �������ض���   �������϶���   ����������Ӷ   �������������¶�   ���������ض�   ����������ٶ   �����Ŷ�   �����Ķ�   ׶��   ����������������Ӷ��   ������Ҷ   ���������ض�   ���������¶�   ��������޶��   ��Ŷ   �������Ӷ���   ���Ӷ���   �������ٶ���   �������������Ҷ�   ���������Ҷ�   �����������޶���   �������������Ӷ�   �������Ӷ���   ������������������ٶ   ���¶���   ���ƶ���   ����Ķ��   ��������ݶ��   ���ݶ���   ������Ӷ                       3   /root/MainScene/UI/Simulation Block/Simulate Button       startSimulation       on_startSimulation     0   /root/MainScene/UI/Simulation Block/Clear Screen      pressed       on_Clear_pressed     zD   d      D               ..                  threadCalculatePixels                                 �?   �                            	                           	      
               #      (      -      .      3      4      5      8      9      <      =      @      C      F      G      J      K      L      M      S       [   !   c   "   g   #   k   $   l   %   t   &   |   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >     ?     @     A     B     C   "  D   (  E   *  F   2  G   3  H   :  I   >  J   ?  K   J  L   S  M   Z  N   [  O   _  P   `  Q   f  R   j  S   n  T   r  U   v  V   w  W   x  X   y  Y     Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h     i     j   %  k   )  l   /  m   5  n   9  o   ?  p   @  q   F  r   N  s   Q  t   R  u   S  v   Y  w   ]  x   a  y   e  z   f  {   g  |   m  }   v  ~   w     x  �   ~  �     �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   -  �   0  �   7  �   @  �   D  �   l  �   n  �   o  �   {  �   |  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   !  �   )  �   8  �   >  �   J  �   R  �   V  �   Z  �   ]  �   ^  �   d  �   g  �   m  �   s  �   �  �   �  �   �  �   �  �   3YY;�  YY;�  Y;�  YY;�  LMYY;�  LMYY;�  �  Y;�  �  Y;�  �  YY;�	  �  YYY;�
  YY;�  YY;�  Y;�  Y;�  YY;�  YYYY0�  PQV�  �  �  T�  PQ�  �  �  T�  PQ�  �  PQ�  �  PQ�  �  �
  �  T�  PQ�  �  �  T�  PQ�  �  �  T�  PQ�  �  �  T�  PQ�  �  �  T�  PQ�  Y�  W�  T�  P�  RR�  QY�  W�  T�  P�  RR�  QYY0�  P�  QV�  &P�  QV�  &P�  PQQV�  �  �  �  �  T�  PQ�  �  T�  PQ�  �  T�  PQ�  �  �  T�  PQ�  �  �  PQ�  �  PQ�  �?  P�  P�  T�   PQ�  Q�	  Q�  �  �
  �  (V�  �  �  P�	  �  PP�  T�!  T�"  �  Q�  QQ�
  �  YY0�#  PQV�  &P�  QV�  .�  �  �  T�   PQ�  �  �  W�  T�  �  �$  PQ�  �  &PW�  T�%  �  QV�  W�  T�%  T�&  �  �  W�  T�%  �  �  �  �  PQ�  �  �  T�'  PQ�  �  �  �  �	  �  �  �  �  �  �(  PQ�  YYY0�(  PQV�  �  �  �  &P�  T�)  PQ�  QV�  �  ;�*  �  T�!  T�"  �  �  ;�+  �  T�!  T�,  �  �  �  T�-  PR�  RL�*  R�+  R�  R�  MQ�  �  T�-  PR�  RL�*  R�+  R�  R�  MQ�  �  T�-  PR�  RL�*  R�+  R�  R�  MQYYYY0�.  P�/  QV�  )�"  �K  P�  R�/  L�  MQV�  )�,  �K  P�/  L�  MR�/  L�  MR�/  L�  MQV�  �  T�0  P�"  R�,  R�1  P�  P�"  R�,  QQQ�  �  T�'  PQ�  �	  �  �  �  T�  PQ�  �
  T�'  PQ�  �  �  �  �
  T�  PQYY0�  PQV�  &P�  �  QV�  .�  YYY0�2  PQV�  �  PQ�  �  PQ�  �  PQYYY0�3  PQV�  �4  P�  R�  T�5  QYYY0�  PQV�  �  �  T�6  P�  T�!  T�"  R�  T�!  T�,  R�  R�  Q�  �  T�7  P�  P�  R�  R�  R�  QQYYY0�  PQV�  �  T�8  P�  QYYY0�1  P�9  V�  QX�  V�  &P�  T�)  PQ	�  QV�  .�  P�  R�  R�  R�  Q�  �  ;�:  �  T�5  �  ;�;  �  ;�<  �  �  )�=  �K  P�  R�  QV�  �;  �;  P�9  Q�  �<  �;  T�9  T�>  P�9  QY�  &P�<  
�;  T�?  QV�  ;�@  �;  T�@  �  �@  T�A  P�  P�  Q�  P�=  Q�  Q�  P�  Q�  .�@  �  �:  �B  P�9  Q�  �:  �:  T�C  P�<  Q�  �9  �:  �  &PP�9  T�"  �  T�!  T�"  �9  T�,  �  T�!  T�,  QP�9  T�"  	�  �9  T�,  	�  QQV�  +�  �  .�  P�  R�  R�  R�  QYYY0�D  PQV�  &P�  T�)  PQ�  QV�  )�,  �K  P�  R�  T�E  PQQV�  �  )�"  �K  P�  R�  T�F  PQ�  QV�  �  T�0  P�"  R�,  R�1  P�  P�"  R�,  QQQYYY0�B  P�G  V�  QX�  V�  ;�H  �  P�  R�  Q�  )�I  �  V�  ;�J  P�I  T�9  �G  Q�	  �  &P�J  T�K  PQ�  QV�  ,�  �H  �J  T�L  PQP�I  T�M  P�J  T�K  PQQQ�  .�H  YYY0�;  P�G  V�  QX�N  V�  ;�;  �  L�  M�  ;�O  �  L�  MT�9  T�P  P�G  Q�  )�I  �  V�  ;�Q  �I  T�9  T�P  P�G  Q�  &P�Q  	�O  QV�  �;  �I  �  �O  �Q  �  .�;  YY0�$  PQV�  ;�R  �  �  T�S  PQ�  )�I  �  V�  �  T�T  P�N  T�  P�I  T�M  R�I  T�@  QQ�  �R  �  T�U  PQ�  �R  T�9  �I  T�9  �  �R  T�V  �  Y`      GDSC   
   	      O      ������ڶ   ���������������Ҷ���   �������������������Ҷ���   �����϶�   ������¶   �����������������Ҷ�   ����������ڶ   �����������Ӷ���   ����Ķ��   ��������������������Ҷ��      Creation Block/Add Node       pressed       on_AddNode_pressed        Creation Block/Remove Node        on_RemoveNode_pressed         newNodeRequested      Creation Block/Node Strength   (   Creation Block/Colour Chooser/NodeColour      nodeRemovalRequested                         	      
                  (   	   )   
   /      9      ?      @      F      K      L      M      3YYB�  YB�  YY0�  PQV�  WT�  P�  RR�  Q�  W�  T�  P�  RR�  QYY0�  PQV�  �  P�  RW�  T�  R�  W�  T�  QYY0�	  PQV�  �  P�  QYYY`          [gd_scene load_steps=8 format=2]

[ext_resource path="res://Node Strength.gd" type="Script" id=1]
[ext_resource path="res://Simulate Button.gd" type="Script" id=2]
[ext_resource path="res://UI Controller.gd" type="Script" id=3]
[ext_resource path="res://Secondary Pannel Style.tres" type="StyleBox" id=4]
[ext_resource path="res://ProgressBar.gd" type="Script" id=5]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.145098, 0.145098, 0.164706, 1 )
border_color = Color( 0.223529, 0.223529, 0.223529, 1 )

[sub_resource type="Theme" id=2]
Panel/styles/panel = null

[node name="UI" type="Control"]
anchor_left = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -1024.5
margin_top = 0.168945
margin_right = -0.5
margin_bottom = 0.168945
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sidebar" type="Panel" parent="."]
anchor_left = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -135.0
margin_top = -1.0
margin_right = 1.0
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Creation Block" type="Panel" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -135.0
margin_top = -247.0
margin_right = 1.0
margin_bottom = -9.0
theme = SubResource( 2 )
custom_styles/panel = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Creation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -113.809
margin_top = -104.191
margin_right = -22.8093
margin_bottom = -90.1907
text = "Node Creation"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Colour Chooser" type="Panel" parent="Creation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -124.0
margin_top = -78.0
margin_right = -12.0
margin_bottom = -38.0
custom_styles/panel = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="NodeColour" type="ColorPickerButton" parent="Creation Block/Colour Chooser"]
margin_right = 48.0
margin_bottom = 41.0
color = Color( 1, 0, 0.0156863, 1 )
edit_alpha = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Creation Block/Colour Chooser"]
margin_left = 60.416
margin_top = 13.416
margin_right = 101.416
margin_bottom = 27.416
text = "Colour"

[node name="Add Node" type="Button" parent="Creation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -124.0
margin_top = 35.2279
margin_right = -12.0
margin_bottom = 68.2279
text = "Add Node"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Remove Node" type="Button" parent="Creation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -124.0
margin_top = 73.0255
margin_right = -12.0
margin_bottom = 106.026
text = "Remove Node"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Node Strength" type="Panel" parent="Creation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -124.0
margin_top = -12.15
margin_right = -12.0
margin_bottom = 19.85
custom_styles/panel = ExtResource( 4 )
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Value" type="Label" parent="Creation Block/Node Strength"]
margin_left = 8.0
margin_right = 104.0
margin_bottom = 32.0
text = "2"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Title" type="Label" parent="Creation Block/Node Strength"]
margin_left = 8.0
margin_top = -16.15
margin_right = 104.0
margin_bottom = 2.85001
text = "Node Strength"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Minus" type="Button" parent="Creation Block/Node Strength"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -112.0
margin_top = -16.0
margin_right = -82.0
margin_bottom = 16.0
text = "-"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Plus" type="Button" parent="Creation Block/Node Strength"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -29.7347
margin_top = -16.0
margin_right = 0.265259
margin_bottom = 16.0
text = "+"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Simulation Block" type="Panel" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -135.0
margin_top = 30.0
margin_right = 1.0
margin_bottom = 174.0
theme = SubResource( 2 )
custom_styles/panel = ExtResource( 4 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Simulation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -102.0
margin_top = -60.0
margin_right = -32.0
margin_bottom = -45.0
text = "Simulation"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Simulate Button" type="Button" parent="Simulation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -123.437
margin_top = 6.46545
margin_right = -12.4365
margin_bottom = 45.4655
text = "Simulate"
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ProgressBar" type="ProgressBar" parent="Simulation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -125.0
margin_top = 48.0
margin_right = -10.0
margin_bottom = 62.0
max_value = 100.0
script = ExtResource( 5 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Clear Screen" type="Button" parent="Simulation Block"]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -123.325
margin_top = -42.2572
margin_right = -12.3248
margin_bottom = -8.2572
text = "Clear"
__meta__ = {
"_edit_use_anchors_": false
}
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Node Manager.gdc"
         [remap]

path="res://Node Strength.gdc"
        [remap]

path="res://Node.gdc"
 [remap]

path="res://ProgressBar.gdc"
          [remap]

path="res://Simulate Button.gdc"
      [remap]

path="res://Simulator.gdc"
            [remap]

path="res://UI Controller.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         SimulationNode        language      GDScript      path      res://Node.gd         base      Node2D     _global_script_class_icons(               SimulationNode            application/config/name         Particle Simulation    application/run/main_scene          res://Main Scene.tscn      application/config/icon         res://icon.png     input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����   alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   rendering/environment/default_clear_color      ��e?��e?��e?  �?)   rendering/environment/default_environment          res://default_env.tres         