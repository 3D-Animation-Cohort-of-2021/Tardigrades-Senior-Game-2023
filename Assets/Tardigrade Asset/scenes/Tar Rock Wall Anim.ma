//Maya ASCII 2023 scene
//Name: Tar Rock Wall Anim.ma
//Last modified: Wed, Apr 26, 2023 07:19:41 PM
//Codeset: 1252
file -rdi 1 -ns "Tar_Rig" -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Asset//scenes/Tar_Rig.ma";
file -r -ns "Tar_Rig" -dr 1 -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Asset//scenes/Tar_Rig.ma";
requires maya "2023";
requires "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "E8BEDDC5-4FED-75A0-4C36-548D581AB779";
createNode transform -s -n "persp";
	rename -uid "B572828C-4E84-38A6-C542-EBBA525B6DCE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.6012759406771711 2.3726511630035967 5.5524204029356659 ;
	setAttr ".r" -type "double3" -8.7383527209247447 1027.3999999999257 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2413DDA5-4C90-6F30-48E5-39960E92CEAA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.538685635126596;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9641657E-448D-0FE3-52EC-B4A4AEAD1DA6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3B1DE77C-4C92-5941-2498-87A66FB8BA29";
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
	rename -uid "3949D52C-4939-28EB-E140-4D98CE582D8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C7CD6BD2-4D7F-25BA-E9FE-5F8F2F459CFE";
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
	rename -uid "7C3E076A-49F9-9477-585A-04A45BF1C858";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E6A54AFD-4A76-E64E-15F1-CD9AB106BAE1";
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
	rename -uid "07B0A812-471F-F538-8326-D282589D9F35";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "9B8DC441-4F57-7BC5-23AA-0E8B26991868";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E0FEFFAC-48E1-BFA3-E846-2CA9C2BEBEB4";
createNode displayLayerManager -n "layerManager";
	rename -uid "58A62A16-4F44-CD7C-850C-54AFA225BAD4";
createNode displayLayer -n "defaultLayer";
	rename -uid "1BEC86E3-454C-B144-2714-88A654FA13EA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "30595817-40BE-30C4-2388-249388822B84";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9967C21A-47A5-38E8-2ACD-CAAD94FF936D";
	setAttr ".g" yes;
createNode reference -n "Tar_RigRN";
	rename -uid "57E077D9-4053-B9BA-A932-008C84D60FB6";
	setAttr -s 39 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Tar_RigRN"
		"Tar_RigRN" 0
		"Tar_RigRN" 57
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LFLIKFK" " -k 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RFLIKFK" " -k 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LM1IKFK" " -k 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RM1IKFK" " -k 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "LM2IKFK" " -k 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl" "RM2IKFK" " -k 1 1"
		
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog" 
		"Chainbase" " -k 1 2"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_IK_01_Ctrl_Grp|Tar_Rig:L_FL_IK_01_Ctrl|Tar_Rig:L_FL_IK_PV_Ctrl_Grp|Tar_Rig:L_FL_IK_PV_Offset_Grp|Tar_Rig:L_FL_IK_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_IK_01_Ctrl_Grp|Tar_Rig:L_BL_IK_01_Ctrl|Tar_Rig:L_BL_IK_PV_Ctrl_Grp|Tar_Rig:L_BL_IK_PV_Offset_Grp|Tar_Rig:L_BL_IK_PV_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "Tar_Rig:Rig_Layer" "visibility" " 0"
		2 "Tar_Rig:Tar_retp:Base_Geo" "displayType" " 2"
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[1]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[2]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[3]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[4]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[5]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[6]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[7]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[8]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[9]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[10]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[11]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[12]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[13]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[14]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[15]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[16]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[17]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[18]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[19]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[20]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[21]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[22]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[23]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[24]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[25]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[26]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[27]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[28]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[29]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[30]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[31]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[32]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[33]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[34]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[35]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[36]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[37]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[38]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[39]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Spine_03_Ctrl_translateX";
	rename -uid "F0B87AC1-4403-2B29-D76C-B48999182AF7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.1102230246251565e-16 9 -1.2928027608464407
		 13 -0.52552875674681132 15 -0.52552875674681132 17 -0.52552875674681132 28 0;
createNode animCurveTL -n "Spine_03_Ctrl_translateY";
	rename -uid "412124A8-42BD-9191-FB86-8EAE93632F85";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2204460492503131e-16 9 -0.023113844363244509
		 13 0.027332339927335306 15 0.027332339927335306 17 0.027332339927335306 28 0;
createNode animCurveTL -n "Spine_03_Ctrl_translateZ";
	rename -uid "CFB8D9AE-4B76-E684-A119-2BA56FFDEF75";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.8886090522101181e-31 9 0 13 0 15 0 17 0
		 28 0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateX";
	rename -uid "C16EF372-40DE-F0D7-77BB-909320C4DE8B";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 9 0 13 0 15 0 17 0 23 0 28 0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateY";
	rename -uid "E1D7981D-4770-D2C4-7B46-7FBD14225078";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 9 0 13 0 15 0 17 0 23 0 28 0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateZ";
	rename -uid "AB68567B-4379-CCA5-BD6B-FCBB359C08E8";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 9 55.508391836748402 13 16.501879219605399
		 15 20.220357350808833 17 16.502 23 23.943609741719733 28 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateX";
	rename -uid "ECEEC1F9-400C-04C2-2467-5A9B6AACC919";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 13 0 17 0 23 0 28 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateY";
	rename -uid "FDB0C62F-4040-285B-DC0D-E8BDEE945506";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 13 0 17 0 23 0 28 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateZ";
	rename -uid "94426FE7-4F43-9D95-B39F-D19F5631FA05";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 5.765346247400104 13 -24.748037573202424
		 17 -24.748037573202424 23 15.221632999207598 28 0;
createNode animCurveTA -n "Spine_01_Ctrl_rotateX";
	rename -uid "07A00E65-430C-7C66-6D01-C1A31DAAFD07";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 13 0 17 0 23 0 28 0;
createNode animCurveTA -n "Spine_01_Ctrl_rotateY";
	rename -uid "82D38D99-4322-80AB-6FDF-60B96A2ADDEF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 13 0 17 0 23 0 28 0;
createNode animCurveTA -n "Spine_01_Ctrl_rotateZ";
	rename -uid "29891B88-44AE-9002-D120-2F83C15FF609";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 11.147579686730529 13 -28.852764103811626
		 17 -28.852764103811626 23 11.787983667021175 28 0;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateX";
	rename -uid "D9841FA6-4CCC-6F81-AAC5-3790285064E1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateX";
	rename -uid "E2E2C834-4E55-7CF2-081B-DEA11AA49540";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateY";
	rename -uid "7A30E3D0-4B2D-23BF-73D0-35AFCF94216D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -0.15000000000000002;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateY";
	rename -uid "C6907B8E-4627-D276-7DDA-F2913E551609";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -0.15000000000000005;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateZ";
	rename -uid "915AE7CD-424E-768A-170B-C1951F48C9FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 1.1102230246251565e-16;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateZ";
	rename -uid "3E99DD1F-4901-8AF1-34ED-E296257AE4C4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 1.1102230246251565e-16;
createNode animCurveTA -n "Head_Ctrl_rotateX";
	rename -uid "660D6EB2-4A83-7AD2-471C-7BBE218D2FE1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 11 0 17 0 23 0 28 0;
createNode animCurveTA -n "Head_Ctrl_rotateY";
	rename -uid "8747F878-411E-F7CD-53AB-718BAD8DCBCD";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 11 0 17 0 23 0 28 0;
createNode animCurveTA -n "Head_Ctrl_rotateZ";
	rename -uid "99C0688F-416C-DA24-EED1-85B6F8D4676A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 10.431429227519407 11 -43.894272783058938
		 17 -43.894272783058938 23 5.6301186583242453 28 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9699E460-4D1D-6595-3609-4485252A8341";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 226\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 226\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 226\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 496\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n"
		+ "                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 2\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 496\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 496\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0FD8D2BE-466B-B0BE-FE74-0C82F984FDEF";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 29 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateX";
	rename -uid "0D4B144A-4E97-0BA8-5B85-C2A5A6C797E9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 -1.5100749609843651 17 -1.5100749609843651
		 23 0;
	setAttr -s 4 ".kit[0:3]"  10 1 1 10;
	setAttr -s 4 ".kot[0:3]"  10 1 1 10;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateY";
	rename -uid "0868A82E-43D5-C6BC-868B-15A64B1BEFEB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 -9.5930182721108217 17 -9.5930182721108217
		 23 0;
	setAttr -s 4 ".kit[0:3]"  10 1 1 10;
	setAttr -s 4 ".kot[0:3]"  10 1 1 10;
	setAttr -s 4 ".kix[1:3]"  1 1 0.83087792035621;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.55645474341094414;
	setAttr -s 4 ".kox[1:3]"  1 1 0.83087792035621;
	setAttr -s 4 ".koy[1:3]"  0 0 0.55645474341094414;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateZ";
	rename -uid "590F4DAC-4056-716E-F1F9-49866E8AD136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 8.9890453283466325 17 8.9890453283466325
		 23 0;
	setAttr -s 4 ".kit[0:3]"  10 1 1 10;
	setAttr -s 4 ".kot[0:3]"  10 1 1 10;
	setAttr -s 4 ".kix[1:3]"  1 1 0.84702470227869187;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.53155352856480353;
	setAttr -s 4 ".kox[1:3]"  1 1 0.84702470227869187;
	setAttr -s 4 ".koy[1:3]"  0 0 -0.53155352856480353;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateX";
	rename -uid "9F3E350D-4B21-969D-90F3-9695F08F0C58";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 -4.2057856828488136 17 -4.2057856828488136
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.95949485707879156;
	setAttr -s 4 ".kiy[2:3]"  0 0.28172614227179799;
	setAttr -s 4 ".kox[2:3]"  1 0.95949485707879156;
	setAttr -s 4 ".koy[2:3]"  0 0.28172614227179799;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateY";
	rename -uid "B6C483CF-4442-EDED-2FDC-8487FA8A126C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 -1.9123273869746424 17 -1.9123273869746424
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateZ";
	rename -uid "AF76DAD3-4CB5-8833-8AF5-3ABB86A3BC33";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 11.559409276468271 17 11.559409276468271
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.77820483938587581;
	setAttr -s 4 ".kiy[2:3]"  0 -0.62801053172411303;
	setAttr -s 4 ".kox[2:3]"  1 0.77820483938587581;
	setAttr -s 4 ".koy[2:3]"  0 -0.62801053172411303;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateX";
	rename -uid "CBE0C83C-44E6-3BEB-AE7E-71860BB67FD9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 0.31108614918567956 17 0.31108614918567956
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateY";
	rename -uid "514EE891-4CBF-00E1-2FC2-59898980D0FB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 3.7371932101788552 17 3.7371932101788552
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.96760882519857028;
	setAttr -s 4 ".kiy[2:3]"  0 -0.25245427585573305;
	setAttr -s 4 ".kox[2:3]"  1 0.96760882519857039;
	setAttr -s 4 ".koy[2:3]"  0 -0.2524542758557331;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "29660B64-4D1E-0C59-2EE2-E28A447D12E0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 4.7617710031724423 17 4.7617710031724423
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.94893891743659187;
	setAttr -s 4 ".kiy[2:3]"  0 -0.31545987220923832;
	setAttr -s 4 ".kox[2:3]"  1 0.94893891743659198;
	setAttr -s 4 ".koy[2:3]"  0 -0.31545987220923838;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateX";
	rename -uid "6EEFC362-448E-9F83-F740-E384D59356F4";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 0 17 0 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateY";
	rename -uid "F8F459B4-405B-19F8-0CCC-458A39504297";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 -20.467740728795679 17 -20.467740728795679
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.57336902185083405;
	setAttr -s 4 ".kiy[2:3]"  0 0.81929723835847124;
	setAttr -s 4 ".kox[2:3]"  1 0.57336902185083416;
	setAttr -s 4 ".koy[2:3]"  0 0.81929723835847135;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "096EC048-407C-E96B-E2CB-A69AD4C106EC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 0 17 0 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateX";
	rename -uid "D5AE320B-4D9D-E355-7773-88989E722C6A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 0 17 0 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateY";
	rename -uid "4EB16F10-477B-3970-39D1-B19025591E7C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 -15.771179318414669 17 -15.771179318414669
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.67232602306741596;
	setAttr -s 4 ".kiy[2:3]"  0 0.74025517134725416;
	setAttr -s 4 ".kox[2:3]"  1 0.67232602306741596;
	setAttr -s 4 ".koy[2:3]"  0 0.74025517134725416;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "7C3A5393-4B75-355F-F65F-4EA07E29D8FA";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 0 17 0 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateX";
	rename -uid "A676E84F-47F4-7C3D-1F5B-FB9CBE684E01";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 0.83449452013800574 17 0.83449452013800574
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateY";
	rename -uid "19BA61BC-4600-7784-BE95-5FB0900BDE5C";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 6.9467336288331465 17 6.9467336288331465
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.89976994625248508;
	setAttr -s 4 ".kiy[2:3]"  0 -0.43636457672547174;
	setAttr -s 4 ".kox[2:3]"  1 0.89976994625248508;
	setAttr -s 4 ".koy[2:3]"  0 -0.43636457672547174;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "FA2EE1BD-4292-D68F-BA16-DCA57CE3960A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 6.8671129810454481 17 6.8671129810454481
		 23 0;
	setAttr -s 4 ".kit[2:3]"  1 10;
	setAttr -s 4 ".kot[2:3]"  1 10;
	setAttr -s 4 ".kix[2:3]"  1 0.90172877250971994;
	setAttr -s 4 ".kiy[2:3]"  0 -0.43230223319815703;
	setAttr -s 4 ".kox[2:3]"  1 0.90172877250971994;
	setAttr -s 4 ".koy[2:3]"  0 -0.43230223319815703;
select -ne :time1;
	setAttr ".o" 23;
	setAttr ".unw" 23;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 8 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
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
connectAttr "Spine_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[1]";
connectAttr "Spine_01_Ctrl_rotateX.o" "Tar_RigRN.phl[2]";
connectAttr "Spine_01_Ctrl_rotateY.o" "Tar_RigRN.phl[3]";
connectAttr "R_FL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[4]";
connectAttr "R_FL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[5]";
connectAttr "R_FL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[6]";
connectAttr "L_FL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[7]";
connectAttr "L_FL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[8]";
connectAttr "L_FL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[9]";
connectAttr "Head_Ctrl_rotateZ.o" "Tar_RigRN.phl[10]";
connectAttr "Head_Ctrl_rotateX.o" "Tar_RigRN.phl[11]";
connectAttr "Head_Ctrl_rotateY.o" "Tar_RigRN.phl[12]";
connectAttr "Spine_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[13]";
connectAttr "Spine_02_Ctrl_rotateX.o" "Tar_RigRN.phl[14]";
connectAttr "Spine_02_Ctrl_rotateY.o" "Tar_RigRN.phl[15]";
connectAttr "L_M1L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[16]";
connectAttr "L_M1L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[17]";
connectAttr "L_M1L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[18]";
connectAttr "L_M2L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[19]";
connectAttr "L_M2L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[20]";
connectAttr "L_M2L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[21]";
connectAttr "R_M1L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[22]";
connectAttr "R_M1L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[23]";
connectAttr "R_M1L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[24]";
connectAttr "R_M2L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[25]";
connectAttr "R_M2L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[26]";
connectAttr "R_M2L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[27]";
connectAttr "Spine_03_Ctrl_translateX.o" "Tar_RigRN.phl[28]";
connectAttr "Spine_03_Ctrl_translateY.o" "Tar_RigRN.phl[29]";
connectAttr "Spine_03_Ctrl_translateZ.o" "Tar_RigRN.phl[30]";
connectAttr "Spine_03_Ctrl_rotateZ.o" "Tar_RigRN.phl[31]";
connectAttr "Spine_03_Ctrl_rotateX.o" "Tar_RigRN.phl[32]";
connectAttr "Spine_03_Ctrl_rotateY.o" "Tar_RigRN.phl[33]";
connectAttr "R_BL_IK_02_Ctrl_translateY.o" "Tar_RigRN.phl[34]";
connectAttr "R_BL_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[35]";
connectAttr "R_BL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[36]";
connectAttr "L_BL_IK_02_Ctrl_translateY.o" "Tar_RigRN.phl[37]";
connectAttr "L_BL_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[38]";
connectAttr "L_BL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[39]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Tar Rock Wall Anim.ma
