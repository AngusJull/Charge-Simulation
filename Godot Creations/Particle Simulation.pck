GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�5      U      -��`�0��x�5�[   res://Main Scene.tscn   0      �      4���Çl7����]q�   res://Node Manager.gd.remap �E      '       lE���7u�j>�����   res://Node Manager.gdc         \      �L�&�	�;$�-�   res://Node Simulation.tscn  `      U      �@�!LU��GG�(�   res://Node Strength.gd.remap�E      (       ��|��E,�C��ȹ   res://Node Strength.gdc �            ;��Z5r���5�^9�   res://Node.gd.remap �E             ���
�?��M<�4   res://Node.gdc  �      �      ��Y��N�rt� ��7|    res://Simulate Button.gd.remap  F      *       ��|j߃A�$,f�ù�   res://Simulate Button.gdc   �      (      ���>�r�U.<�\7�_�   res://Simulator.gd.remap@F      $       Ug��!(+�M����   res://Simulator.gdc �      �      �-�)�v��bf�R�#   res://UI Controller.gd.remappF      (       ���kӹ��l�%f��   res://UI Controller.gdc `%      �      �����);�A�I�Fv   res://User Interface.tscn   `'      �      ;�P��:�x�*LW   res://default_env.tres   5      �       um�`�N��<*ỳ�8   res://icon.png  �F      �      G1?��z�c��vN��   res://icon.png.import   C      �      �����%��(#AB�   res://project.binary�S      )      ���4�B6�����T��[gd_scene load_steps=3 format=2]

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
          GDSC      
   :   4     ���ӄ�   ����Ŷ��   ����������Ӷ   �����������Ӷ���   �����϶�   ������¶   �������Ŷ���   �����׶�   �������ض���   ������������������������ض��   ������������������Ӷ   ���Ӷ���   �������������Ӷ�   ����������ٶ   ��������������Ŷ   �����¶�   ����¶��   ����������������Ҷ��   �������Ҷ���   �����������������Ҷ�   ����Ӷ��   ���������Ӷ�   ���������Ӷ�   �������޶���   �����Ķ�   ��������ݶ��   ����   ��������Ҷ��   ���ݶ���   ����������������¶��          ../UI         newNodeRequested      on_UI_NodeRequest                      click      	   ui_cancel      d   When a node is requested, this creates the new node and then sets it's
position to that of the mouse   d                      	      
                           	      
   (      )      *      1      ;      C      E      F      G      R      g      j      m      p      q      r      y      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2     3     4     5     6     7   !  8   1  9   2  :   3YY;�  LMYY;�  YY;�  YY0�  PQV�  W�  T�  P�  RR�  Q�  YY0�  P�  QV�  &PP�  QQV�  �  T�  �	  PQ�  -YYY0�
  P�  V�  QX�  V�  &P�  T�  T�  P�	  PQQ	�  T�  PQQV�  .�  �  (V�  .�  YYY0�  P�  QV�  &P�  T�  P�  QQV�  )�  �  V�  &P�
  P�  QQV�  �  �  �  �  &P�  QV�  T�  �  �  �  �  �  �  �  T�  �  �  +�  &P�  T�  P�  QQV�  �  �  &P�  T�  P�  QP�  QQV�  �  �  T�  P�  Q�  �  �  T�  PQ�  �  �  YYY0�  P�  V�  R�  V�  QX�  V�  �  T�  P�  T�  P�  R�  QQ�  �  P�  T�  PQQ�  .�  T�  PQYY�  Y0�  P�  R�  QV�  �  P�  R�  QT�  �  P�	  R�	  QYY`    [gd_scene load_steps=3 format=2]

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
  PQV�  &P�  �	  QV�  �  �  �  �  T�  �>  P�  QY`       GDSC            �      ���ӄ�   �������������Ӷ�   �����������Ķ���   �����������޶���   �����Ķ�   ���Ӷ���   �������Ҷ���   ����¶��   �������޶���   ��ڶ   �������ض���   ��������   �������Ŷ���   �����׶�   �����Ӷ�   ��������   ����������۶   ����������Ӷ   ��������������Ŷ   ����Ӷ��                                                                                  	      
   .      2      6      <      =      D      H      I      O      S      T      Z      `      q      t      �      �      �      �      �      3YY2�  YY;�  Y;�  �  Y;�  V�  T�  Y;�  V�  YY0�  P�  �  R�	  �  T�  QV�  �  �  �  �  �	  �  �
  �  T�  YY0�  P�  QV�  �  PQYY0�  PQV�  �  PQYY0�  PQV�  &P�  QV�  �  P�  T�  R�  PQ�  R�  T�  Q�  (V�  �  P�  T�  R�  PQ�  R�  T�  Q�  �  P�  T�  R�  PQR�  QYY0�  PQV�  .P�  �  Q�  �  Y`      GDSC         
   $      �����ض�   ��������������ض   �����϶�   ������¶   ��������ƶ��   ����������ڶ   	   button_up         startSimulation                                                     	   "   
   3YYB�  YY0�  PQV�  �  PRRQYY0�  PQV�  �  P�  QY`        GDSC   9      k   h     ���ӄ�   �������������Ŷ�   �����ض�   ������������Ӷ��   ����Ŷ��   �����϶�   ����Ӷ��   ����   �����������Ӷ���   �����������ض���   ������������������Ӷ   ������¶   �����������������ض�   �����������Ӷ���   �������Ҷ���   ���ݶ���   ���������ض�   �����ݶ�   �����Ӷ�   ���������������Ҷ���   ��������   �����������Ӷ���   ��������   �����Ӷ�   �嶶   ����������Ӷ   ζ��   ϶��   ���ڶ���   ����������������Ӷ��   �������������ڶ�   ���Ӷ���   �������϶���   ����������Ӷ   �������������¶�   �������Ӷ���   �������ض���   ���������ض�   ����������ٶ   ��������������Ŷ   �����Ķ�   ����������������Ӷ��   �����޶�   ���������Ҷ�   ���������¶�   ��������޶��   ��������ڶ��   ��Ŷ   �������Ӷ���   ���Ӷ���   �������ٶ���   �����������޶���   �������������Ҷ�   �������������Ӷ�   �������Ӷ���   ������������������ٶ   ���¶���   (      "   /root/MainScene/UI/Simulate Button        startSimulation       on_startSimulation        /root/MainScene/UI/Clear Screen       pressed       on_Clear_pressed      ..                �                                ��                          	                           	      
         %      -      1      5      6      B      C      O      P      V      W      ^      _      j      s      z      {            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   
  ;     <     =   #  >   $  ?   +  @   .  A   1  B   4  C   >  D   ?  E   J  F   Q  G   \  H   ]  I   i  J   n  K   o  L   v  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]     ^     _     `     a     b   *  c   2  d   A  e   G  f   S  g   [  h   _  i   c  j   f  k   3YY;�  YY;�  Y;�  Y;�  LMYYY0�  PQV�  �  �  T�  PQ�  �  �  T�  PQ�  �	  PQ�  �
  PQY�  W�  T�  P�  RR�  QY�  W�  T�  P�  RR�  QYY0�  PQV�  �  �  W�  T�  �  �  &PW�  T�  �  QV�  W�  T�  T�  �	  �  W�  T�  �  �  �  �	  PQ�  �  �  T�  PQ�  �  PQ�  �  T�  PQ�  �  �
  PQ�  �  PQYYY0�  PQV�  �	  PQ�  �
  PQ�  �  PQYYY0�  PQV�  �  P�  R�  T�  QYYY0�	  PQV�  �  �  T�  P�  T�  T�  �
  R�  T�  T�  R�	  R�  Q�  �  T�  P�  P�  R�  R�  R�  QQYYY0�
  PQV�  �  T�  P�  QYYY0�  P�  R�  QX�  V�  �  &P�  T�  PQ	�  QV�  .�  P�  R�  R�  R�  Q�  �  ;�   �  T�  �  ;�!  �  ;�"  �  ;�#  �  ;�$  �  P�  R�  Q�  �  )�%  �K  P�  R�  QV�  �!  �!  P�$  Q�  �"  �!  T�$  T�&  P�$  Q�  �  &P�"  
�!  T�'  PQQV�  .�!  T�(  �  �  �   �)  P�$  Q�  �#  �5  P�   T�*  PQR�  R�"  Q�  �$  �   T�+  PQ�#  �  �  .�  P�  R�  R�  R�  QYYY0�  PQV�  &P�  T�  PQ�  QV�  )�  �K  P�  R�  T�,  PQQV�  )�  �K  P�  R�  T�-  PQQV�  �  T�.  P�  R�  R�  P�  R�  QQYYY0�)  P�/  V�  QX�  V�  ;�0  �  P�  R�  Q�  )�1  �  V�  ;�2  �1  T�$  �/  �  �0  �2  T�+  PQP�1  T�3  �2  T�4  PQQ�  .�0  �  YYY0�!  P�/  V�  QX�5  V�  ;�!  �  L�  M�  ;�6  �  L�  MT�$  T�7  P�/  Q�  )�1  �  V�  ;�8  �1  T�$  T�7  P�/  Q�  &P�8  	�6  QV�  �!  �1  �  �6  �8  �  .�!  Y`           GDSC            5      ������ڶ   ���������������Ҷ���   �����϶�   ������¶   �����������������Ҷ�   ����������ڶ   �����������Ӷ���   ����Ķ��      Add Node      pressed       on_AddNode_pressed        newNodeRequested      Node Strength         Colour Chooser/NodeColour                                                        	   *   
   0      1      2      3      3YYB�  YY0�  PQV�  WT�  P�  RR�  QYY0�  PQV�  �  P�  RW�  T�  R�  W�  T�  QYYYY`  [gd_scene load_steps=5 format=2]

[ext_resource path="res://Node Strength.gd" type="Script" id=1]
[ext_resource path="res://Simulate Button.gd" type="Script" id=2]
[ext_resource path="res://UI Controller.gd" type="Script" id=3]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.156863, 0.156863, 0.156863, 1 )
border_color = Color( 0.239216, 0.239216, 0.239216, 1 )

[node name="UI" type="Control"]
anchor_left = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -1024.0
script = ExtResource( 3 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sidebar" type="Panel" parent="."]
anchor_left = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -136.0
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Node Strength" type="Panel" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -126.0
margin_top = -146.15
margin_right = -14.0
margin_bottom = -114.15
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Value" type="Label" parent="Node Strength"]
margin_left = 8.0
margin_right = 104.0
margin_bottom = 32.0
text = "2"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Title" type="Label" parent="Node Strength"]
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

[node name="Minus" type="Button" parent="Node Strength"]
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

[node name="Plus" type="Button" parent="Node Strength"]
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

[node name="Colour Chooser" type="Panel" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -126.0
margin_top = -212.0
margin_right = -14.0
margin_bottom = -172.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="NodeColour" type="ColorPickerButton" parent="Colour Chooser"]
margin_right = 48.0
margin_bottom = 41.0
color = Color( 1, 0, 0.0156863, 1 )
edit_alpha = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Label" type="Label" parent="Colour Chooser"]
margin_left = 60.416
margin_top = 13.416
margin_right = 101.416
margin_bottom = 27.416
text = "Colour"

[node name="Simulate Button" type="Button" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -126.0
margin_top = 24.6872
margin_right = -13.0
margin_bottom = 63.6872
text = "Simulate"
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Add Node" type="Button" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -126.0
margin_top = -98.7721
margin_right = -14.0
margin_bottom = -65.7721
text = "Add Node"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Clear Screen" type="Button" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -126.0
margin_top = -26.4072
margin_right = -15.0
margin_bottom = 7.59277
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
[remap]

path="res://Node Manager.gdc"
         [remap]

path="res://Node Strength.gdc"
        [remap]

path="res://Node.gdc"
 [remap]

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