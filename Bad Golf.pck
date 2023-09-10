GDPC                                                                                            X   res://.godot/exported/133200997/export-0101c1a6416a719b5de38002f1348b51-golf_hole.scn   0      �      ��$y=����9@�    \   res://.godot/exported/133200997/export-21462a096c3281c98a5069fa46bd2c1e-golf_hole_flag.scn  0      :      N�'Ji����)�1i�VA    X   res://.godot/exported/133200997/export-48c0540df3a39da2f6333d4fa75eab5f-root_scene.scn  @.      �      ź����t�Ѯ]�1���    X   res://.godot/exported/133200997/export-d966ae4a284b63c6f989597cc6f80597-golf_ball.scn   P      �      ��š��N�����f�    ,   res://.godot/global_script_class_cache.cfg                 ��Р�8���8~$}P�    P   res://.godot/imported/BadGolfTexture.png-43cff89b8ecf883f410a1f8c36f865ab.ctex                �W��=���@�e^�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      ^      2��r3��MgB�[79       res://.godot/uid_cache.bin  PI      �       �̉0��Ш���ֻ        res://BadGolfTexture.png.import @            �*��/ ��*��4�       res://golf_ball.tscn.remap  @7      f       �`J��№6Cu�l���       res://golf_ball_GDS.gd  0      �      Q\�e<�
&�B#�;-       res://golf_hole.tscn.remap  �7      f       ��t��\�s����z,r�       res://golf_hole_GDS.gd         c      ��!>C�!�N����kD�        res://golf_hole_flag.tscn.remap  8      k       @�?M�7��4�n~R}�       res://golf_hole_flag_GDS.gd p      �      ̒�Cۄac9>�hR��       res://icon.svg   9      N      ]��s�9^w/�����       res://icon.svg.import   �*      K       w���3���"� ��'       res://project.binary@J      �      �����tś�Qx��{V       res://root_scene.tscn.remap �8      g       �$�ƿRۉ%"��ނ-       res://root_scene_GDS.gd  6      ?      �C������qɨ9�    WMD���wlist=Array[Dictionary]([])
�woq�GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /����m$G>L���v:��6RS<����L�LE��2�N�
�_�HR����l���R���<� %��@{��}X�H5K�m;A#,�I�$���
b`�ykD�'���{����C�L�<�)3s^��nc�M���8��1^�����9s��S;���c��M����5fĘ��y%�{3��3�������Ǔ;�c���b�co���ۻ1��6�8���ۻ1^�����ۙ!��n����R�Xk�y��C4���k�e��i��Ƙ0֝��m+!"
�*"�֭n[��ΓBD�I�V��U^۶�)��*����ڶe 0��PJO��Rk]Gf���k)�T�F�|��h��UQV]Mv���O�"ʪu-.���.Z�H��p�97��ғ��RPU�vd%)�� *}�5�H)%D ���:6�"BkjD"��<�u�  ����o��n���������+�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://gfea3swg527s"
path="res://.godot/imported/BadGolfTexture.png-43cff89b8ecf883f410a1f8c36f865ab.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://BadGolfTexture.png"
dest_files=["res://.godot/imported/BadGolfTexture.png-43cff89b8ecf883f410a1f8c36f865ab.ctex"]

[params]

compress/mode=0
compress/high_quality=false
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
�(.NH?��RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset 	   _bundled       Script    res://golf_ball_GDS.gd ��������
   Texture2D    res://BadGolfTexture.png ��x>��      local://CircleShape2D_tsifq @         local://LabelSettings_0ipfw j         local://PackedScene_eorqx �         CircleShape2D            @@         LabelSettings                      PackedScene          	         names "   !   	   GolfBall    input_pickable    gravity_scale    lock_rotation    script    RigidBody2D    CollisionShape2D    shape 	   Sprite2D    texture    region_enabled    region_rect    Label    texture_filter    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical    scale    size_flags_horizontal    text    label_settings    horizontal_alignment    vertical_alignment    _on_input_event    input_event    	   variants                                                      �A  �A  �@  �@                  ?     P�     �B     �A      
     �>  �>            0                node_count             nodes     Q   ��������       ����                                                  ����                           ����   	      
                               ����                                          	      	      
                                                                   conn_count             conns                                        node_paths              editable_instances              version             RSRC86�l�extends RigidBody2D

@onready var sprite = $Sprite2D
@onready var lable = $Label
var clicked = false

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if clicked:
		if Input.is_action_just_released("mouse_left_click"):
			clicked = false
			score+=1
			lable.text = str(score)
			sprite.self_modulate =Color("white")
	pass


func _on_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("mouse_left_click"):
		apply_impulse(Vector2(randf_range(-50,50),randf_range(-50,50)))
		clicked = true
		sprite.self_modulate = Color("yellow_green")
	
		
	pass # Replace with function body.
��RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://golf_hole_GDS.gd ��������
   Texture2D    res://BadGolfTexture.png ��x>��   PackedScene    res://golf_hole_flag.tscn �X�ί��w      local://PackedScene_0lvmj w         PackedScene          	         names "      	   GolfHole    script    Area2D 	   Sprite2D    texture    region_enabled    region_rect    CollisionPolygon2D    polygon    GolfHoleFlag 	   position    _on_body_entered    body_entered    _on_in_hole    in_hole    _on_golf_hole_in_hole    	   variants                                      A   @  @A  �@%         �  �?  ��       �  ��   @  ��  �@       @  �?         
     @@  ��      node_count             nodes     (   ��������       ����                            ����                                       ����                     ���	         
                conn_count             conns                                                                                        node_paths              editable_instances              version             RSRC��RSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://golf_hole_flag_GDS.gd ��������
   Texture2D    res://BadGolfTexture.png ��x>��      local://RectangleShape2D_lsi5e �         local://PackedScene_lxmua �         RectangleShape2D       
      @  �?         PackedScene          	         names "   
      GolfHoleFlag    script    StaticBody2D 	   Sprite2D    texture    region_enabled    region_rect    CollisionShape2D 	   position    shape    	   variants                                              A  �A
     @�  �@                node_count             nodes     !   ��������       ����                            ����                                       ����         	                conn_count              conns               node_paths              editable_instances              version             RSRC����extends StaticBody2D

@onready var sprite = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_golf_hole_in_hole():
	sprite.region_rect.position.y += 16
	sprite.region_rect.position.x += 8
	pass # Replace with function body.
Y��9�>��8/���extends Area2D

@onready var sprite = $Sprite2D

signal in_hole

var is_hole_full = false
var is_hole_bad = false

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	if((is_hole_full == false) and body.is_in_group("GolfBall")):
		in_hole.emit()
		score = body.score
		body.queue_free()
		
		
	pass


func _on_in_hole():
	sprite.region_rect.position.y += 8
	pass # Replace with function body.
Њ?Y��1&d�e�KGST2   �   �      ����               � �        &  RIFF  WEBPVP8L  /������!"2�H�l�m�l�H�Q/H^��޷������d��g�(9�$E�Z��ߓ���'3���ض�U�j��$�՜ʝI۶c��3� [���5v�ɶ�=�Ԯ�m���mG�����j�m�m�_�XV����r*snZ'eS�����]n�w�Z:G9�>B�m�It��R#�^�6��($Ɓm+q�h��6�4mb�h3O���$E�s����A*DV�:#�)��)�X/�x�>@\�0|�q��m֋�d�0ψ�t�!&����P2Z�z��QF+9ʿ�d0��VɬF�F� ���A�����j4BUHp�AI�r��ِ���27ݵ<�=g��9�1�e"e�{�(�(m�`Ec\]�%��nkFC��d���7<�
V�Lĩ>���Qo�<`�M�$x���jD�BfY3�37�W��%�ݠ�5�Au����WpeU+.v�mj��%' ��ħp�6S�� q��M�׌F�n��w�$$�VI��o�l��m)��Du!SZ��V@9ד]��b=�P3�D��bSU�9�B���zQmY�M~�M<��Er�8��F)�?@`�:7�=��1I]�������3�٭!'��Jn�GS���0&��;�bE�
�
5[I��=i�/��%�̘@�YYL���J�kKvX���S���	�ڊW_�溶�R���S��I��`��?֩�Z�T^]1��VsU#f���i��1�Ivh!9+�VZ�Mr�טP�~|"/���IK
g`��MK�����|CҴ�ZQs���fvƄ0e�NN�F-���FNG)��W�2�JN	��������ܕ����2
�~�y#cB���1�YϮ�h�9����m������v��`g����]1�)�F�^^]Rץ�f��Tk� s�SP�7L�_Y�x�ŤiC�X]��r�>e:	{Sm�ĒT��ubN����k�Yb�;��Eߝ�m�Us�q��1�(\�����Ӈ�b(�7�"�Yme�WY!-)�L���L�6ie��@�Z3D\?��\W�c"e���4��AǘH���L�`L�M��G$𩫅�W���FY�gL$NI�'������I]�r��ܜ��`W<ߛe6ߛ�I>v���W�!a��������M3���IV��]�yhBҴFlr�!8Մ�^Ҷ�㒸5����I#�I�ڦ���P2R���(�r�a߰z����G~����w�=C�2������C��{�hWl%��и���O������;0*��`��U��R��vw�� (7�T#�Ƨ�o7�
�xk͍\dq3a��	x p�ȥ�3>Wc�� �	��7�kI��9F}�ID
�B���
��v<�vjQ�:a�J�5L&�F�{l��Rh����I��F�鳁P�Nc�w:17��f}u}�Κu@��`� @�������8@`�
�1 ��j#`[�)�8`���vh�p� P���׷�>����"@<�����sv� ����"�Q@,�A��P8��dp{�B��r��X��3��n$�^ ��������^B9��n����0T�m�2�ka9!�2!���]
?p ZA$\S��~B�O ��;��-|��
{�V��:���o��D��D0\R��k����8��!�I�-���-<��/<JhN��W�1���(�#2:E(*�H���{��>��&!��$| �~�+\#��8�> �H??�	E#��VY���t7���> 6�"�&ZJ��p�C_j����	P:�~�G0 �J��$�M���@�Q��Yz��i��~q�1?�c��Bߝϟ�n�*������8j������p���ox���"w���r�yvz U\F8��<E��xz�i���qi����ȴ�ݷ-r`\�6����Y��q^�Lx�9���#���m����-F�F.-�a�;6��lE�Q��)�P�x�:-�_E�4~v��Z�����䷳�:�n��,㛵��m�=wz�Ξ;2-��[k~v��Ӹ_G�%*�i� ����{�%;����m��g�ez.3���{�����Kv���s �fZ!:� 4W��޵D��U��
(t}�]5�ݫ߉�~|z��أ�#%���ѝ܏x�D4�4^_�1�g���<��!����t�oV�lm�s(EK͕��K�����n���Ӌ���&�̝M�&rs�0��q��Z��GUo�]'G�X�E����;����=Ɲ�f��_0�ߝfw�!E����A[;���ڕ�^�W"���s5֚?�=�+9@��j������b���VZ^�ltp��f+����Z�6��j�`�L��Za�I��N�0W���Z����:g��WWjs�#�Y��"�k5m�_���sh\���F%p䬵�6������\h2lNs�V��#�t�� }�K���Kvzs�>9>�l�+�>��^�n����~Ěg���e~%�w6ɓ������y��h�DC���b�KG-�d��__'0�{�7����&��yFD�2j~�����ټ�_��0�#��y�9��P�?���������f�fj6͙��r�V�K�{[ͮ�;4)O/��az{�<><__����G����[�0���v��G?e��������:���١I���z�M�Wۋ�x���������u�/��]1=��s��E&�q�l�-P3�{�vI�}��f��}�~��r�r�k�8�{���υ����O�֌ӹ�/�>�}�t	��|���Úq&���ݟW����ᓟwk�9���c̊l��Ui�̸z��f��i���_�j�S-|��w�J�<LծT��-9�����I�®�6 *3��y�[�.Ԗ�K��J���<�ݿ��-t�J���E�63���1R��}Ғbꨝט�l?�#���ӴQ��.�S���U
v�&�3�&O���0�9-�O�kK��V_gn��k��U_k˂�4�9�v�I�:;�w&��Q�ҍ�
��fG��B��-����ÇpNk�sZM�s���*��g8��-���V`b����H���
3cU'0hR
�w�XŁ�K݊�MV]�} o�w�tJJ���$꜁x$��l$>�F�EF�޺�G�j�#�G�t�bjj�F�б��q:�`O�4�y�8`Av<�x`��&I[��'A�˚�5��KAn��jx ��=Kn@��t����)�9��=�ݷ�tI��d\�M�j�B�${��G����VX�V6��f�#��V�wk ��W�8�	����lCDZ���ϖ@���X��x�W�Utq�ii�D($�X��Z'8Ay@�s�<�x͡�PU"rB�Q�_�Q6  I�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bhhysc2431dy6"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.svg"
dest_files=["res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"]

[params]

compress/mode=0
compress/high_quality=false
compress/lossy_quality=0.7
compress/hdr_compression=1
compress/normal_map=0
compress/channel_pack=0
mipmaps/generate=false
mipmaps/limit=-1
roughness/mode=0
roughness/src_normal=""
process/fix_alpha_border=true
process/premult_alpha=false
process/normal_map_invert_y=false
process/hdr_as_srgb=false
process/hdr_clamp_exposure=false
process/size_limit=0
detect_3d/compress_to=1
svg/scale=1.0
editor/scale_with_editor_scale=false
editor/convert_colors_with_editor_theme=false
��0SRSRC                     PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    a    b 	   _bundled       Script    res://root_scene_GDS.gd ��������   PackedScene    res://golf_ball.tscn ��`1}   PackedScene    res://golf_hole.tscn {,��A      local://PhysicsMaterial_d13qu �         local://SegmentShape2D_akwjs �         local://SegmentShape2D_ikbnl 	         local://SegmentShape2D_fm5kf H         local://SegmentShape2D_y3dui �         local://PackedScene_4dip0 �         PhysicsMaterial          �G�>      �Ga?         SegmentShape2D       
     �    	   
     �B             SegmentShape2D       
     ��  <B	   
     �B  @B         SegmentShape2D       
         ��	   
         �B         SegmentShape2D       
         ��	   
         �B         PackedScene    
      	         names "      
   RootScene    script    Node2D 	   GolfBall 	   position    physics_material_override 	   GolfHole 	   Camera2D    zoom    StaticBody2D    wall    shape    CollisionShape2D    wall2    wall3    wall4    	   variants                          
         ��                   
     �@  �@
     �?  �B         
         ��         
     ��  ��         
     �B                   node_count    	         nodes     W   ��������       ����                      ���                                 ���                            ����                     	   	   ����                  
   ����                                ����            	                    ����      
                          ����                         conn_count              conns               node_paths              editable_instances              version             RSRCF&[ń؛�rc��extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("reload"):
		get_tree().reload_current_scene()
	pass
�[remap]

path="res://.godot/exported/133200997/export-d966ae4a284b63c6f989597cc6f80597-golf_ball.scn"
��X��	��[remap]

path="res://.godot/exported/133200997/export-0101c1a6416a719b5de38002f1348b51-golf_hole.scn"
ՙ!Q�|vjh6[remap]

path="res://.godot/exported/133200997/export-21462a096c3281c98a5069fa46bd2c1e-golf_hole_flag.scn"
� >=[remap]

path="res://.godot/exported/133200997/export-48c0540df3a39da2f6333d4fa75eab5f-root_scene.scn"
t�*��%��<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><g transform="translate(32 32)"><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99z" fill="#363d52"/><path d="m-16-32c-8.86 0-16 7.13-16 15.99v95.98c0 8.86 7.13 15.99 16 15.99h96c8.86 0 16-7.13 16-15.99v-95.98c0-8.85-7.14-15.99-16-15.99zm0 4h96c6.64 0 12 5.35 12 11.99v95.98c0 6.64-5.35 11.99-12 11.99h-96c-6.64 0-12-5.35-12-11.99v-95.98c0-6.64 5.36-11.99 12-11.99z" fill-opacity=".4"/></g><g stroke-width="9.92746" transform="matrix(.10073078 0 0 .10073078 12.425923 2.256365)"><path d="m0 0s-.325 1.994-.515 1.976l-36.182-3.491c-2.879-.278-5.115-2.574-5.317-5.459l-.994-14.247-27.992-1.997-1.904 12.912c-.424 2.872-2.932 5.037-5.835 5.037h-38.188c-2.902 0-5.41-2.165-5.834-5.037l-1.905-12.912-27.992 1.997-.994 14.247c-.202 2.886-2.438 5.182-5.317 5.46l-36.2 3.49c-.187.018-.324-1.978-.511-1.978l-.049-7.83 30.658-4.944 1.004-14.374c.203-2.91 2.551-5.263 5.463-5.472l38.551-2.75c.146-.01.29-.016.434-.016 2.897 0 5.401 2.166 5.825 5.038l1.959 13.286h28.005l1.959-13.286c.423-2.871 2.93-5.037 5.831-5.037.142 0 .284.005.423.015l38.556 2.75c2.911.209 5.26 2.562 5.463 5.472l1.003 14.374 30.645 4.966z" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 919.24059 771.67186)"/><path d="m0 0v-47.514-6.035-5.492c.108-.001.216-.005.323-.015l36.196-3.49c1.896-.183 3.382-1.709 3.514-3.609l1.116-15.978 31.574-2.253 2.175 14.747c.282 1.912 1.922 3.329 3.856 3.329h38.188c1.933 0 3.573-1.417 3.855-3.329l2.175-14.747 31.575 2.253 1.115 15.978c.133 1.9 1.618 3.425 3.514 3.609l36.182 3.49c.107.01.214.014.322.015v4.711l.015.005v54.325c5.09692 6.4164715 9.92323 13.494208 13.621 19.449-5.651 9.62-12.575 18.217-19.976 26.182-6.864-3.455-13.531-7.369-19.828-11.534-3.151 3.132-6.7 5.694-10.186 8.372-3.425 2.751-7.285 4.768-10.946 7.118 1.09 8.117 1.629 16.108 1.846 24.448-9.446 4.754-19.519 7.906-29.708 10.17-4.068-6.837-7.788-14.241-11.028-21.479-3.842.642-7.702.88-11.567.926v.006c-.027 0-.052-.006-.075-.006-.024 0-.049.006-.073.006v-.006c-3.872-.046-7.729-.284-11.572-.926-3.238 7.238-6.956 14.642-11.03 21.479-10.184-2.264-20.258-5.416-29.703-10.17.216-8.34.755-16.331 1.848-24.448-3.668-2.35-7.523-4.367-10.949-7.118-3.481-2.678-7.036-5.24-10.188-8.372-6.297 4.165-12.962 8.079-19.828 11.534-7.401-7.965-14.321-16.562-19.974-26.182 4.4426579-6.973692 9.2079702-13.9828876 13.621-19.449z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 104.69892 525.90697)"/><path d="m0 0-1.121-16.063c-.135-1.936-1.675-3.477-3.611-3.616l-38.555-2.751c-.094-.007-.188-.01-.281-.01-1.916 0-3.569 1.406-3.852 3.33l-2.211 14.994h-31.459l-2.211-14.994c-.297-2.018-2.101-3.469-4.133-3.32l-38.555 2.751c-1.936.139-3.476 1.68-3.611 3.616l-1.121 16.063-32.547 3.138c.015-3.498.06-7.33.06-8.093 0-34.374 43.605-50.896 97.781-51.086h.066.067c54.176.19 97.766 16.712 97.766 51.086 0 .777.047 4.593.063 8.093z" fill="#478cbf" transform="matrix(4.162611 0 0 -4.162611 784.07144 817.24284)"/><path d="m0 0c0-12.052-9.765-21.815-21.813-21.815-12.042 0-21.81 9.763-21.81 21.815 0 12.044 9.768 21.802 21.81 21.802 12.048 0 21.813-9.758 21.813-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 389.21484 625.67104)"/><path d="m0 0c0-7.994-6.479-14.473-14.479-14.473-7.996 0-14.479 6.479-14.479 14.473s6.483 14.479 14.479 14.479c8 0 14.479-6.485 14.479-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 367.36686 631.05679)"/><path d="m0 0c-3.878 0-7.021 2.858-7.021 6.381v20.081c0 3.52 3.143 6.381 7.021 6.381s7.028-2.861 7.028-6.381v-20.081c0-3.523-3.15-6.381-7.028-6.381" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 511.99336 724.73954)"/><path d="m0 0c0-12.052 9.765-21.815 21.815-21.815 12.041 0 21.808 9.763 21.808 21.815 0 12.044-9.767 21.802-21.808 21.802-12.05 0-21.815-9.758-21.815-21.802" fill="#fff" transform="matrix(4.162611 0 0 -4.162611 634.78706 625.67104)"/><path d="m0 0c0-7.994 6.477-14.473 14.471-14.473 8.002 0 14.479 6.479 14.479 14.473s-6.477 14.479-14.479 14.479c-7.994 0-14.471-6.485-14.471-14.479" fill="#414042" transform="matrix(4.162611 0 0 -4.162611 656.64056 631.05679)"/></g></svg>
�   ���hm((   res://icon.svg%nE�v;   res://root_scene.tscn��x>��   res://BadGolfTexture.png��`1}   res://golf_ball.tscn�$}8�@Z   res://golf_hole.tscn�X�ί��w   res://golf_hole_flag.tscn{,��A   res://golf_hole.tscn�8J��ECFG      application/config/name         Bad Golf   application/run/main_scene          res://root_scene.tscn      application/config/features(   "         4.0    GL Compatibility       application/config/icon         res://icon.svg     dotnet/project/assembly_name         Bad Golf   input/mouse_left_click�              events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask          position     "C  �A   global_position      &C  tB   factor       �?   button_index         pressed          double_click          script            deadzone      ?   input/reload`              events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   R   	   key_label             unicode    r      echo          script            InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask          position     �B  �A   global_position      �B  �B   factor       �?   button_index         pressed          double_click          script            deadzone      ?#   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility2   rendering/environment/defaults/default_clear_color      ���>���>���>  �?9   rendering/textures/canvas_textures/default_texture_filter          ��܍��