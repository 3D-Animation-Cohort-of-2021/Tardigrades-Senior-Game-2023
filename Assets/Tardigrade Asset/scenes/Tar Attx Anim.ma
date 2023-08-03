//Maya ASCII 2023 scene
//Name: Tar Attx Anim.ma
//Last modified: Fri, Apr 07, 2023 03:46:06 PM
//Codeset: 1252
file -rdi 1 -ns "Tar_Rig" -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Project//scenes/Tar_Rig.ma";
file -r -ns "Tar_Rig" -dr 1 -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Project//scenes/Tar_Rig.ma";
requires maya "2023";
requires "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
requires "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "6BC8D3F0-4F78-0797-9F66-07A0EA77D83B";
createNode transform -s -n "persp";
	rename -uid "2F2AE41C-4009-B2E2-17DE-7C945F5A10CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.40448192999609 6.9014935585636472 9.3848548412548318 ;
	setAttr ".r" -type "double3" -18.938352726022181 1033.4000000001354 1.1572596763299714e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "36A4BFC4-4E5A-9849-E770-AE9371951C3D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.032256885334654;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.99766307111249197 0.77757888576479783 3.5422488814353477 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "EF17C88D-4BB4-AC8B-2FF8-2C8ED27622BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BD941731-4526-30ED-4D6F-BAB71B21C9EC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C0B3148B-49D1-0665-101C-D09894645E90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B64B1701-434E-576E-7E68-D7866C0D87F6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0E5A4D83-4CEA-3642-314C-8EA75352BFE3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7D667D99-4608-02A5-CDDD-21A5B147DDF7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B7F678A2-417B-9D17-D65B-5B8B4BC7606D";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2356590F-4FAB-0B8F-F419-F190E43F3388";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0A63ADC4-45C8-CC29-2C17-A18874900C6D";
createNode displayLayerManager -n "layerManager";
	rename -uid "D2A8861B-4176-E4D8-9FF3-4A8A006D1F3F";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "91F2EFD1-4AC9-9289-637A-77857685190D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1BD7261D-4535-31DF-BA0F-82B6150BEBB0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9C1D957E-4EBA-9042-5229-8C93806D5FC6";
	setAttr ".g" yes;
createNode reference -n "Tar_RigRN";
	rename -uid "7E1155C3-4CF2-9D7A-29DF-5491BA4AB27F";
	setAttr -s 54 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Tar_RigRN"
		"Tar_RigRN" 0
		"Tar_Rig:Tar_retpRN" 0
		"Tar_RigRN" 98
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LFLIKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RFLIKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LM1IKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RM1IKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LM2IKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RM2IKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LBLIKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RBLIKFK" " -k 1"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_IK_01_Ctrl_Grp|Tar_Rig:R_FL_IK_01_Ctrl|Tar_Rig:R_FL_IK_PV_Ctrl_Grp|Tar_Rig:R_FL_IK_PV_Offset_Grp|Tar_Rig:R_FL_IK_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_IK_01_Ctrl_Grp|Tar_Rig:L_BL_IK_01_Ctrl|Tar_Rig:L_BL_IK_PV_Ctrl_Grp|Tar_Rig:L_BL_IK_PV_Offset_Grp|Tar_Rig:L_BL_IK_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_IK_01_Ctrl_Grp|Tar_Rig:R_BL_IK_01_Ctrl|Tar_Rig:R_BL_IK_PV_Ctrl_Grp|Tar_Rig:R_BL_IK_PV_Offset_Grp|Tar_Rig:R_BL_IK_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M1L_IK_02_Ctrl_Grp|Tar_Rig:R_M1L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M2L_IK_02_Ctrl_Grp|Tar_Rig:R_M2L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M1L_IK_02_Ctrl_Grp|Tar_Rig:L_M1L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghosting" 
		" 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostingMode" 
		" 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostPreFrames" 
		" 2"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostPostFrames" 
		" 2"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostsStep" 
		" 1"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostFrames" 
		" -type \"Int32Array\" 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostOpacityRange" 
		" -type \"float2\" 0.074000000999999996 0.121"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostColorPre" 
		" -type \"float3\" 0.41999998999999999 0.93959700999999995 0.93959700999999995"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_base_geo|Tar_Rig:Tar_base_geoShapeDeformed" "ghostColorPost" 
		" -type \"float3\" 0.87800001999999999 0.67799997000000001 0.66299998999999998"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_Fire_geo" "visibility" " 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_Fire_geo|Tar_Rig:Tar_Fire_geoShapeDeformed" "visibility" 
		" -k 0 1"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_Rock_geo" "visibility" " 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_Rock_geo|Tar_Rig:Tar_Rock_geoShapeDeformed" "visibility" 
		" -k 0 1"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_Water_geo" "visibility" " 0"
		2 "|Tar_Rig:Geo|Tar_Rig:Tar_Water_geo|Tar_Rig:Tar_Water_geoShapeDeformed" 
		"visibility" " -k 0 1"
		2 "Tar_Rig:Rig_Layer" "displayType" " 2"
		2 "Tar_Rig:Rig_Layer" "visibility" " 0"
		2 "Tar_Rig:Ctrls_Layer" "visibility" " 1"
		2 "Tar_Rig:Ctrls_Layer" "displayOrder" " 3"
		2 "Tar_Rig:Tar_retp:Base_Geo" "visibility" " 1"
		2 "Tar_Rig:Tar_retp:Base_Geo" "displayOrder" " 2"
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LFLIKFK" 
		"Tar_RigRN.placeHolderList[1]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RFLIKFK" 
		"Tar_RigRN.placeHolderList[2]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LM1IKFK" 
		"Tar_RigRN.placeHolderList[3]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RM1IKFK" 
		"Tar_RigRN.placeHolderList[4]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LM2IKFK" 
		"Tar_RigRN.placeHolderList[5]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RM2IKFK" 
		"Tar_RigRN.placeHolderList[6]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LBLIKFK" 
		"Tar_RigRN.placeHolderList[7]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RBLIKFK" 
		"Tar_RigRN.placeHolderList[8]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog.translateY" 
		"Tar_RigRN.placeHolderList[9]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog.translateZ" 
		"Tar_RigRN.placeHolderList[10]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog.rotateX" 
		"Tar_RigRN.placeHolderList[11]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[12]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[13]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[14]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[15]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[16]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[17]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[18]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleX" 
		"Tar_RigRN.placeHolderList[19]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleY" 
		"Tar_RigRN.placeHolderList[20]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleZ" 
		"Tar_RigRN.placeHolderList[21]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_IK_01_Ctrl_Grp|Tar_Rig:R_FL_IK_01_Ctrl|Tar_Rig:R_FL_IK_PV_Ctrl_Grp|Tar_Rig:R_FL_IK_PV_Offset_Grp|Tar_Rig:R_FL_IK_PV_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[22]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[23]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[24]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[25]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[26]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[27]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[28]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[29]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[30]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[31]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[32]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[33]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[34]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[35]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[36]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[37]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[38]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[39]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[40]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[41]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[42]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_IK_01_Ctrl_Grp|Tar_Rig:L_BL_IK_01_Ctrl|Tar_Rig:L_BL_IK_PV_Ctrl_Grp|Tar_Rig:L_BL_IK_PV_Offset_Grp|Tar_Rig:L_BL_IK_PV_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[43]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_IK_01_Ctrl_Grp|Tar_Rig:R_BL_IK_01_Ctrl|Tar_Rig:R_BL_IK_PV_Ctrl_Grp|Tar_Rig:R_BL_IK_PV_Offset_Grp|Tar_Rig:R_BL_IK_PV_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[44]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[45]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M1L_IK_02_Ctrl_Grp|Tar_Rig:R_M1L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[46]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M2L_IK_02_Ctrl_Grp|Tar_Rig:R_M2L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[47]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[48]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[49]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[50]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[51]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M2L_IK_02_Ctrl_Grp|Tar_Rig:L_M2L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[52]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M1L_IK_02_Ctrl_Grp|Tar_Rig:L_M1L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[53]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_FL_IK_02_Ctrl_Grp|Tar_Rig:L_FL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[54]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "001704AE-42BA-308E-B1A6-88B00CC5A871";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 497\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n"
		+ "                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 497\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 497\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CA4D93F9-4FC3-4135-5FB3-4C85479CEADF";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Cog_translateZ";
	rename -uid "1DB24319-41AD-3356-404E-C984579899E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 -0.39644786919990871 5 0 12 4.8110991229829745
		 16 4.8635644183604194 21 4.811099 29 0;
	setAttr -s 7 ".kit[0:6]"  16 18 18 1 18 2 18;
	setAttr -s 7 ".kot[0:6]"  16 18 18 2 18 1 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
	setAttr -s 7 ".kix[3:6]"  0.037748355797773171 1 0.96972259044711895 
		1;
	setAttr -s 7 ".kiy[3:6]"  0.99928727683012397 0 -0.24420912672651918 
		0;
	setAttr -s 7 ".kox[5:6]"  1 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTU -n "Head_Ctrl_scaleX";
	rename -uid "5EE6CFE1-450E-774D-4F75-4FA23B0AD52E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 17 1.1940564567051393 19 1.1940564567051393
		 22 1;
	setAttr -s 4 ".kit[1:3]"  1 1 18;
	setAttr -s 4 ".kot[1:3]"  2 1 18;
	setAttr -s 4 ".ktl[1:3]" no no yes;
	setAttr -s 4 ".kix[1:3]"  0.15472008760782763 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.98795834653624248 0 0;
	setAttr -s 4 ".kox[2:3]"  0.30432282362507218 1;
	setAttr -s 4 ".koy[2:3]"  -0.95256895761979521 0;
createNode animCurveTU -n "Head_Ctrl_scaleY";
	rename -uid "7B4A6EF2-4236-A6DC-0872-198CC57B3811";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 17 1.1940564567051393 19 1.1940564567051393
		 22 1;
	setAttr -s 4 ".kit[1:3]"  1 1 18;
	setAttr -s 4 ".kot[1:3]"  2 1 18;
	setAttr -s 4 ".ktl[0:3]" no no no no;
	setAttr -s 4 ".kix[1:3]"  0.15472008760782763 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.98795834653624248 0 0;
	setAttr -s 4 ".kox[2:3]"  0.30432282362507218 1;
	setAttr -s 4 ".koy[2:3]"  -0.95256895761979521 0;
createNode animCurveTU -n "Head_Ctrl_scaleZ";
	rename -uid "00362F4A-4294-C2D6-7CD3-CD8F4E32142B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 17 1.1940564567051393 19 1.1940564567051393
		 22 1;
	setAttr -s 4 ".kit[1:3]"  1 1 18;
	setAttr -s 4 ".kot[1:3]"  2 1 18;
	setAttr -s 4 ".ktl[1:3]" no no yes;
	setAttr -s 4 ".kix[1:3]"  0.15472008760782763 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.98795834653624248 0 0;
	setAttr -s 4 ".kox[2:3]"  0.30432282362507218 1;
	setAttr -s 4 ".koy[2:3]"  -0.95256895761979521 0;
createNode animCurveTA -n "Head_Ctrl_rotateZ";
	rename -uid "DA10BEF5-4837-A110-5637-9EA50E02F1ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  10 0 12 -28.43418221315202 14 -28.43418221315202
		 16 -6.0764437248408587 17 22.979708440556156 19 22.979754161644408 23 0;
	setAttr -s 7 ".kit[1:6]"  2 18 10 2 18 18;
	setAttr -s 7 ".kot[1:6]"  2 18 10 2 18 18;
createNode animCurveTU -n "Transform_Ctrl_LM2IKFK";
	rename -uid "870BDE65-4800-2493-87BD-1F998805B3A0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 18 10;
createNode animCurveTU -n "Transform_Ctrl_LFLIKFK";
	rename -uid "2A20DC6F-439C-99C0-762C-E8BBC89B1C4C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 10 10;
createNode animCurveTU -n "Transform_Ctrl_RFLIKFK";
	rename -uid "1A2312B9-4078-F81B-0B90-F1A736D9C82A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 10 10;
createNode animCurveTU -n "Transform_Ctrl_LM1IKFK";
	rename -uid "881BD7BA-4BAB-5BC0-E51D-399808673358";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 18 10;
createNode animCurveTU -n "Transform_Ctrl_RM1IKFK";
	rename -uid "03575C26-4126-8D5B-D910-038301E719A2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 18 10;
createNode animCurveTU -n "Transform_Ctrl_RM2IKFK";
	rename -uid "37FF9064-4956-DE0D-7C6B-84B8B14DF5D3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 18 10;
createNode animCurveTU -n "Transform_Ctrl_LBLIKFK";
	rename -uid "8BF35BB0-411A-889B-5228-839676940F48";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 18 10;
createNode animCurveTU -n "Transform_Ctrl_RBLIKFK";
	rename -uid "5ABB0BA8-45D4-2A32-1018-BC9795ABD964";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1 12 0 24 1 29 0;
	setAttr -s 5 ".kit[0:4]"  18 18 18 18 10;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateX";
	rename -uid "17E93F5D-4241-6A53-7412-1FA034E1BC98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -19.660803313882063 7 -20.255752393263691
		 8 -18.831186364586706 9 4.1085418344184549e-16 10 -7.4384082337701551 11 0.2800962448768704
		 24 -1.1140383196571197 28 -26.782316881064954;
	setAttr -s 9 ".kit[7:8]"  10 10;
	setAttr -s 9 ".kot[7:8]"  10 10;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateY";
	rename -uid "F3E9CDF7-4975-D493-8836-C5AB4F8AFF2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 6 21.468469061510074 8 32.084222505167986
		 10 -5.1914662961524654 11 -2.0733212912147971 24 -17.97039362890753 26 5.8695724608347968
		 28 17.479865524701669;
	setAttr -s 8 ".kit[5:7]"  10 10 10;
	setAttr -s 8 ".kot[5:7]"  10 10 10;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateZ";
	rename -uid "260F14FD-4BA4-8692-CB52-F1929F7000C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -7.3380515519947336 7 -15.607042226133368
		 9 27.706675066778001 10 18.120392308817632 11 7.9440552764160541 24 9.3953238148474192
		 26 32.423657405673232 28 -13.13283272685266;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateX";
	rename -uid "3712F096-47FC-D9E2-A3E2-39863C851926";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -0.13954357539818615 7 -5.8322865535250079
		 8 -6.359599839252466 10 10.931447767110901 11 -1.2681360258853436 24 -0.65022143914352537
		 26 -7.3546589886424201 28 -6.6093203181173514;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateY";
	rename -uid "82E6F681-46B5-E18D-2D17-A2A4D472EA48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 16.634936955857825 7 21.462669098716482
		 10 -28.30051275979449 11 -21.916441798296173 24 -36.328291232286951 28 13.553107540259766;
	setAttr -s 7 ".kit[5:6]"  10 10;
	setAttr -s 7 ".kot[5:6]"  10 10;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "A81834B9-4EEE-3F8C-061D-DA930A54B784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 7 -2.1166192377170954 8 26.168901366027537
		 9 32.513251781571292 10 13.233513138604625 11 4.4090964616306376 24 1.4816490456191469
		 26 25.306346526511092 28 1.3040047216129607;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 18 18 10 10 
		10;
	setAttr -s 9 ".ktl[0:8]" no yes yes yes yes yes yes yes yes;
	setAttr -s 9 ".kox[0:8]"  0.82288279776980766 1 0.13658446301845673 
		1 0.16749122984394754 0.96221586593603015 0.86369319047517323 0.99982701150974862 
		0.19510155043790847;
	setAttr -s 9 ".koy[0:8]"  -0.56821114133263328 0 0.99062842906003845 
		0 -0.98587356589238251 -0.27228776568361596 0.50401792897357933 -0.01859965202591092 
		-0.98078304686445528;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateX";
	rename -uid "5E7D2CBC-4C29-CA33-DE39-23BF1AE216A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 7 -3.1706316462428825 8 -2.8532703909173862
		 9 -3.4303230905945044 11 16.189749756723604 24 9.3225623656205947 28 -7.5406678602216601;
	setAttr -s 7 ".kit[5:6]"  10 10;
	setAttr -s 7 ".kot[5:6]"  10 10;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateY";
	rename -uid "BCF44A34-4AB3-867C-2049-6DA4498443D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 9.465435716882963 7 14.783456660587554
		 8 15.316812306909227 10 -23.369631900434047 11 -24.145267891269544 24 -35.246739144420033
		 26 -19.639932899802602 28 16.900055277797019;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "EF0112FC-4B55-835A-98B4-93A7F1DB619E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  5 0 6 -0.20629833584519602 7 8.1604657744345879
		 8 30.667466083664085 9 35.333215187346475 10 19.082989629100588 11 12.179774307116066
		 24 5.5013060336315185 26 35.983908711866874 28 -0.2812649726985636;
	setAttr -s 10 ".kit[7:9]"  10 10 10;
	setAttr -s 10 ".kot[7:9]"  10 10 10;
createNode animCurveTA -n "R_BL_FK_01_Ctrl_rotateX";
	rename -uid "38663FD2-47A1-7ECD-DD0B-B387C09E9948";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 7 -1.8132391233588721 9 8.7146758914006917
		 10 6.5371364384644979 11 14.521610468097272 24 40.209819373373108 26 3.2496140779946621
		 28 -2.1398014762602049;
	setAttr -s 8 ".kit[5:7]"  10 10 10;
	setAttr -s 8 ".kot[5:7]"  10 10 10;
createNode animCurveTA -n "R_BL_FK_01_Ctrl_rotateY";
	rename -uid "D64D41E5-4651-30AA-19B8-E8830E9D528B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 12.732469748533543 8 6.1312182713588763
		 9 -23.2607562580862 10 -27.070415624344747 11 -24.124870166386717 24 -51.239762724518222
		 26 -38.887705007251434 28 13.492295288940358;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "R_BL_FK_01_Ctrl_rotateZ";
	rename -uid "B3DFFE97-40C9-40EE-1717-F9A4F3D7230C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -3.8228473877518634 8 34.23880659914785
		 9 32.379234167491447 10 6.6553372165460578 11 5.6779358808405425 24 -28.237480670470987
		 26 24.781633120351309 28 7.2612685253309825;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "Spine_03_Ctrl_rotateZ";
	rename -uid "D1FD5068-404A-1CB1-CAF3-B1969677D5D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 11.490750857184093 12 11.490750857184093
		 14 4.9500351231534614 24 4.9500351231534614 29 0;
	setAttr -s 6 ".kit[4:5]"  10 18;
	setAttr -s 6 ".kot[4:5]"  10 18;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateY";
	rename -uid "2EC51F11-46E1-6F12-17D0-259457DF69D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 -0.15950110748029933 23 -0.15950110748029933
		 29 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 5;
	setAttr -s 4 ".kix[2:3]"  1 0.84303438446140289;
	setAttr -s 4 ".kiy[2:3]"  0 0.53785967186226513;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "R_FL_IK_02_Ctrl_translateZ";
	rename -uid "3A4DA001-45D1-2F85-E357-8095A76FDFBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 12 4.3714617462967862 23 4.3714617462967862
		 29 0;
	setAttr -s 5 ".kit[3:4]"  1 10;
	setAttr -s 5 ".kot[3:4]"  1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.05709581607198521;
	setAttr -s 5 ".kiy[3:4]"  0 -0.99836870332912275;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "R_FL_IK_PV_Ctrl_translateZ";
	rename -uid "9B7EE038-49AA-AA0B-7DE2-E8BAC7C03EF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 0 12 0.52590490119211253;
createNode animCurveTA -n "Cog_rotateX";
	rename -uid "B301C8F1-4883-8044-C060-E19EA58D5A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  13 0 16 -6.3143046889843779 21 -6.3143046889843779
		 25 0;
	setAttr -s 4 ".kit[1:3]"  2 18 18;
	setAttr -s 4 ".kot[1:3]"  2 18 18;
createNode animCurveTL -n "R_M1L_IK_02_Ctrl_translateZ";
	rename -uid "E968F7AC-48F7-2855-7F96-D0B9537A9CC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1102230246251565e-16 11 1.1102230246251565e-16
		 12 4.7368415749957027 23 4.7368415749957027 29 0;
	setAttr -s 5 ".kit[0:4]"  10 18 18 1 10;
	setAttr -s 5 ".kot[0:4]"  10 18 18 1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.052704430781772435;
	setAttr -s 5 ".kiy[3:4]"  0 -0.9986101556543322;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "R_M2L_IK_02_Ctrl_translateZ";
	rename -uid "8B29F16E-44F3-3D41-9B60-D080CEA1DBEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1102230246251565e-16 11 1.1102230246251565e-16
		 12 4.7961813555388986 23 4.7961813555388986 29 0;
	setAttr -s 5 ".kit[0:4]"  10 18 18 1 10;
	setAttr -s 5 ".kot[0:4]"  10 18 18 1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.052054133827381596;
	setAttr -s 5 ".kiy[3:4]"  0 -0.99864426456645761;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateZ";
	rename -uid "9001EFE5-4714-CD98-BB9C-CB88F6BE749B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 12 5.0910172421125708 23 5.0910172421125708
		 29 0;
	setAttr -s 5 ".kit[0:4]"  10 18 18 1 10;
	setAttr -s 5 ".kot[0:4]"  10 18 18 1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.049046999067253391;
	setAttr -s 5 ".kiy[3:4]"  0 -0.99879647170106522;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateZ";
	rename -uid "3A9FAC16-4F8B-96F7-EFAC-C5A130790589";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 0 14 2.3253221271975195 19 2.3253221271975195
		 21 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "Cog_translateY";
	rename -uid "C6CB571F-4FA5-DA04-2AB7-31BEF4B1C6A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -0.096151590826448086 5 0 9 0.25045492069934067
		 12 0 16 0.078212679069026278 20 0.078212679069026278 22 -0.094821154983842693 25 0.30662493141767511
		 29 0;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateX";
	rename -uid "00BD4BED-4F86-61FF-C9FB-55AAC40D1E1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -19.660803313882063 7 -20.255752393263691
		 8 -18.831186364586706 9 4.1085418344184549e-16 10 -7.4384082337701551 11 0.2800962448768704
		 24 -1.1140383196571197 28 -26.782316881064954;
	setAttr -s 9 ".kit[7:8]"  10 10;
	setAttr -s 9 ".kot[7:8]"  10 10;
createNode shapeEditorManager -n "Tar_Rig:shapeEditorManager1";
	rename -uid "18C354CA-432D-E233-A02F-AB8542DA0723";
createNode poseInterpolatorManager -n "Tar_Rig:poseInterpolatorManager1";
	rename -uid "012A0D4D-4A5A-1BA8-8B51-A4BA119A9D77";
createNode renderLayerManager -n "Tar_Rig:renderLayerManager1";
	rename -uid "D846E684-49C2-4661-B3B2-4F9CDA4D83E0";
createNode renderLayer -n "Tar_Rig:defaultRenderLayer1";
	rename -uid "CDD300BF-49C0-3264-E2DE-969C63A2A126";
	setAttr ".g" yes;
createNode shapeEditorManager -n "Tar_Rig:Tar_retp:shapeEditorManager1";
	rename -uid "374CE0B7-403E-CAFE-CA00-1596D4E57FDE";
createNode poseInterpolatorManager -n "Tar_Rig:Tar_retp:poseInterpolatorManager1";
	rename -uid "FB84980C-425A-12A0-DB1B-78BAF5018EA2";
createNode renderLayerManager -n "Tar_Rig:Tar_retp:renderLayerManager1";
	rename -uid "C10E8A53-4EA3-1451-060C-89B3B42206D2";
createNode renderLayer -n "Tar_Rig:Tar_retp:defaultRenderLayer1";
	rename -uid "61B835B8-43FE-F01C-A21F-4B96BB4CEB16";
	setAttr ".g" yes;
createNode polyUnite -n "Tar_Rig:Tar_retp:polyUnite2";
	rename -uid "5CD3613C-4A18-8CDF-8B0D-67BCB903A31A";
createNode lambert -n "Tar_Rig:Tar_retp:Body1";
	rename -uid "93BD1C30-4983-C3DE-DBBD-49B90DCDAA83";
createNode shadingEngine -n "Tar_Rig:Tar_retp:lambert2SG1";
	rename -uid "D27F8020-4251-0F33-67B1-9FB9B3422958";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Tar_Rig:Tar_retp:materialInfo6";
	rename -uid "738CAB1E-4E4B-AD3A-E10C-68906D204CA1";
createNode lambert -n "Tar_Rig:Tar_retp:Rock1";
	rename -uid "340DEEF4-41A9-66A7-7C04-E79E9191B080";
createNode shadingEngine -n "Tar_Rig:Tar_retp:lambert3SG1";
	rename -uid "A33662F7-405D-A767-22E6-93B8E409A2EE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Tar_Rig:Tar_retp:materialInfo7";
	rename -uid "3824FCCD-49F2-7D1A-9462-A8A0A223AE98";
createNode lambert -n "Tar_Rig:Tar_retp:Water1";
	rename -uid "D1A72CD6-4D86-D838-F579-1C9A3D7960A8";
createNode shadingEngine -n "Tar_Rig:Tar_retp:lambert4SG1";
	rename -uid "3FAEA5FA-4B86-E7B4-00CF-369A89016DD8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Tar_Rig:Tar_retp:materialInfo8";
	rename -uid "9F926F42-457E-9381-38B6-2D807724B76A";
createNode lambert -n "Tar_Rig:Tar_retp:Fire1";
	rename -uid "84B8ED5A-42BE-8D9F-2B10-72A81DC7D103";
createNode shadingEngine -n "Tar_Rig:Tar_retp:lambert5SG1";
	rename -uid "242E2255-47A3-9BEB-82B6-CE907F524A30";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Tar_Rig:Tar_retp:materialInfo9";
	rename -uid "52750BBE-4523-41D1-1D56-53B653E61A99";
createNode shadingEngine -n "Tar_Rig:Tar_retp:lambert1SG1";
	rename -uid "F6D4364F-4905-F446-32FC-2C953CC339E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Tar_Rig:Tar_retp:materialInfo10";
	rename -uid "1318DEAD-46FC-706A-258D-998546709C25";
createNode nodeGraphEditorInfo -n "Tar_Rig:Tar_retp:hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "4915AE69-4DCF-53AB-D852-EE825C0FF25A";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -134.3851021240713 -596.63380926502748 ;
	setAttr ".tgi[0].vh" -type "double2" 595.4847585838063 79.622906415894136 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 287.14285278320312;
	setAttr ".tgi[0].ni[0].y" -127.14286041259766;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -20;
	setAttr ".tgi[0].ni[1].y" -127.14286041259766;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode nodeGraphEditorInfo -n "Tar_Rig:MayaNodeEditorSavedTabsInfo1";
	rename -uid "D89CB161-487D-498D-9533-FCAAFA63369F";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1012.8557210127465 -2076.1903936900826 ;
	setAttr ".tgi[0].vh" -type "double2" 1853.3318780914153 -23.809522863418159 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 543.61553955078125;
	setAttr ".tgi[0].ni[0].y" -1066.5205078125;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 821.84869384765625;
	setAttr ".tgi[0].ni[1].y" -627.39495849609375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 830.420166015625;
	setAttr ".tgi[0].ni[2].y" -1060.2520751953125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 346.24237060546875;
	setAttr ".tgi[0].ni[3].y" -270.91241455078125;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" 836.13446044921875;
	setAttr ".tgi[0].ni[4].y" -154.53781127929688;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 836.13446044921875;
	setAttr ".tgi[0].ni[5].y" -627.39495849609375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 830.420166015625;
	setAttr ".tgi[0].ni[6].y" -627.39495849609375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 827.56298828125;
	setAttr ".tgi[0].ni[7].y" -627.39495849609375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
createNode renderLayerManager -n "pasted__renderLayerManager";
	rename -uid "A1A3C11B-4E86-6390-1A56-61B85DDB948E";
createNode renderLayer -n "pasted__defaultRenderLayer";
	rename -uid "AD438BF1-41A7-5476-FA16-3A90AE0ABE36";
	setAttr ".g" yes;
createNode reference -n "pasted__Tar_RigRN";
	rename -uid "ABA88A0A-4A18-8738-09EE-8BB39A3B2DE7";
	setAttr -s 35 ".phl";
	setAttr ".ed" -type "dataReferenceEdits" 
		"pasted__Tar_RigRN"
		"Tar_RigRN" 35
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LFLIKFK" 
		"pasted__Tar_RigRN.placeHolderList[1]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RFLIKFK" 
		"pasted__Tar_RigRN.placeHolderList[2]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LM1IKFK" 
		"pasted__Tar_RigRN.placeHolderList[3]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RM1IKFK" 
		"pasted__Tar_RigRN.placeHolderList[4]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LM2IKFK" 
		"pasted__Tar_RigRN.placeHolderList[5]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RM2IKFK" 
		"pasted__Tar_RigRN.placeHolderList[6]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.LBLIKFK" 
		"pasted__Tar_RigRN.placeHolderList[7]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl.RBLIKFK" 
		"pasted__Tar_RigRN.placeHolderList[8]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog.translateY" 
		"pasted__Tar_RigRN.placeHolderList[9]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog.translateZ" 
		"pasted__Tar_RigRN.placeHolderList[10]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog.rotateX" 
		"pasted__Tar_RigRN.placeHolderList[11]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateX" 
		"pasted__Tar_RigRN.placeHolderList[12]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateY" 
		"pasted__Tar_RigRN.placeHolderList[13]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[14]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[15]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleX" 
		"pasted__Tar_RigRN.placeHolderList[16]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleY" 
		"pasted__Tar_RigRN.placeHolderList[17]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleZ" 
		"pasted__Tar_RigRN.placeHolderList[18]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_IK_01_Ctrl_Grp|Tar_Rig:R_FL_IK_01_Ctrl|Tar_Rig:R_FL_IK_PV_Ctrl_Grp|Tar_Rig:R_FL_IK_PV_Offset_Grp|Tar_Rig:R_FL_IK_PV_Ctrl.translateZ" 
		"pasted__Tar_RigRN.placeHolderList[19]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[20]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateX" 
		"pasted__Tar_RigRN.placeHolderList[21]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateY" 
		"pasted__Tar_RigRN.placeHolderList[22]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[23]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateX" 
		"pasted__Tar_RigRN.placeHolderList[24]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateY" 
		"pasted__Tar_RigRN.placeHolderList[25]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[26]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[27]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateX" 
		"pasted__Tar_RigRN.placeHolderList[28]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateY" 
		"pasted__Tar_RigRN.placeHolderList[29]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateZ" 
		"pasted__Tar_RigRN.placeHolderList[30]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl.translateZ" 
		"pasted__Tar_RigRN.placeHolderList[31]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M1L_IK_02_Ctrl_Grp|Tar_Rig:R_M1L_IK_02_Ctrl.translateZ" 
		"pasted__Tar_RigRN.placeHolderList[32]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M2L_IK_02_Ctrl_Grp|Tar_Rig:R_M2L_IK_02_Ctrl.translateZ" 
		"pasted__Tar_RigRN.placeHolderList[33]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateY" 
		"pasted__Tar_RigRN.placeHolderList[34]" ""
		5 4 "pasted__Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateZ" 
		"pasted__Tar_RigRN.placeHolderList[35]" ""
		"Tar_Rig:Tar_retpRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "pasted__Cog_translateZ";
	rename -uid "BB8A4AB9-447B-DFA9-9CC9-8298002861CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 -0.39644786919990871 5 0 12 4.8110991229829745
		 16 4.8635644183604194 21 4.811099 29 0;
	setAttr -s 7 ".kit[0:6]"  16 18 18 1 18 2 18;
	setAttr -s 7 ".kot[0:6]"  16 18 18 2 18 1 18;
	setAttr -s 7 ".ktl[3:6]" no yes yes yes;
	setAttr -s 7 ".kix[3:6]"  0.037748355797773171 1 0.96972259044711895 
		1;
	setAttr -s 7 ".kiy[3:6]"  0.99928727683012397 0 -0.24420912672651918 
		0;
	setAttr -s 7 ".kox[5:6]"  1 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTU -n "pasted__Head_Ctrl_scaleX";
	rename -uid "3BC48E4E-4EC1-1AE2-2BB7-3C844A73039B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 17 1.1940564567051393 19 1.1940564567051393
		 22 1;
	setAttr -s 4 ".kit[1:3]"  1 1 18;
	setAttr -s 4 ".kot[1:3]"  2 1 18;
	setAttr -s 4 ".ktl[1:3]" no no yes;
	setAttr -s 4 ".kix[1:3]"  0.15472008760782763 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.98795834653624248 0 0;
	setAttr -s 4 ".kox[2:3]"  0.30432282362507218 1;
	setAttr -s 4 ".koy[2:3]"  -0.95256895761979521 0;
createNode animCurveTU -n "pasted__Head_Ctrl_scaleY";
	rename -uid "3275DA89-4F1C-734E-CCE3-3D823FB286C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 17 1.1940564567051393 19 1.1940564567051393
		 22 1;
	setAttr -s 4 ".kit[1:3]"  1 1 18;
	setAttr -s 4 ".kot[1:3]"  2 1 18;
	setAttr -s 4 ".ktl[0:3]" no no no no;
	setAttr -s 4 ".kix[1:3]"  0.15472008760782763 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.98795834653624248 0 0;
	setAttr -s 4 ".kox[2:3]"  0.30432282362507218 1;
	setAttr -s 4 ".koy[2:3]"  -0.95256895761979521 0;
createNode animCurveTU -n "pasted__Head_Ctrl_scaleZ";
	rename -uid "9AD82F4C-4C15-DB0B-B1C7-94B396EBFE14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 17 1.1940564567051393 19 1.1940564567051393
		 22 1;
	setAttr -s 4 ".kit[1:3]"  1 1 18;
	setAttr -s 4 ".kot[1:3]"  2 1 18;
	setAttr -s 4 ".ktl[1:3]" no no yes;
	setAttr -s 4 ".kix[1:3]"  0.15472008760782763 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.98795834653624248 0 0;
	setAttr -s 4 ".kox[2:3]"  0.30432282362507218 1;
	setAttr -s 4 ".koy[2:3]"  -0.95256895761979521 0;
createNode animCurveTA -n "pasted__Head_Ctrl_rotateZ";
	rename -uid "0C235BBE-4108-4950-19BD-7D93D85F030E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  10 0 12 -28.43418221315202 14 -28.43418221315202
		 16 -6.0764437248408596 17 22.979708440556156 19 22.979754161644408 23 0;
	setAttr -s 7 ".kit[1:6]"  2 18 10 2 18 18;
	setAttr -s 7 ".kot[1:6]"  2 18 10 2 18 18;
createNode animCurveTU -n "pasted__Transform_Ctrl_LM2IKFK";
	rename -uid "1782BF3F-4077-23BF-36B4-9EA8C4B85F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "pasted__Transform_Ctrl_LFLIKFK";
	rename -uid "B6FE0F08-4EE5-52FC-BD28-A5AACC350B49";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kit[0:3]"  18 18 18 10;
createNode animCurveTU -n "pasted__Transform_Ctrl_RFLIKFK";
	rename -uid "02BAEF11-465E-E311-40FB-12810B9B1B08";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kit[0:3]"  18 18 18 10;
createNode animCurveTU -n "pasted__Transform_Ctrl_LM1IKFK";
	rename -uid "E9AD6655-44BF-C095-D6A1-83AB04AF0725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "pasted__Transform_Ctrl_RM1IKFK";
	rename -uid "D7E601FC-4058-DBBA-6088-20BD503B68C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "pasted__Transform_Ctrl_RM2IKFK";
	rename -uid "592D6E13-4BE3-6D1E-A565-F7AA7DE99E1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "pasted__Transform_Ctrl_LBLIKFK";
	rename -uid "E7E9893E-4A37-80ED-9E4B-1B8F04BFF303";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "pasted__Transform_Ctrl_RBLIKFK";
	rename -uid "E77BA796-4C4F-C775-498E-388AD885714F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 12 0 24 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pasted__R_FL_FK_01_Ctrl_rotateX";
	rename -uid "8B6741A5-48C0-2B13-3E8E-D6911DC5A3D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -19.660803313882063 7 -20.255752393263691
		 8 -18.831186364586706 9 4.1085418344184549e-16 10 -7.4384082337701551 11 0.2800962448768704;
createNode animCurveTA -n "pasted__R_FL_FK_01_Ctrl_rotateY";
	rename -uid "17C70FFB-4F0D-783F-73AA-B2AAD9F9297F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 21.468469061510074 7 27.981508124235457
		 8 32.084222505167986 9 14.609969329334879 10 -5.1914662961524654 11 -2.0733212912147971;
	setAttr -s 7 ".kit[4:6]"  10 18 18;
	setAttr -s 7 ".kot[4:6]"  10 18 18;
createNode animCurveTA -n "pasted__R_FL_FK_01_Ctrl_rotateZ";
	rename -uid "5530E6FA-465E-CF2E-DFAC-D8A7FBB4B939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -7.3380515519947336 7 -15.607042226133368
		 8 10.332673529799235 9 27.706675066778001 10 18.120392308817632 11 7.9440552764160541;
createNode animCurveTA -n "pasted__R_M1L_FK_01_Ctrl_rotateX";
	rename -uid "BC1AE4CC-4459-C0BD-4370-9C8764F10675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -0.13954357539818618 7 -5.8322865535250079
		 8 -6.359599839252466 9 0.96868977724433725 10 10.931447767110901 11 -1.2681360258853436;
createNode animCurveTA -n "pasted__R_M1L_FK_01_Ctrl_rotateY";
	rename -uid "BBCC1E79-4D27-8750-3723-34B17C86C406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 16.634936955857825 7 21.462669098716482
		 8 9.8087088824769868 9 -10.488663104670584 10 -28.30051275979449 11 -21.916441798296173;
createNode animCurveTA -n "pasted__R_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "2103732B-4D53-1FE4-DE15-549CC4B85A8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -1.7037144936118074 7 -2.1166192377170954
		 8 26.168901366027537 9 32.513251781571292 10 13.233513138604625 11 4.4090964616306376;
createNode animCurveTA -n "pasted__R_M2L_FK_01_Ctrl_rotateX";
	rename -uid "F515AF13-48AC-AABD-5E3D-D98B95D049ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -1.4882189433157322 7 -3.1706316462428825
		 8 -2.8532703909173862 9 -3.4303230905945044 10 4.9144716848370713 11 16.189749756723604;
createNode animCurveTA -n "pasted__R_M2L_FK_01_Ctrl_rotateY";
	rename -uid "3E28E234-4268-48FF-08DF-5D91EDE457B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 9.465435716882963 7 14.783456660587554
		 8 15.316812306909227 9 -3.2854354760353695 10 -23.369631900434047 11 -24.145267891269544;
createNode animCurveTA -n "pasted__R_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "6CDAB216-451D-7E5B-2A22-45B398C71862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -0.20629833584519602 7 8.1604657744345879
		 8 30.667466083664085 9 35.333215187346475 10 19.082989629100588 11 12.179774307116066;
createNode animCurveTA -n "pasted__R_BL_FK_01_Ctrl_rotateX";
	rename -uid "59D3F952-4C3B-1347-8A55-EC87698BBFE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -1.0263928157317428 7 -1.8132391233588721
		 8 2.5671858301455197 9 8.7146758914006917 10 6.5371364384644979 11 14.521610468097272;
createNode animCurveTA -n "pasted__R_BL_FK_01_Ctrl_rotateY";
	rename -uid "985CC6EB-41C5-7AF7-12A9-0CA839B5FDED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 12.732469748533543 7 10.648093965776887
		 8 6.1312182713588763 9 -23.2607562580862 10 -27.070415624344747 11 -24.124870166386717;
createNode animCurveTA -n "pasted__R_BL_FK_01_Ctrl_rotateZ";
	rename -uid "4F6D2F1D-41AA-9AE5-263C-6497E82A45B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 -3.8228473877518634 7 14.795654041142948
		 8 34.23880659914785 9 32.379234167491447 10 6.6553372165460578 11 5.6779358808405425;
createNode animCurveTA -n "pasted__Spine_03_Ctrl_rotateZ";
	rename -uid "01ED5E7F-4C52-9BD4-4FA3-3CAF633EDC99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 11.490750857184093 12 11.490750857184093
		 14 4.9500351231534614 24 4.9500351231534614 29 0;
	setAttr -s 6 ".kit[4:5]"  10 18;
	setAttr -s 6 ".kot[4:5]"  10 18;
createNode animCurveTL -n "pasted__R_BL_IK_02_Ctrl_translateY";
	rename -uid "957979C2-4D0B-0A7D-755F-CCA06619F99E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 2 -0.15950110748029933;
createNode animCurveTL -n "pasted__R_FL_IK_02_Ctrl_translateZ";
	rename -uid "F8FCEC8F-40B8-656C-2625-B1810DDE293D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 12 4.3714617462967862;
createNode animCurveTL -n "pasted__R_FL_IK_PV_Ctrl_translateZ";
	rename -uid "84953937-40D8-78DE-4AE4-1ABFCE9FA9B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 0 12 0.52590490119211253;
createNode animCurveTA -n "pasted__Cog_rotateX";
	rename -uid "BDDB4BEC-4EB5-19B1-9D3D-08A464EEAC99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  13 0 16 -6.3143046889843779 21 -6.3143046889843779
		 25 0;
	setAttr -s 4 ".kit[1:3]"  2 18 18;
	setAttr -s 4 ".kot[1:3]"  2 18 18;
createNode animCurveTL -n "pasted__R_M1L_IK_02_Ctrl_translateZ";
	rename -uid "0F35AA58-4DC4-E532-CAD5-15B55F2FAE81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 1.1102230246251565e-16 12 4.7368415749957027;
createNode animCurveTL -n "pasted__R_M2L_IK_02_Ctrl_translateZ";
	rename -uid "FADC1F64-4E09-C246-5CBC-5C815E59672D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 1.1102230246251565e-16 12 4.7961813555388986;
createNode animCurveTL -n "pasted__R_BL_IK_02_Ctrl_translateZ";
	rename -uid "AEAEA608-44B5-51E6-E847-5287F22AB5BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  11 0 12 5.0910172421125708;
createNode animCurveTA -n "pasted__Spine_02_Ctrl_rotateZ";
	rename -uid "BBC0AF86-42F9-66F0-D6E6-44AF24923EE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 0 14 2.3253221271975195 19 2.3253221271975195
		 21 0;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "pasted__Cog_translateY";
	rename -uid "5BDB31B7-4CF6-64FE-7A3F-28A9D9D05A8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -0.096151590826448086 5 0 9 0.25045492069934067
		 12 0 16 0.078212679069026278 20 0.078212679069026278 22 -0.094821154983842693 25 0.30662493141767511
		 29 0;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateY";
	rename -uid "CED9E1A3-46FF-1808-B435-30901D13A5E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 6 21.468469061510074 8 32.084222505167986
		 10 -5.1914662961524654 11 -2.0733212912147971 24 -17.97039362890753 26 5.8695724608347968
		 28 17.479865524701669;
	setAttr -s 8 ".kit[5:7]"  10 10 10;
	setAttr -s 8 ".kot[5:7]"  10 10 10;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateZ";
	rename -uid "46F0F83A-4C3D-DB2C-057A-4A818C6D849E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -7.3380515519947336 7 -15.607042226133368
		 9 27.706675066778001 10 18.120392308817632 11 7.9440552764160541 24 9.3953238148474192
		 26 32.423657405673232 28 -13.13283272685266;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateX";
	rename -uid "24F32980-4608-1E8E-C5E5-CCADA2B456E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -0.13954357539818615 7 -5.8322865535250079
		 8 -6.359599839252466 10 10.931447767110901 11 -1.2681360258853436 24 -0.65022143914352537
		 26 -7.3546589886424201 28 -6.6093203181173514;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateY";
	rename -uid "B41C0B2E-4D92-9286-7946-9E81307484D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 6 16.634936955857825 7 21.462669098716482
		 10 -28.30051275979449 11 -21.916441798296173 24 -36.328291232286951 28 13.553107540259766;
	setAttr -s 7 ".kit[5:6]"  10 10;
	setAttr -s 7 ".kot[5:6]"  10 10;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "F7E99488-4D4F-C551-9C81-C68B0DFCB829";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 7 -2.1166192377170954 8 26.168901366027537
		 9 32.513251781571292 10 13.233513138604625 11 4.4090964616306376 24 1.4816490456191469
		 26 25.306346526511092 28 1.3040047216129607;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[0:8]"  1 18 18 18 18 18 10 10 
		10;
	setAttr -s 9 ".ktl[0:8]" no yes yes yes yes yes yes yes yes;
	setAttr -s 9 ".kox[0:8]"  0.82288279776980766 1 0.13658446301845673 
		1 0.16749122984394754 0.96221586593603015 0.86369319047517323 0.99982701150974862 
		0.19510155043790847;
	setAttr -s 9 ".koy[0:8]"  -0.56821114133263328 0 0.99062842906003845 
		0 -0.98587356589238251 -0.27228776568361596 0.50401792897357933 -0.01859965202591092 
		-0.98078304686445528;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateX";
	rename -uid "3FF1FCED-4568-6A27-F5B6-BFBB3B08B719";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  5 0 7 -3.1706316462428825 8 -2.8532703909173862
		 9 -3.4303230905945044 11 16.189749756723604 24 9.3225623656205947 28 -7.5406678602216601;
	setAttr -s 7 ".kit[5:6]"  10 10;
	setAttr -s 7 ".kot[5:6]"  10 10;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateY";
	rename -uid "88C2D1DB-438F-5946-F9D6-BFB3A5CA671B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 9.465435716882963 7 14.783456660587554
		 8 15.316812306909227 10 -23.369631900434047 11 -24.145267891269544 24 -35.246739144420033
		 26 -19.639932899802602 28 16.900055277797019;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "9B457DEA-42B0-8102-49D8-3FADC555B7D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  5 0 6 -0.20629833584519602 7 8.1604657744345879
		 8 30.667466083664085 9 35.333215187346475 10 19.082989629100588 11 12.179774307116066
		 24 5.5013060336315185 26 35.983908711866874 28 -0.2812649726985636;
	setAttr -s 10 ".kit[7:9]"  10 10 10;
	setAttr -s 10 ".kot[7:9]"  10 10 10;
createNode animCurveTA -n "L_BL_FK_01_Ctrl_rotateX";
	rename -uid "789DF1CB-4CD6-B6DC-82A1-43B14EB586B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  5 0 7 -1.8132391233588721 9 8.7146758914006917
		 10 6.5371364384644979 11 14.521610468097272 24 40.209819373373108 26 3.2496140779946621
		 28 -2.1398014762602049;
	setAttr -s 8 ".kit[5:7]"  10 10 10;
	setAttr -s 8 ".kot[5:7]"  10 10 10;
createNode animCurveTA -n "L_BL_FK_01_Ctrl_rotateY";
	rename -uid "6289B5F1-43D8-CA29-E8BD-3291C355F789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 12.732469748533543 8 6.1312182713588763
		 9 -23.2607562580862 10 -27.070415624344747 11 -24.124870166386717 24 -51.239762724518222
		 26 -38.887705007251434 28 13.492295288940358;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTA -n "L_BL_FK_01_Ctrl_rotateZ";
	rename -uid "EC711EF6-4D04-9392-DD99-64B8E6DBA409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 6 -3.8228473877518634 8 34.23880659914785
		 9 32.379234167491447 10 6.6553372165460578 11 5.6779358808405425 24 -28.237480670470987
		 26 24.781633120351309 28 7.2612685253309825;
	setAttr -s 9 ".kit[6:8]"  10 10 10;
	setAttr -s 9 ".kot[6:8]"  10 10 10;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateY";
	rename -uid "165BAEE5-47C1-BC50-0C3C-359AF7971DCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 -0.15950110748029933 23 -0.15950110748029933
		 29 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 5;
	setAttr -s 4 ".kix[2:3]"  1 0.84303438446140289;
	setAttr -s 4 ".kiy[2:3]"  0 0.53785967186226513;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateZ";
	rename -uid "5574C8F0-4631-7BDD-94C0-CD973C1B32AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 12 -5.091 23 -5.091 29 0;
	setAttr -s 5 ".kit[0:4]"  10 18 18 1 10;
	setAttr -s 5 ".kot[0:4]"  10 18 18 1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.049047164779197787;
	setAttr -s 5 ".kiy[3:4]"  0 0.9987964635635842;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "L_M2L_IK_02_Ctrl_translateZ";
	rename -uid "EC95E49A-49A8-AFAE-3E1B-DE9A02FF3B33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1102230246251565e-16 11 1.1102230246251565e-16
		 12 -4.796 23 -4.796 29 0;
	setAttr -s 5 ".kit[0:4]"  10 18 18 1 10;
	setAttr -s 5 ".kot[0:4]"  10 18 18 1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.052056096864137917;
	setAttr -s 5 ".kiy[3:4]"  0 0.99864416224162222;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "L_M1L_IK_02_Ctrl_translateZ";
	rename -uid "8371681E-463D-A7CB-5246-9EA173ACCC79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1102230246251565e-16 11 1.1102230246251565e-16
		 12 -4.737 23 -4.737 29 0;
	setAttr -s 5 ".kit[0:4]"  10 18 18 1 10;
	setAttr -s 5 ".kot[0:4]"  10 18 18 1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.05270267302213627;
	setAttr -s 5 ".kiy[3:4]"  0 0.9986102484234386;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "L_FL_IK_02_Ctrl_translateZ";
	rename -uid "24D239FF-4D40-70AD-2FC0-38AB9649E339";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 11 0 12 -4.371 23 -4.371 29 0;
	setAttr -s 5 ".kit[3:4]"  1 10;
	setAttr -s 5 ".kot[3:4]"  1 5;
	setAttr -s 5 ".kix[3:4]"  1 0.057101827928292152;
	setAttr -s 5 ".kiy[3:4]"  0 0.99836835949826053;
	setAttr -s 5 ".kox[3:4]"  1 0;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "L_BL_IK_PV_Ctrl_translateZ";
	rename -uid "74DB5FEB-447A-F291-ED02-A4A8FE49AB77";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0.50818086210404723 4 0;
createNode animCurveTL -n "R_BL_IK_PV_Ctrl_translateZ";
	rename -uid "5062743B-4ACD-295D-53AF-478E5C0D34D9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.3306690738754696e-16 2 -0.508181 4 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 12 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 5 ".sol";
connectAttr "Transform_Ctrl_LFLIKFK.o" "Tar_RigRN.phl[1]";
connectAttr "Transform_Ctrl_RFLIKFK.o" "Tar_RigRN.phl[2]";
connectAttr "Transform_Ctrl_LM1IKFK.o" "Tar_RigRN.phl[3]";
connectAttr "Transform_Ctrl_RM1IKFK.o" "Tar_RigRN.phl[4]";
connectAttr "Transform_Ctrl_LM2IKFK.o" "Tar_RigRN.phl[5]";
connectAttr "Transform_Ctrl_RM2IKFK.o" "Tar_RigRN.phl[6]";
connectAttr "Transform_Ctrl_LBLIKFK.o" "Tar_RigRN.phl[7]";
connectAttr "Transform_Ctrl_RBLIKFK.o" "Tar_RigRN.phl[8]";
connectAttr "Cog_translateY.o" "Tar_RigRN.phl[9]";
connectAttr "Cog_translateZ.o" "Tar_RigRN.phl[10]";
connectAttr "Cog_rotateX.o" "Tar_RigRN.phl[11]";
connectAttr "R_FL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[12]";
connectAttr "R_FL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[13]";
connectAttr "R_FL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[14]";
connectAttr "L_FL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[15]";
connectAttr "L_FL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[16]";
connectAttr "L_FL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[17]";
connectAttr "Head_Ctrl_rotateZ.o" "Tar_RigRN.phl[18]";
connectAttr "Head_Ctrl_scaleX.o" "Tar_RigRN.phl[19]";
connectAttr "Head_Ctrl_scaleY.o" "Tar_RigRN.phl[20]";
connectAttr "Head_Ctrl_scaleZ.o" "Tar_RigRN.phl[21]";
connectAttr "R_FL_IK_PV_Ctrl_translateZ.o" "Tar_RigRN.phl[22]";
connectAttr "Spine_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[23]";
connectAttr "L_M1L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[24]";
connectAttr "L_M1L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[25]";
connectAttr "L_M1L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[26]";
connectAttr "L_M2L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[27]";
connectAttr "L_M2L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[28]";
connectAttr "L_M2L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[29]";
connectAttr "R_M1L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[30]";
connectAttr "R_M1L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[31]";
connectAttr "R_M1L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[32]";
connectAttr "R_M2L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[33]";
connectAttr "R_M2L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[34]";
connectAttr "R_M2L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[35]";
connectAttr "Spine_03_Ctrl_rotateZ.o" "Tar_RigRN.phl[36]";
connectAttr "L_BL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[37]";
connectAttr "L_BL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[38]";
connectAttr "L_BL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[39]";
connectAttr "R_BL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[40]";
connectAttr "R_BL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[41]";
connectAttr "R_BL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[42]";
connectAttr "L_BL_IK_PV_Ctrl_translateZ.o" "Tar_RigRN.phl[43]";
connectAttr "R_BL_IK_PV_Ctrl_translateZ.o" "Tar_RigRN.phl[44]";
connectAttr "R_FL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[45]";
connectAttr "R_M1L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[46]";
connectAttr "R_M2L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[47]";
connectAttr "R_BL_IK_02_Ctrl_translateY.o" "Tar_RigRN.phl[48]";
connectAttr "R_BL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[49]";
connectAttr "L_BL_IK_02_Ctrl_translateY.o" "Tar_RigRN.phl[50]";
connectAttr "L_BL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[51]";
connectAttr "L_M2L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[52]";
connectAttr "L_M1L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[53]";
connectAttr "L_FL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[54]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Tar_Rig:renderLayerManager1.rlmi[0]" "Tar_Rig:defaultRenderLayer1.rlid"
		;
connectAttr "Tar_Rig:Tar_retp:renderLayerManager1.rlmi[0]" "Tar_Rig:Tar_retp:defaultRenderLayer1.rlid"
		;
connectAttr "Tar_Rig:Tar_retp:Body1.oc" "Tar_Rig:Tar_retp:lambert2SG1.ss";
connectAttr "Tar_Rig:Tar_retp:lambert2SG1.msg" "Tar_Rig:Tar_retp:materialInfo6.sg"
		;
connectAttr "Tar_Rig:Tar_retp:Body1.msg" "Tar_Rig:Tar_retp:materialInfo6.m";
connectAttr "Tar_Rig:Tar_retp:Rock1.oc" "Tar_Rig:Tar_retp:lambert3SG1.ss";
connectAttr "Tar_Rig:Tar_retp:lambert3SG1.msg" "Tar_Rig:Tar_retp:materialInfo7.sg"
		;
connectAttr "Tar_Rig:Tar_retp:Rock1.msg" "Tar_Rig:Tar_retp:materialInfo7.m";
connectAttr "Tar_Rig:Tar_retp:Water1.oc" "Tar_Rig:Tar_retp:lambert4SG1.ss";
connectAttr "Tar_Rig:Tar_retp:lambert4SG1.msg" "Tar_Rig:Tar_retp:materialInfo8.sg"
		;
connectAttr "Tar_Rig:Tar_retp:Water1.msg" "Tar_Rig:Tar_retp:materialInfo8.m";
connectAttr "Tar_Rig:Tar_retp:Fire1.oc" "Tar_Rig:Tar_retp:lambert5SG1.ss";
connectAttr "Tar_Rig:Tar_retp:lambert5SG1.msg" "Tar_Rig:Tar_retp:materialInfo9.sg"
		;
connectAttr "Tar_Rig:Tar_retp:Fire1.msg" "Tar_Rig:Tar_retp:materialInfo9.m";
connectAttr ":lambert1.oc" "Tar_Rig:Tar_retp:lambert1SG1.ss";
connectAttr "Tar_Rig:Tar_retp:lambert1SG1.msg" "Tar_Rig:Tar_retp:materialInfo10.sg"
		;
connectAttr ":lambert1.msg" "Tar_Rig:Tar_retp:materialInfo10.m";
connectAttr "Tar_Rig:Tar_retp:lambert1SG1.msg" "Tar_Rig:Tar_retp:hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn"
		;
connectAttr ":lambert1.msg" "Tar_Rig:Tar_retp:hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[1].dn"
		;
connectAttr "pasted__renderLayerManager.rlmi[0]" "pasted__defaultRenderLayer.rlid"
		;
connectAttr "pasted__Transform_Ctrl_LFLIKFK.o" "pasted__Tar_RigRN.phl[1]";
connectAttr "pasted__Transform_Ctrl_RFLIKFK.o" "pasted__Tar_RigRN.phl[2]";
connectAttr "pasted__Transform_Ctrl_LM1IKFK.o" "pasted__Tar_RigRN.phl[3]";
connectAttr "pasted__Transform_Ctrl_RM1IKFK.o" "pasted__Tar_RigRN.phl[4]";
connectAttr "pasted__Transform_Ctrl_LM2IKFK.o" "pasted__Tar_RigRN.phl[5]";
connectAttr "pasted__Transform_Ctrl_RM2IKFK.o" "pasted__Tar_RigRN.phl[6]";
connectAttr "pasted__Transform_Ctrl_LBLIKFK.o" "pasted__Tar_RigRN.phl[7]";
connectAttr "pasted__Transform_Ctrl_RBLIKFK.o" "pasted__Tar_RigRN.phl[8]";
connectAttr "pasted__Cog_translateY.o" "pasted__Tar_RigRN.phl[9]";
connectAttr "pasted__Cog_translateZ.o" "pasted__Tar_RigRN.phl[10]";
connectAttr "pasted__Cog_rotateX.o" "pasted__Tar_RigRN.phl[11]";
connectAttr "pasted__R_FL_FK_01_Ctrl_rotateX.o" "pasted__Tar_RigRN.phl[12]";
connectAttr "pasted__R_FL_FK_01_Ctrl_rotateY.o" "pasted__Tar_RigRN.phl[13]";
connectAttr "pasted__R_FL_FK_01_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[14]";
connectAttr "pasted__Head_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[15]";
connectAttr "pasted__Head_Ctrl_scaleX.o" "pasted__Tar_RigRN.phl[16]";
connectAttr "pasted__Head_Ctrl_scaleY.o" "pasted__Tar_RigRN.phl[17]";
connectAttr "pasted__Head_Ctrl_scaleZ.o" "pasted__Tar_RigRN.phl[18]";
connectAttr "pasted__R_FL_IK_PV_Ctrl_translateZ.o" "pasted__Tar_RigRN.phl[19]";
connectAttr "pasted__Spine_02_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[20]";
connectAttr "pasted__R_M1L_FK_01_Ctrl_rotateX.o" "pasted__Tar_RigRN.phl[21]";
connectAttr "pasted__R_M1L_FK_01_Ctrl_rotateY.o" "pasted__Tar_RigRN.phl[22]";
connectAttr "pasted__R_M1L_FK_01_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[23]";
connectAttr "pasted__R_M2L_FK_01_Ctrl_rotateX.o" "pasted__Tar_RigRN.phl[24]";
connectAttr "pasted__R_M2L_FK_01_Ctrl_rotateY.o" "pasted__Tar_RigRN.phl[25]";
connectAttr "pasted__R_M2L_FK_01_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[26]";
connectAttr "pasted__Spine_03_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[27]";
connectAttr "pasted__R_BL_FK_01_Ctrl_rotateX.o" "pasted__Tar_RigRN.phl[28]";
connectAttr "pasted__R_BL_FK_01_Ctrl_rotateY.o" "pasted__Tar_RigRN.phl[29]";
connectAttr "pasted__R_BL_FK_01_Ctrl_rotateZ.o" "pasted__Tar_RigRN.phl[30]";
connectAttr "pasted__R_FL_IK_02_Ctrl_translateZ.o" "pasted__Tar_RigRN.phl[31]";
connectAttr "pasted__R_M1L_IK_02_Ctrl_translateZ.o" "pasted__Tar_RigRN.phl[32]";
connectAttr "pasted__R_M2L_IK_02_Ctrl_translateZ.o" "pasted__Tar_RigRN.phl[33]";
connectAttr "pasted__R_BL_IK_02_Ctrl_translateY.o" "pasted__Tar_RigRN.phl[34]";
connectAttr "pasted__R_BL_IK_02_Ctrl_translateZ.o" "pasted__Tar_RigRN.phl[35]";
connectAttr "Tar_Rig:Tar_retp:lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "Tar_Rig:Tar_retp:lambert3SG1.pa" ":renderPartition.st" -na;
connectAttr "Tar_Rig:Tar_retp:lambert4SG1.pa" ":renderPartition.st" -na;
connectAttr "Tar_Rig:Tar_retp:lambert5SG1.pa" ":renderPartition.st" -na;
connectAttr "Tar_Rig:Tar_retp:lambert1SG1.pa" ":renderPartition.st" -na;
connectAttr "Tar_Rig:Tar_retp:Body1.msg" ":defaultShaderList1.s" -na;
connectAttr "Tar_Rig:Tar_retp:Rock1.msg" ":defaultShaderList1.s" -na;
connectAttr "Tar_Rig:Tar_retp:Water1.msg" ":defaultShaderList1.s" -na;
connectAttr "Tar_Rig:Tar_retp:Fire1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Tar_Rig:defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "Tar_Rig:Tar_retp:defaultRenderLayer1.msg" ":defaultRenderingList1.r"
		 -na;
// End of Tar Attx Anim.ma
