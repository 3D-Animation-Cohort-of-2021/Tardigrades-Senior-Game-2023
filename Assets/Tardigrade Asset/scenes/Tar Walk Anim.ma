//Maya ASCII 2023 scene
//Name: Tar Walk Anim.ma
//Last modified: Mon, Apr 17, 2023 01:04:44 PM
//Codeset: 1252
file -rdi 1 -ns "Tar_Rig" -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Asset//scenes/Tar_Rig.ma";
file -r -ns "Tar_Rig" -dr 1 -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Asset//scenes/Tar_Rig.ma";
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
fileInfo "UUID" "2E0B1F4C-4A9B-A5B3-DB12-C6B60F8EF35F";
createNode transform -s -n "persp";
	rename -uid "99EFBFA9-4AA7-04A0-7E05-AEACF9CDA1B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.9758173428070114 6.3990844758400494 10.841599059615111 ;
	setAttr ".r" -type "double3" -22.538352287435746 -1467.3999999999694 -8.9561262811805959e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "41FDB402-4468-460C-7636-40B1BF6ABA27";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.423876048107577;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.2956713438034055 0.24585641920566542 -1.6977727413177486 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "27423277-45E6-1D69-A904-65883ADACDC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1C8FB703-4340-4142-81D1-B893BA9A2246";
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
	rename -uid "ABDD1230-4233-5CFD-50CB-9D933934A04D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D308990B-4C85-56CD-E2EA-DFA6CB5E2F2D";
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
	rename -uid "BA8A827A-4C12-E760-22A1-DC8CEAAD796C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BF671B21-4E81-F727-3BDD-75862BFC0D25";
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
	rename -uid "034D2CA6-4B5A-AC77-2A8C-D48D8BEB358D";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "97CCF923-4FF7-6D93-6835-18B5544A025E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BE6A66AF-411E-3038-87FE-F8B58224A787";
createNode displayLayerManager -n "layerManager";
	rename -uid "08B766DD-4858-6EF4-FFFC-D594B26EB1D7";
createNode displayLayer -n "defaultLayer";
	rename -uid "CD1FFFB2-42C6-9E4A-1102-5DB4ABCC58E1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "118B0EA0-4C51-0D2B-9A7F-BBA0F0B16C56";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3206AE29-4866-EBFC-2583-BA83AA5CF97B";
	setAttr ".g" yes;
createNode reference -n "Tar_RigRN";
	rename -uid "7AF951EA-449E-A071-2240-8791E9C5A1A0";
	setAttr -s 62 ".phl";
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
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Tar_RigRN"
		"Tar_RigRN" 0
		"Tar_RigRN" 83
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog" 
		"Chainbase" " -k 1 3"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl" 
		"rotate" " -type \"double3\" 0 -6.87419689732099926 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl|Tar_Rig:L_M1L_FK_02_Ctrl_Grp|Tar_Rig:L_M1L_FK_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -7.65790546803958794"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl|Tar_Rig:L_M2L_FK_02_Ctrl_Grp|Tar_Rig:L_M2L_FK_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -6.2561084585617337"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl|Tar_Rig:L_BL_FK_02_Ctrl_Grp|Tar_Rig:L_BL_FK_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl|Tar_Rig:R_BL_FK_02_Ctrl_Grp|Tar_Rig:R_BL_FK_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_IK_01_Ctrl_Grp|Tar_Rig:L_BL_IK_01_Ctrl|Tar_Rig:L_BL_IK_PV_Ctrl_Grp|Tar_Rig:L_BL_IK_PV_Offset_Grp|Tar_Rig:L_BL_IK_PV_Ctrl" 
		"translate" " -type \"double3\" 0 0 0.5056146301940001"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.148861762785615 0 0.31552740740740742"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M1L_IK_02_Ctrl_Grp|Tar_Rig:R_M1L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.13567965486993439 0 -0.21655246047875892"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M2L_IK_02_Ctrl_Grp|Tar_Rig:R_M2L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.11921848888888892 0 -0.32673933886171092"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.18901669041318947 0 0.14481945857927947"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.10951523980079381 0 -0.21404125525826839"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M2L_IK_02_Ctrl_Grp|Tar_Rig:L_M2L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.025643364851393364 0 -0.35517821922450576"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M1L_IK_02_Ctrl_Grp|Tar_Rig:L_M1L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.13567965486993439 0 -0.24288494468979843"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_FL_IK_02_Ctrl_Grp|Tar_Rig:L_FL_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0.0066835893495582306 0 0.31601001410919866"
		2 "Tar_Rig:Rig_Layer" "displayType" " 2"
		2 "Tar_Rig:Ctrls_Layer" "displayType" " 0"
		2 "Tar_Rig:Ctrls_Layer" "visibility" " 1"
		2 "Tar_Rig:Tar_retp:Base_Geo" "displayType" " 2"
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
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[9]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[10]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[11]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[12]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[13]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:R_FL_FK_01_Ctrl_Grp|Tar_Rig:R_FL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[14]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[15]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[16]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:L_FL_FK_01_Ctrl_Grp|Tar_Rig:L_FL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[17]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[18]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[19]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[20]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[21]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M1L_FK_01_Ctrl_Grp|Tar_Rig:L_M1L_FK_01_Ctrl|Tar_Rig:L_M1L_FK_02_Ctrl_Grp|Tar_Rig:L_M1L_FK_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[22]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[23]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[24]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[25]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:L_M2L_FK_01_Ctrl_Grp|Tar_Rig:L_M2L_FK_01_Ctrl|Tar_Rig:L_M2L_FK_02_Ctrl_Grp|Tar_Rig:L_M2L_FK_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[26]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[27]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[28]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[29]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M1L_FK_01_Ctrl_Grp|Tar_Rig:R_M1L_FK_01_Ctrl|Tar_Rig:R_M1L_FK_02_Ctrl_Grp|Tar_Rig:R_M1L_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[30]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[31]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[32]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[33]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl|Tar_Rig:R_M2L_FK_01_Ctrl_Grp|Tar_Rig:R_M2L_FK_01_Ctrl|Tar_Rig:R_M2L_FK_02_Ctrl_Grp|Tar_Rig:R_M2L_FK_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[34]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[35]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[36]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[37]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[38]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[39]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[40]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_FK_01_Ctrl_Grp|Tar_Rig:L_BL_FK_01_Ctrl|Tar_Rig:L_BL_FK_02_Ctrl_Grp|Tar_Rig:L_BL_FK_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[41]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateX" 
		"Tar_RigRN.placeHolderList[42]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateY" 
		"Tar_RigRN.placeHolderList[43]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[44]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:R_BL_FK_01_Ctrl_Grp|Tar_Rig:R_BL_FK_01_Ctrl|Tar_Rig:R_BL_FK_02_Ctrl_Grp|Tar_Rig:R_BL_FK_02_Ctrl.rotateZ" 
		"Tar_RigRN.placeHolderList[45]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl|Tar_Rig:L_BL_IK_01_Ctrl_Grp|Tar_Rig:L_BL_IK_01_Ctrl|Tar_Rig:L_BL_IK_PV_Ctrl_Grp|Tar_Rig:L_BL_IK_PV_Offset_Grp|Tar_Rig:L_BL_IK_PV_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[46]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[47]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_FL_IK_02_Ctrl_Grp|Tar_Rig:R_FL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[48]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M1L_IK_02_Ctrl_Grp|Tar_Rig:R_M1L_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[49]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M1L_IK_02_Ctrl_Grp|Tar_Rig:R_M1L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[50]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M2L_IK_02_Ctrl_Grp|Tar_Rig:R_M2L_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[51]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_M2L_IK_02_Ctrl_Grp|Tar_Rig:R_M2L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[52]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[53]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:R_BL_IK_02_Ctrl_Grp|Tar_Rig:R_BL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[54]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[55]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_BL_IK_02_Ctrl_Grp|Tar_Rig:L_BL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[56]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M2L_IK_02_Ctrl_Grp|Tar_Rig:L_M2L_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[57]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M2L_IK_02_Ctrl_Grp|Tar_Rig:L_M2L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[58]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M1L_IK_02_Ctrl_Grp|Tar_Rig:L_M1L_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[59]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M1L_IK_02_Ctrl_Grp|Tar_Rig:L_M1L_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[60]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_FL_IK_02_Ctrl_Grp|Tar_Rig:L_FL_IK_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[61]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_FL_IK_02_Ctrl_Grp|Tar_Rig:L_FL_IK_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[62]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "87C08851-4F71-DCE1-1D3A-F49DE6DF23E2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1042\n            -height 727\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1042\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1042\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B981D851-413E-C064-F93F-7A8EA8624E66";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 32 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTA -n "Spine_01_Ctrl_rotateX";
	rename -uid "1EE6EBF3-4DB9-0D30-3D72-3DA322D553AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -7 3.5021801229001399 1 0 8 -6.0737502652555584
		 16 0 24 3.5021801229001399 32 0 40 -6.0737502652555584;
	setAttr -s 7 ".kit[1:6]"  1 9 1 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.95340275849677614 1 0.95097934749129998 
		1 0.96998315214648156 0.95297009936303556;
	setAttr -s 7 ".kiy[1:6]"  -0.30170048075987199 0 0.30925439470607574 
		0 -0.24317212947205921 -0.30306433264243776;
	setAttr -s 7 ".kox[1:6]"  0.95340275555469611 1 0.9509793633772291 
		1 0.96998315214648156 0.95297009936303556;
	setAttr -s 7 ".koy[1:6]"  -0.30170049005713007 0 0.30925434585570533 
		0 -0.24317212947205921 -0.30306433264243776;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_Ctrl_rotateY";
	rename -uid "0BE38385-492A-3DB0-DB38-1FBCA2CB3759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -7 -5.2801579446399121 8 4.7365699205207203
		 24 -5.2801579446399121 40 4.7365699205207203;
	setAttr -s 4 ".kit[0:3]"  1 9 9 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_01_Ctrl_rotateZ";
	rename -uid "6787624D-4570-679F-D0B2-BB9B2DC742CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -7 -0.60354715414583626 1 -6.3365413559960446
		 8 -0.60354715414583626 16 -6.4661061289267696 24 -0.20211722872952215 32 -6.3365413559960446
		 40 -0.20211722872952215;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "Spine_02_Ctrl_rotateY";
	rename -uid "847FF68F-42FA-CD58-B119-24A752A6B2AE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -4 7.5210000000000008 12 -7.5205118600578631
		 28 7.5210000000000008 36 0;
	setAttr -s 4 ".kit[1:3]"  9 1 9;
	setAttr -s 4 ".kot[1:3]"  9 1 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 0.93045304751876345;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 -0.3664111438849062;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.93045304751876345;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.3664111438849062;
createNode animCurveTA -n "Spine_03_Ctrl_rotateX";
	rename -uid "26309D17-42A6-B5CF-7D6D-0F9C0A2BEFCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.7822657283535897 16 1.3415310164297349
		 32 -1.7822657283535897;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateY";
	rename -uid "3BD16BB1-4AB3-705E-A351-8490165BC48A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 11.310389321005985 16 -8.5620846640290473
		 32 11.310389321005985;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateZ";
	rename -uid "7983B820-4870-6DA1-5A37-749A14253F3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.17650035321976476 8 0 16 -0.10042841046012037
		 24 0 32 -0.17650035321976476;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[3:4]"  9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "L_FL_IK_02_Ctrl_translateX";
	rename -uid "661015D0-48B2-983B-9CF2-ACBAFEC7CAC1";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 8 0 24 0.15554535213517323 32 -7.1390053283258147e-17;
	setAttr -s 4 ".kit[2:3]"  10 10;
	setAttr -s 4 ".kot[2:3]"  10 10;
createNode animCurveTL -n "L_FL_IK_02_Ctrl_translateZ";
	rename -uid "E01A6DC8-47C2-A13A-C7C9-02B76B7D5272";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -7 -0.32384764792614629 8 0.3414689009795997
		 25 -0.32384764792614584 40 0.3414689009795997;
createNode animCurveTU -n "Transform_Ctrl_LFLIKFK";
	rename -uid "60EEFD67-4077-9B69-BB60-C69FC2B07D9F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  8 0 16 1 24 1 32 0;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateX";
	rename -uid "A9848BB8-48B4-F795-06ED-B0BFBF7A9E4B";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -1.4154541941002254 24 -2.1343645396036615
		 32 7.9845636955146526;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateY";
	rename -uid "76C561EE-42BC-72A6-C177-BBAFD869079F";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 2.7948194803603266 24 -27.482843982189177
		 32 -17.109279977828642;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTA -n "L_FL_FK_01_Ctrl_rotateZ";
	rename -uid "EC01C904-4BC6-BEEB-23EA-ADB199965D02";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 45.60920620142776 24 35.928422715222204
		 32 6.7242731661219644;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTL -n "L_M1L_IK_02_Ctrl_translateX";
	rename -uid "D186D191-4249-2A92-E42A-7AA6C1429B63";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.13567965486993439 28 0.13567965486993439;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTL -n "L_M1L_IK_02_Ctrl_translateZ";
	rename -uid "5FE7C14E-4B55-D0D4-2FA3-1A80ADEB900E";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -0.24288494468979843 28 0.29901831270202278;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTU -n "Transform_Ctrl_LM1IKFK";
	rename -uid "551A2283-4127-0137-C37B-A5B594EF66F7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 12 0 25 0 29 1;
	setAttr -s 4 ".kit[0:3]"  28 1 10 10;
	setAttr -s 4 ".kot[0:3]"  28 1 10 10;
	setAttr -s 4 ".ktl[1:3]" no yes yes;
	setAttr -s 4 ".kix[1:3]"  0.2322421319893429 1 0.16439898730535715;
	setAttr -s 4 ".kiy[1:3]"  -0.97265800368322919 0 0.98639392383214386;
	setAttr -s 4 ".kox[1:3]"  1 1 0.16439898730535715;
	setAttr -s 4 ".koy[1:3]"  0 0 0.98639392383214386;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "25B886A8-442E-0BBA-92C1-39A3A8C27625";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 27.613587589725761 6 26.434400503476013
		 26 9.3497691211937557 32 27.613587589725761;
	setAttr -s 4 ".kit[2:3]"  10 1;
	setAttr -s 4 ".kot[2:3]"  10 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateX";
	rename -uid "2BB94B3C-4E47-26B4-319F-5E9626B5229F";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0.65942148727942695 26 0 32 0;
	setAttr -s 4 ".kit[2:3]"  10 1;
	setAttr -s 4 ".kot[2:3]"  10 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_M1L_FK_01_Ctrl_rotateY";
	rename -uid "62665045-435A-EC8C-A448-1E9DFFC91B5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -5 0 6 -18.28621015674506 26 0 38 -18.28621015674506;
	setAttr -s 4 ".kit[1:3]"  28 10 1;
	setAttr -s 4 ".kot[1:3]"  28 10 1;
	setAttr -s 4 ".kix[0:3]"  0.97305362308134957 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0.2305789379112046 0 0 0;
	setAttr -s 4 ".kox[0:3]"  0.97305362308134957 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0.2305789379112046 0 0 0;
createNode animCurveTA -n "L_M1L_FK_02_Ctrl_rotateZ";
	rename -uid "824105FD-44E9-E12A-8B15-A8A01DE290F1";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 28 -18.796677057915353 32 0;
	setAttr -s 3 ".kit[0:2]"  10 28 28;
	setAttr -s 3 ".kot[0:2]"  10 28 28;
createNode animCurveTL -n "L_M2L_IK_02_Ctrl_translateX";
	rename -uid "C99E5123-497B-A6F2-F9B2-C1978E17BF2C";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.025643364851393364 28 0.14992229363476839;
createNode animCurveTL -n "L_M2L_IK_02_Ctrl_translateZ";
	rename -uid "B6DEB36B-4B31-FFED-9671-1F98529C03B1";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -0.35517821922450576 28 0.23007312970496041;
createNode animCurveTU -n "Transform_Ctrl_LM2IKFK";
	rename -uid "579634B3-4441-9E20-8980-03AC8B6C08DF";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 12 0 25 0 29 1;
	setAttr -s 4 ".kit[0:3]"  28 1 10 10;
	setAttr -s 4 ".kot[0:3]"  28 1 10 10;
	setAttr -s 4 ".ktl[1:3]" no yes yes;
	setAttr -s 4 ".kix[1:3]"  0.2322421319893429 1 0.16439898730535715;
	setAttr -s 4 ".kiy[1:3]"  -0.97265800368322919 0 0.98639392383214386;
	setAttr -s 4 ".kox[1:3]"  1 1 0.16439898730535715;
	setAttr -s 4 ".koy[1:3]"  0 0 0.98639392383214386;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateX";
	rename -uid "59FBEA7F-4FA3-CBAE-9F4A-3D83895DFD34";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3.219672743255392 6 8.7360748333502816
		 26 0 32 3.219672743255392;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateY";
	rename -uid "E6C51BF9-4BFD-40BC-E55E-BBB27DB0B2F8";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -6 0 6 -28.809932623893147 26 0 38 -28.809932623893147;
	setAttr -s 4 ".kit[0:3]"  1 28 28 1;
	setAttr -s 4 ".kot[0:3]"  1 28 28 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "L_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "00B4966F-4687-105D-F591-619D944E92CA";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 32.430972501290981 6 24.575907621269359
		 26 15.339693994843964 32 32.430972501290981;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_M2L_FK_02_Ctrl_rotateZ";
	rename -uid "6C885E96-4A66-721D-44C4-1B8E1F370882";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 28 -15.355902580106072 32 0;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateX";
	rename -uid "EEB22968-49E4-CB0A-EA03-0BB955B3BAA5";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.30341889358014629 18 -0.052977908147485125
		 32 0.30341889358014629;
	setAttr -s 3 ".kit[0:2]"  1 28 28;
	setAttr -s 3 ".kot[0:2]"  1 28 28;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "L_BL_IK_02_Ctrl_translateZ";
	rename -uid "943AA934-4014-FAF4-625A-E6B84A99179A";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.21410981024921122 18 -0.57283601273554297
		 32 0.21411;
	setAttr -s 3 ".kit[0:2]"  1 28 28;
	setAttr -s 3 ".kot[0:2]"  1 28 28;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "Transform_Ctrl_LBLIKFK";
	rename -uid "F260E6CF-4CE0-E97A-9364-B4B66C1CC373";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 1 12 1 16 0;
	setAttr -s 4 ".kit[2:3]"  10 10;
	setAttr -s 4 ".kot[2:3]"  10 10;
createNode animCurveTA -n "L_BL_FK_01_Ctrl_rotateY";
	rename -uid "09750AAA-4065-CC02-475D-388E82ACEC0C";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 -20.651654412954766 16 -38.520335863175831;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTA -n "L_BL_FK_01_Ctrl_rotateZ";
	rename -uid "23D23F73-4A05-9BE9-C0A8-08BD57F1F21D";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 6.9767434220000881 8 24.727507398169344
		 16 16.679535917618946;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTA -n "L_BL_FK_01_Ctrl_rotateX";
	rename -uid "88CEA58D-46D6-F8AC-4CA4-D6B710155CEB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 16 12.549541708327876;
createNode animCurveTL -n "L_BL_IK_PV_Ctrl_translateZ";
	rename -uid "0A260B76-470E-9A30-B9AA-A88D66B18FC7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.5056146301940001;
createNode animCurveTL -n "R_FL_IK_02_Ctrl_translateZ";
	rename -uid "D5D14A22-49DF-5279-37FB-E38BEC358AD6";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -7 -0.341 9 0.324 24 -0.341 40 0.324;
createNode animCurveTL -n "R_FL_IK_02_Ctrl_translateX";
	rename -uid "EE056AF3-4B0E-F1CE-D9D0-0CAD774C4493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 8 0.15554535213517323 24 0 32 -7.1390053283258147e-17;
	setAttr -s 4 ".kit[0:3]"  28 1 1 10;
	setAttr -s 4 ".kot[0:3]"  28 1 1 10;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "R_M1L_IK_02_Ctrl_translateZ";
	rename -uid "5FE6451D-477B-FE33-0549-738AE45C4E6F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -3 0.29901831270202278 12 -0.24288494468979843
		 28 0.29901831270202278 44 -0.24288494468979843;
	setAttr -s 4 ".kit[1:3]"  28 10 1;
	setAttr -s 4 ".kot[1:3]"  28 10 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "R_M1L_IK_02_Ctrl_translateX";
	rename -uid "97DF0711-4243-A3BD-8378-8E9D08D33618";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.13567965486993439 28 0.13567965486993439;
	setAttr -s 2 ".kit[1]"  10;
	setAttr -s 2 ".kot[1]"  10;
createNode animCurveTL -n "R_M2L_IK_02_Ctrl_translateX";
	rename -uid "0042ED9F-4DF8-FF66-9D9B-DAA3C6C4E0AA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -3 0.0256 12 0.124 28 0.0256 44 0.124;
	setAttr -s 4 ".kit[2:3]"  28 1;
	setAttr -s 4 ".kot[2:3]"  28 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "R_M2L_IK_02_Ctrl_translateZ";
	rename -uid "D7A31183-43FE-E9D1-7FF8-6783F246670A";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -3 0.23007312970496041 12 -0.35517821922450576
		 28 0.23007312970496041 44 -0.35517821922450576;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateX";
	rename -uid "934A5948-403F-C146-3D60-AC94C7ED1E18";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.053 18 0.303 32 0.053;
	setAttr -s 3 ".kit[0:2]"  1 28 28;
	setAttr -s 3 ".kot[0:2]"  1 28 28;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "R_BL_IK_02_Ctrl_translateZ";
	rename -uid "97BFAA53-4BA2-56D2-0272-0E875C301F9B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.573 18 -0.214 32 0.573;
	setAttr -s 3 ".kit[1:2]"  28 1;
	setAttr -s 3 ".kot[1:2]"  28 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "Transform_Ctrl_RFLIKFK";
	rename -uid "D5806449-44B3-04BE-BFA6-59A0C6B33C6E";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 9 1 17 0 24 0 32 1;
	setAttr -s 5 ".kit[2:4]"  1 2 28;
	setAttr -s 5 ".kot[0:4]"  1 10 10 2 28;
	setAttr -s 5 ".kix[2:4]"  0.31622776601683783 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.94868329805051377 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.31622776601683783 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0.94868329805051377 0;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateX";
	rename -uid "A9065FA7-4DC3-3686-5425-17B3AACB95C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -4 -1.4154541941002254 8 -2.1343645396036615
		 16 7.9845636955146526 28 -1.4154541941002254 40 -2.1343645396036615;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateY";
	rename -uid "3BAB78A3-4F3A-C762-AD54-1B8FA471B52F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -4 2.7948194803603266 8 -27.482843982189177
		 16 -17.109279977828642 28 2.7948194803603266 40 -27.482843982189177;
createNode animCurveTA -n "R_FL_FK_01_Ctrl_rotateZ";
	rename -uid "F9B9A30F-4B96-B2B6-63F9-DDA33A0438A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -4 45.60920620142776 8 35.928422715222204
		 16 6.7242731661219644 28 45.60920620142776 40 35.928422715222204;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateZ";
	rename -uid "4818C770-489C-9A99-04FF-3D874E937346";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 26.434400503476013 10 9.3497691211937557
		 15.999999829931973 27.613587589725761 16 27.613587589725761 21 26.434400503476013
		 41 9.3497691211937557;
	setAttr -s 6 ".kit[1:5]"  10 1 28 28 10;
	setAttr -s 6 ".kot[1:5]"  10 1 28 28 10;
	setAttr -s 6 ".kix[2:5]"  1 1 0.99218888023139429 0.94153989542773098;
	setAttr -s 6 ".kiy[2:5]"  0 0 -0.12474464295179891 -0.33690150685020331;
	setAttr -s 6 ".kox[2:5]"  1 1 0.99218888023139429 0.94153989542773098;
	setAttr -s 6 ".koy[2:5]"  0 0 -0.12474464295179891 -0.33690150685020331;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateX";
	rename -uid "EB572605-4C19-0E36-2F38-58BD9FC6F81D";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 0.65942148727942695 10 0 15.999999829931973 0
		 16 0 21 0.65942148727942695 41 0;
	setAttr -s 6 ".kit[1:5]"  10 1 28 28 10;
	setAttr -s 6 ".kot[1:5]"  10 1 28 28 10;
	setAttr -s 6 ".kix[2:5]"  1 1 1 1;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "R_M1L_FK_01_Ctrl_rotateY";
	rename -uid "A27D81B8-4B41-1169-F9D9-379730337466";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -2 -18.28621015674506 10 0 30 -18.28621015674506
		 42 0;
	setAttr -s 4 ".kit[0:3]"  28 10 1 1;
	setAttr -s 4 ".kot[0:3]"  28 10 1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateX";
	rename -uid "A824F694-4ABD-1B0F-765D-FF842513191A";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 8.7360748333502816 10 0 15.999999829931973 3.219672743255392
		 16 3.219672743255392 21 8.7360748333502816 41 0;
	setAttr -s 6 ".kit[2:5]"  1 28 28 28;
	setAttr -s 6 ".kot[2:5]"  1 28 28 28;
	setAttr -s 6 ".kix[2:5]"  1 1 1 1;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateY";
	rename -uid "020EEC21-49C5-573E-4418-4FB8D0BF79EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -10 -28.809932623893147 10 0 22 -28.809932623893147
		 42 0;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "R_M2L_FK_01_Ctrl_rotateZ";
	rename -uid "2DC4C2A4-474D-F1E8-BC88-7EA2735EB30F";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -10 24.575907621269359 10 15.339693994843964
		 15.999999829931973 32.430972501290981 16 32.430972501290981 21 24.575907621269359
		 41 15.339693994843964;
	setAttr -s 6 ".kit[2:5]"  1 28 28 28;
	setAttr -s 6 ".kot[2:5]"  1 28 28 28;
	setAttr -s 6 ".kix[2:5]"  1 1 0.86490788454873158 1;
	setAttr -s 6 ".kiy[2:5]"  0 0 -0.50193062393665333 0;
	setAttr -s 6 ".kox[2:5]"  1 1 0.86490788454873158 1;
	setAttr -s 6 ".koy[2:5]"  0 0 -0.50193062393665322 0;
createNode animCurveTU -n "Transform_Ctrl_RM1IKFK";
	rename -uid "497A2B1E-484F-C4C5-436C-1DB344A200A6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 1 16 1 27 0;
	setAttr -s 4 ".kit[0:3]"  10 1 28 1;
	setAttr -s 4 ".kot[1:3]"  10 1 1;
	setAttr -s 4 ".ktl[3]" no;
	setAttr -s 4 ".kix[1:3]"  0.16439898730535715 1 0.2322421319893429;
	setAttr -s 4 ".kiy[1:3]"  0.98639392383214386 0 -0.97265800368322919;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "Transform_Ctrl_RM2IKFK";
	rename -uid "B9464A2C-4314-BDA9-C031-13872CCC2385";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  9 0 13 1 16 1 27 0;
	setAttr -s 4 ".kit[0:3]"  10 1 28 1;
	setAttr -s 4 ".kot[1:3]"  10 1 1;
	setAttr -s 4 ".ktl[3]" no;
	setAttr -s 4 ".kix[1:3]"  0.16439898730535715 1 0.2322421319893429;
	setAttr -s 4 ".kiy[1:3]"  0.98639392383214386 0 -0.97265800368322919;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "R_M2L_FK_02_Ctrl_rotateZ";
	rename -uid "058C588B-41F1-1D7C-327C-95BEEA7D9584";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -15 0 12 -15.355902580106072 15.999999829931973 0
		 16 0 43 -15.355902580106072;
createNode animCurveTA -n "R_M1L_02_Ctrl_rotateZ";
	rename -uid "78FCF03B-4C50-2086-9A71-399FC115612A";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  -15 0 12 -18.796677057915353 15.999999829931973 0
		 16 0 43 -18.796677057915353 47 0;
	setAttr -s 6 ".kit[0:5]"  10 28 28 10 28 28;
	setAttr -s 6 ".kot[0:5]"  10 28 28 10 28 28;
createNode animCurveTU -n "Transform_Ctrl_RBLIKFK";
	rename -uid "F5CFBEC4-4E3B-810E-A371-5286A4D9B7AD";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0 21 1 27 1 31 0;
	setAttr -s 4 ".kit[2:3]"  10 10;
	setAttr -s 4 ".kot[2:3]"  10 10;
createNode animCurveTA -n "R_BL_FK_01_Ctrl_rotateX";
	rename -uid "C6414D60-42A1-C41E-A935-A2B32974B2A3";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 0 24 0 32 12.549541708327876;
createNode animCurveTA -n "R_BL_FK_01_Ctrl_rotateY";
	rename -uid "5031A302-41E8-E61C-185B-D891AD6E7A9D";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 0 24 -20.651654412954766 32 -38.520335863175831;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTA -n "R_BL_FK_01_Ctrl_rotateZ";
	rename -uid "B9250CD3-4411-975E-CC8D-718FBF4D3731";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 6.9767434220000881 24 24.727507398169344
		 32 16.679535917618946;
	setAttr -s 3 ".kit[2]"  10;
	setAttr -s 3 ".kot[2]"  10;
createNode animCurveTA -n "R_BL_FK_02_Ctrl_rotateZ";
	rename -uid "2BD4F65A-491F-8336-7B4D-D983FD6163B1";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  27 0 29 -8.652157209698256;
createNode animCurveTA -n "L_BL_FK_02_Ctrl_rotateZ";
	rename -uid "90D173F6-4390-FC13-978A-EF87A91ABA4D";
	setAttr ".tan" 28;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 14 -11.593212393169537;
select -ne :time1;
	setAttr ".o" 10;
	setAttr ".unw" 10;
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
	setAttr -s 4 ".sol";
connectAttr "Transform_Ctrl_LFLIKFK.o" "Tar_RigRN.phl[1]";
connectAttr "Transform_Ctrl_RFLIKFK.o" "Tar_RigRN.phl[2]";
connectAttr "Transform_Ctrl_LM1IKFK.o" "Tar_RigRN.phl[3]";
connectAttr "Transform_Ctrl_RM1IKFK.o" "Tar_RigRN.phl[4]";
connectAttr "Transform_Ctrl_LM2IKFK.o" "Tar_RigRN.phl[5]";
connectAttr "Transform_Ctrl_RM2IKFK.o" "Tar_RigRN.phl[6]";
connectAttr "Transform_Ctrl_LBLIKFK.o" "Tar_RigRN.phl[7]";
connectAttr "Transform_Ctrl_RBLIKFK.o" "Tar_RigRN.phl[8]";
connectAttr "Spine_01_Ctrl_rotateX.o" "Tar_RigRN.phl[9]";
connectAttr "Spine_01_Ctrl_rotateY.o" "Tar_RigRN.phl[10]";
connectAttr "Spine_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[11]";
connectAttr "R_FL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[12]";
connectAttr "R_FL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[13]";
connectAttr "R_FL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[14]";
connectAttr "L_FL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[15]";
connectAttr "L_FL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[16]";
connectAttr "L_FL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[17]";
connectAttr "Spine_02_Ctrl_rotateY.o" "Tar_RigRN.phl[18]";
connectAttr "L_M1L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[19]";
connectAttr "L_M1L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[20]";
connectAttr "L_M1L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[21]";
connectAttr "L_M1L_FK_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[22]";
connectAttr "L_M2L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[23]";
connectAttr "L_M2L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[24]";
connectAttr "L_M2L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[25]";
connectAttr "L_M2L_FK_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[26]";
connectAttr "R_M1L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[27]";
connectAttr "R_M1L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[28]";
connectAttr "R_M1L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[29]";
connectAttr "R_M1L_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[30]";
connectAttr "R_M2L_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[31]";
connectAttr "R_M2L_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[32]";
connectAttr "R_M2L_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[33]";
connectAttr "R_M2L_FK_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[34]";
connectAttr "Spine_03_Ctrl_rotateY.o" "Tar_RigRN.phl[35]";
connectAttr "Spine_03_Ctrl_rotateX.o" "Tar_RigRN.phl[36]";
connectAttr "Spine_03_Ctrl_rotateZ.o" "Tar_RigRN.phl[37]";
connectAttr "L_BL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[38]";
connectAttr "L_BL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[39]";
connectAttr "L_BL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[40]";
connectAttr "L_BL_FK_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[41]";
connectAttr "R_BL_FK_01_Ctrl_rotateX.o" "Tar_RigRN.phl[42]";
connectAttr "R_BL_FK_01_Ctrl_rotateY.o" "Tar_RigRN.phl[43]";
connectAttr "R_BL_FK_01_Ctrl_rotateZ.o" "Tar_RigRN.phl[44]";
connectAttr "R_BL_FK_02_Ctrl_rotateZ.o" "Tar_RigRN.phl[45]";
connectAttr "L_BL_IK_PV_Ctrl_translateZ.o" "Tar_RigRN.phl[46]";
connectAttr "R_FL_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[47]";
connectAttr "R_FL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[48]";
connectAttr "R_M1L_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[49]";
connectAttr "R_M1L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[50]";
connectAttr "R_M2L_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[51]";
connectAttr "R_M2L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[52]";
connectAttr "R_BL_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[53]";
connectAttr "R_BL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[54]";
connectAttr "L_BL_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[55]";
connectAttr "L_BL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[56]";
connectAttr "L_M2L_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[57]";
connectAttr "L_M2L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[58]";
connectAttr "L_M1L_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[59]";
connectAttr "L_M1L_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[60]";
connectAttr "L_FL_IK_02_Ctrl_translateX.o" "Tar_RigRN.phl[61]";
connectAttr "L_FL_IK_02_Ctrl_translateZ.o" "Tar_RigRN.phl[62]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Tar Walk Anim.ma
