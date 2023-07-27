//Maya ASCII 2023 scene
//Name: Tar Explode Anim.ma
//Last modified: Fri, Apr 28, 2023 06:17:36 PM
//Codeset: 1252
file -rdi 1 -ns "Tar_Rig" -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Asset//scenes/Tar_Rig.ma";
file -r -ns "Tar_Rig" -dr 1 -rfn "Tar_RigRN" -op "v=0;" -typ "mayaAscii" "C:/Git repos/Tardigrades-Senior-Game-2023/Assets/Tardigrade Asset//scenes/Tar_Rig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires "mtoa" "5.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "3D742168-47C0-549F-66AE-D2BD3C2A55CD";
createNode transform -s -n "persp";
	rename -uid "BC6097B4-4E9E-FFB1-D28F-338727AE6111";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.5123163174528473 2.757243023648063 1.9840742476738393 ;
	setAttr ".r" -type "double3" -15.338352729612216 -79.000000000010743 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B06E50AF-47D4-DAB4-B357-3A9837E85210";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.4081327647343667;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0C437934-4853-F9C4-84D1-3B86A47B5FEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E94C8B53-484B-045A-A0A2-1C9E1587DB8A";
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
	rename -uid "8FC92C43-4FA9-73DA-CF79-DB82BA5500BB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FAACA66A-45E1-26BC-7B4C-A8B9DA37CEFD";
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
	rename -uid "42F33061-408C-8D69-94FA-51A2B507D2BC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F8821ACE-431A-AE68-4EB5-ACB2C011AB63";
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
	rename -uid "7157D80F-4102-7154-F918-68B007461535";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E6C977FA-4112-4BAA-F771-96BB47E9F7CC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7E8F95E7-4185-2C31-140E-2F9BB4312BD5";
createNode displayLayerManager -n "layerManager";
	rename -uid "AC6BF1BF-4763-1FEB-18C1-CE87BA6104E6";
createNode displayLayer -n "defaultLayer";
	rename -uid "D2587FA3-4275-E3E2-3FA6-94B8D9D67873";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0A21DAD1-414B-F6B9-949F-329D6E3AC379";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2785785F-4594-B68A-6D1F-3E8DE70EAA5D";
	setAttr ".g" yes;
createNode reference -n "Tar_RigRN";
	rename -uid "3CE1BA85-4173-FE1B-9C44-469943A42058";
	setAttr -s 21 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Tar_RigRN"
		"Tar_RigRN" 0
		"Tar_RigRN" 204
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog" 
		"Chainbase" " -k 1 3"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:L_M1L_IK_02_Ctrl_Grp|Tar_Rig:L_M1L_IK_02_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT" "visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog" "visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt" "visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:Head_Jnt" "visibility" 
		" 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:Head_Jnt|Tar_Rig:Lips_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_RK_Leg_01_Jnt|Tar_Rig:L_F_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_RK_Leg_01_Jnt|Tar_Rig:L_F_RK_Leg_02_Jnt|Tar_Rig:L_F_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_FK_Leg_01_Jnt|Tar_Rig:L_F_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_FK_Leg_01_Jnt|Tar_Rig:L_F_FK_Leg_02_Jnt|Tar_Rig:L_F_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_FK_Leg_01_Jnt|Tar_Rig:L_F_FK_Leg_02_Jnt|Tar_Rig:L_F_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39585309337808905 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_FK_Leg_01_Jnt|Tar_Rig:L_F_FK_Leg_02_Jnt|Tar_Rig:L_F_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_FK_Leg_01_Jnt|Tar_Rig:L_F_FK_Leg_02_Jnt|Tar_Rig:L_F_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" 0.59729107691974803 -0.65512584296470777 -0.71215373277664162"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 0.0074239438586705658 -8.0583873803432518e-06 -0.062165669274738385"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" 0.35525500666399545 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 0.11795570681149636"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt|Tar_Rig:L_F_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt|Tar_Rig:L_F_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39585309337808905 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt|Tar_Rig:L_F_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:L_F_IK_Leg_01_Jnt|Tar_Rig:L_F_IK_Leg_02_Jnt|Tar_Rig:L_F_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_RK_Leg_01_Jnt|Tar_Rig:R_F_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_RK_Leg_01_Jnt|Tar_Rig:R_F_RK_Leg_02_Jnt|Tar_Rig:R_F_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_FK_Leg_01_Jnt|Tar_Rig:R_F_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_FK_Leg_01_Jnt|Tar_Rig:R_F_FK_Leg_02_Jnt|Tar_Rig:R_F_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_FK_Leg_01_Jnt|Tar_Rig:R_F_FK_Leg_02_Jnt|Tar_Rig:R_F_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39585231300793511 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_FK_Leg_01_Jnt|Tar_Rig:R_F_FK_Leg_02_Jnt|Tar_Rig:R_F_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_FK_Leg_01_Jnt|Tar_Rig:R_F_FK_Leg_02_Jnt|Tar_Rig:R_F_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" 0.59729098006047421 -0.65512638019742364 0.71215399999999973"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 0.10810654857749902 -0.0041793181158832904 -1.4659798411562042e-07"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" -0.35525271044799078 1.2461852378908844e-06 2.6083067332094423e-06"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 -8.5305494696353521e-07"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt|Tar_Rig:R_F_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt|Tar_Rig:R_F_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39585231300793511 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt|Tar_Rig:R_F_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_01_Jnt|Tar_Rig:R_F_IK_Leg_01_Jnt|Tar_Rig:R_F_IK_Leg_02_Jnt|Tar_Rig:R_F_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt" "visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_RK_Leg_01_Jnt|Tar_Rig:L_M1_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_RK_Leg_01_Jnt|Tar_Rig:L_M1_RK_Leg_02_Jnt|Tar_Rig:L_M1_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_FK_Leg_01_Jnt|Tar_Rig:L_M1_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_FK_Leg_01_Jnt|Tar_Rig:L_M1_FK_Leg_02_Jnt|Tar_Rig:L_M1_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_FK_Leg_01_Jnt|Tar_Rig:L_M1_FK_Leg_02_Jnt|Tar_Rig:L_M1_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39290866888107467 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_FK_Leg_01_Jnt|Tar_Rig:L_M1_FK_Leg_02_Jnt|Tar_Rig:L_M1_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_FK_Leg_01_Jnt|Tar_Rig:L_M1_FK_Leg_02_Jnt|Tar_Rig:L_M1_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" 0.20156495907939984 -0.90808339919348391 -0.9662325382232605"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 8.5361302660858248e-07 -1.6560188340635968e-08 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" 0.31722821550612323 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt|Tar_Rig:L_M1_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt|Tar_Rig:L_M1_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39290866888107467 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt|Tar_Rig:L_M1_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M1_IK_Leg_01_Jnt|Tar_Rig:L_M1_IK_Leg_02_Jnt|Tar_Rig:L_M1_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_RK_Leg_01_Jnt|Tar_Rig:L_M2_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_RK_Leg_01_Jnt|Tar_Rig:L_M2_RK_Leg_02_Jnt|Tar_Rig:L_M2_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_FK_Leg_01_Jnt|Tar_Rig:L_M2_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_FK_Leg_01_Jnt|Tar_Rig:L_M2_FK_Leg_02_Jnt|Tar_Rig:L_M2_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_FK_Leg_01_Jnt|Tar_Rig:L_M2_FK_Leg_02_Jnt|Tar_Rig:L_M2_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39117614360530523 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_FK_Leg_01_Jnt|Tar_Rig:L_M2_FK_Leg_02_Jnt|Tar_Rig:L_M2_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_FK_Leg_01_Jnt|Tar_Rig:L_M2_FK_Leg_02_Jnt|Tar_Rig:L_M2_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" -0.55369566733863873 -0.91406972887422266 -1.01937127113341619"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" 0.30339703157273967 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt|Tar_Rig:L_M2_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt|Tar_Rig:L_M2_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39117614360530523 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt|Tar_Rig:L_M2_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:L_M2_IK_Leg_01_Jnt|Tar_Rig:L_M2_IK_Leg_02_Jnt|Tar_Rig:L_M2_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_RK_Leg_01_Jnt|Tar_Rig:R_M1_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_RK_Leg_01_Jnt|Tar_Rig:R_M1_RK_Leg_02_Jnt|Tar_Rig:R_M1_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_FK_Leg_01_Jnt|Tar_Rig:R_M1_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_FK_Leg_01_Jnt|Tar_Rig:R_M1_FK_Leg_02_Jnt|Tar_Rig:R_M1_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_FK_Leg_01_Jnt|Tar_Rig:R_M1_FK_Leg_02_Jnt|Tar_Rig:R_M1_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39291334878237039 0 2.2997243137590218e-08"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_FK_Leg_01_Jnt|Tar_Rig:R_M1_FK_Leg_02_Jnt|Tar_Rig:R_M1_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_FK_Leg_01_Jnt|Tar_Rig:R_M1_FK_Leg_02_Jnt|Tar_Rig:R_M1_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" 0.20156516032508495 -0.90808294503095521 0.96623300000000611"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 0.0015492265790974056 -3.0063870523009587e-05 -1.1572619975470954e-09"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" -0.31722533803435743 3.8580676222643717e-06 3.2104494018803109e-07"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt|Tar_Rig:R_M1_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt|Tar_Rig:R_M1_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39291334878237039 0 2.2997243137590218e-08"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt|Tar_Rig:R_M1_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M1_IK_Leg_01_Jnt|Tar_Rig:R_M1_IK_Leg_02_Jnt|Tar_Rig:R_M1_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_RK_Leg_01_Jnt|Tar_Rig:R_M2_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_RK_Leg_01_Jnt|Tar_Rig:R_M2_RK_Leg_02_Jnt|Tar_Rig:R_M2_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_FK_Leg_01_Jnt|Tar_Rig:R_M2_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_FK_Leg_01_Jnt|Tar_Rig:R_M2_FK_Leg_02_Jnt|Tar_Rig:R_M2_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_FK_Leg_01_Jnt|Tar_Rig:R_M2_FK_Leg_02_Jnt|Tar_Rig:R_M2_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39117093577848849 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_FK_Leg_01_Jnt|Tar_Rig:R_M2_FK_Leg_02_Jnt|Tar_Rig:R_M2_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_FK_Leg_01_Jnt|Tar_Rig:R_M2_FK_Leg_02_Jnt|Tar_Rig:R_M2_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" -0.55369550038278903 -0.91407015448998319 1.01937000000000721"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" -0.0028365737590379937 4.3549507686952746e-05 -2.7602175594476945e-09"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" -0.30340026826915323 -4.9026475232860633e-06 -4.1182252047411438e-07"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt|Tar_Rig:R_M2_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt|Tar_Rig:R_M2_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39117093577848849 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt|Tar_Rig:R_M2_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_02_Jnt|Tar_Rig:R_M2_IK_Leg_01_Jnt|Tar_Rig:R_M2_IK_Leg_02_Jnt|Tar_Rig:R_M2_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt" "visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_RK_Leg_01_Jnt|Tar_Rig:L_B_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_RK_Leg_01_Jnt|Tar_Rig:L_B_RK_Leg_02_Jnt|Tar_Rig:L_B_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_FK_Leg_01_Jnt|Tar_Rig:L_B_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_FK_Leg_01_Jnt|Tar_Rig:L_B_FK_Leg_02_Jnt|Tar_Rig:L_B_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_FK_Leg_01_Jnt|Tar_Rig:L_B_FK_Leg_02_Jnt|Tar_Rig:L_B_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39585310059392254 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_FK_Leg_01_Jnt|Tar_Rig:L_B_FK_Leg_02_Jnt|Tar_Rig:L_B_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_FK_Leg_01_Jnt|Tar_Rig:L_B_FK_Leg_02_Jnt|Tar_Rig:L_B_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" -0.55909725709079483 -0.94233731741955884 -0.91210234165191817"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 0 0 -0.027011453206125503"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" 0.33684117667253999 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0 0.049996163914949626"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt|Tar_Rig:L_B_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt|Tar_Rig:L_B_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" 0.39585310059392254 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt|Tar_Rig:L_B_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:L_B_IK_Leg_01_Jnt|Tar_Rig:L_B_IK_Leg_02_Jnt|Tar_Rig:L_B_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_RK_Leg_01_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_RK_Leg_01_Jnt|Tar_Rig:R_B_RK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_RK_Leg_01_Jnt|Tar_Rig:R_B_RK_Leg_02_Jnt|Tar_Rig:R_B_RK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_FK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_FK_Leg_01_Jnt|Tar_Rig:R_B_FK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_FK_Leg_01_Jnt|Tar_Rig:R_B_FK_Leg_02_Jnt|Tar_Rig:R_B_FK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_FK_Leg_01_Jnt|Tar_Rig:R_B_FK_Leg_02_Jnt|Tar_Rig:R_B_FK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39585587841203218 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_FK_Leg_01_Jnt|Tar_Rig:R_B_FK_Leg_02_Jnt|Tar_Rig:R_B_FK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_FK_Leg_01_Jnt|Tar_Rig:R_B_FK_Leg_02_Jnt|Tar_Rig:R_B_FK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt" 
		"visibility" " 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt" 
		"translate" " -type \"double3\" -0.55909456221076748 -0.94233731859598169 0.91210199999999875"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt" 
		"rotate" " -type \"double3\" 0.44543546716793914 -0.0004201619169412277 -0.027010940082405756"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt" 
		"translate" " -type \"double3\" -0.33684117457206297 1.2686677397510948e-07 4.5712697631650201e-06"
		
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt" 
		"rotate" " -type \"double3\" 0 0.00038875072302798632 0.04998537487970086"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt|Tar_Rig:R_B_IK_Leg_Point_Jnt" 
		"visibility" " 1"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt|Tar_Rig:R_B_IK_Leg_Point_Jnt" 
		"translate" " -type \"double3\" -0.39585587841203218 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt|Tar_Rig:R_B_IK_Leg_Point_Jnt" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Tar_Rig:ROOT|Tar_Rig:Cog|Tar_Rig:Spine_03_Jnt|Tar_Rig:R_B_IK_Leg_01_Jnt|Tar_Rig:R_B_IK_Leg_02_Jnt|Tar_Rig:R_B_IK_Leg_Point_Jnt" 
		"scale" " -type \"double3\" 1 1 1"
		2 "Tar_Rig:Rig_Layer" "displayType" " 2"
		2 "Tar_Rig:Rig_Layer" "visibility" " 0"
		2 "Tar_Rig:Tar_retp:Base_Geo" "displayType" " 2"
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[1]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[2]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[3]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.scaleX" 
		"Tar_RigRN.placeHolderList[4]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.scaleY" 
		"Tar_RigRN.placeHolderList[5]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl.scaleZ" 
		"Tar_RigRN.placeHolderList[6]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleX" 
		"Tar_RigRN.placeHolderList[7]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleY" 
		"Tar_RigRN.placeHolderList[8]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_01_Ctrl_Grp|Tar_Rig:Spine_01_Ctrl|Tar_Rig:Head_Ctrl_Grp|Tar_Rig:Head_Ctrl.scaleZ" 
		"Tar_RigRN.placeHolderList[9]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[10]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[11]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[12]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.scaleX" 
		"Tar_RigRN.placeHolderList[13]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.scaleY" 
		"Tar_RigRN.placeHolderList[14]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_02_Ctrl_Grp|Tar_Rig:Spine_02_Ctrl.scaleZ" 
		"Tar_RigRN.placeHolderList[15]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.translateX" 
		"Tar_RigRN.placeHolderList[16]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.translateY" 
		"Tar_RigRN.placeHolderList[17]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.translateZ" 
		"Tar_RigRN.placeHolderList[18]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.scaleX" 
		"Tar_RigRN.placeHolderList[19]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.scaleY" 
		"Tar_RigRN.placeHolderList[20]" ""
		5 4 "Tar_RigRN" "|Tar_Rig:Transform_Ctrl_Grp|Tar_Rig:Transform_Ctrl|Tar_Rig:COG_Grp|Tar_Rig:Cog|Tar_Rig:Spine_03_Ctrl_Grp|Tar_Rig:Spine_03_Ctrl.scaleZ" 
		"Tar_RigRN.placeHolderList[21]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "Spine_03_Ctrl_scaleX";
	rename -uid "19667E04-42D7-9C25-AB4B-E188ED3B712A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0000000000000002 5 1.1824596328464205
		 7 1.0904625644415185 9 1.2388744247866743 11 1.0847977743086303 15 1.3712068298937705
		 20 1;
createNode animCurveTU -n "Spine_03_Ctrl_scaleY";
	rename -uid "5FFE3952-4688-1C1C-61B0-069601DDB47A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0000000000000002 5 1.1824596328464205
		 7 1.0904625644415185 9 1.2388744247866743 11 1.0847977743086303 15 1.3712068298937705
		 20 1;
createNode animCurveTU -n "Spine_03_Ctrl_scaleZ";
	rename -uid "19AEBDF7-417D-088B-4E65-D580B6A74CF2";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0000000000000002 5 1.1824596328464205
		 7 1.0904625644415185 9 1.2388744247866743 11 1.0847977743086303 15 1.3712068298937705
		 20 1;
createNode animCurveTU -n "Spine_02_Ctrl_scaleX";
	rename -uid "2216ABF3-4842-604C-ABD6-AA86597F89FE";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1.1824596328464203 7 1.0904625644415182
		 9 1.2388744247866741 11 1.0847977743086301 15 1.3712068298937701 20 1;
createNode animCurveTU -n "Spine_02_Ctrl_scaleY";
	rename -uid "7BEAD70A-42CE-F82F-4DE8-56853A7071F9";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1.1824596328464203 7 1.0904625644415182
		 9 1.2388744247866741 11 1.0847977743086301 15 1.3712068298937701 20 1;
createNode animCurveTU -n "Spine_02_Ctrl_scaleZ";
	rename -uid "2DA461F1-402F-80F5-B0CE-9ABDA00ADE30";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1.1824596328464203 7 1.0904625644415182
		 9 1.2388744247866741 11 1.0847977743086301 15 1.3712068298937701 20 1;
createNode animCurveTU -n "Spine_01_Ctrl_scaleX";
	rename -uid "3C603604-42C9-4858-0ABE-2282F65F740F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.99999999999999989 5 1.1824596328464199
		 7 1.0904625644415178 9 1.2388744247866736 11 1.0847977743086297 15 1.3712068298937692
		 20 1;
createNode animCurveTU -n "Spine_01_Ctrl_scaleY";
	rename -uid "9F005A99-4776-8F4C-464A-C990764CAFC5";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.99999999999999989 5 1.1824596328464199
		 7 1.0904625644415178 9 1.2388744247866736 11 1.0847977743086297 15 1.3712068298937692
		 20 1;
createNode animCurveTU -n "Spine_01_Ctrl_scaleZ";
	rename -uid "811E02D6-41CE-09BF-A4FD-15BCD7ADB95D";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1.1824596328464203 7 1.0904625644415182
		 9 1.2388744247866741 11 1.0847977743086301 15 1.3712068298937701 20 1;
createNode animCurveTU -n "Head_Ctrl_scaleX";
	rename -uid "77073E36-4F49-1FB5-F3FC-2E9B24C66A7A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Head_Ctrl_scaleY";
	rename -uid "3F2A0E99-44ED-1CA5-35AE-7AADCB147A2A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Head_Ctrl_scaleZ";
	rename -uid "F4D0221C-4D0A-A300-DAF0-81B35229D624";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Spine_03_Ctrl_translateX";
	rename -uid "BB2F0D38-4068-762B-3582-C3999FF79766";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.1102230246251565e-16 5 -0.033586132423481324
		 11 -0.033586132423481324 15 -0.069237961636103587 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 0.94896508116874045;
	setAttr -s 5 ".kiy[2:4]"  0 0 0.31538115784302323;
	setAttr -s 5 ".kox[2:4]"  1 1 0.94896508116874045;
	setAttr -s 5 ".koy[2:4]"  0 0 0.31538115784302323;
createNode animCurveTL -n "Spine_03_Ctrl_translateY";
	rename -uid "45D19652-4B71-3614-82AE-D7A4450A511A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2204460492503131e-16 5 0.21598729953645818
		 11 0.21598729953645818 15 0.44525878033922556 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  0.81445383823084738 1 0.42379714931877344;
	setAttr -s 5 ".kiy[2:4]"  0.58022835624522906 0 -0.90575712872120484;
	setAttr -s 5 ".kox[2:4]"  0.81445383823084738 1 0.42379714931877344;
	setAttr -s 5 ".koy[2:4]"  0.58022835624522906 0 -0.90575712872120484;
createNode animCurveTL -n "Spine_03_Ctrl_translateZ";
	rename -uid "B4764C61-4E3F-E000-0724-B695C3A2CD44";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.8886090522101181e-31 5 0 11 0 15 0 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "Spine_02_Ctrl_translateX";
	rename -uid "C103C098-4A75-17F1-CFFB-20B3441C9AB1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -0.0068045023287009237 11 -0.0068045023287009237
		 15 -0.014027511868498998 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "Spine_02_Ctrl_translateY";
	rename -uid "A8B93ECB-4471-7924-4546-ACA1883B8C68";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.21847709399449172 11 0.21847709399449172
		 15 0.45039150270789508 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  0.8112932935774354 1 0.41982276442536437;
	setAttr -s 5 ".kiy[2:4]"  0.58463936900988578 0 -0.90760610755450788;
	setAttr -s 5 ".kox[2:4]"  0.8112932935774354 1 0.41982276442536443;
	setAttr -s 5 ".koy[2:4]"  0.58463936900988578 0 -0.90760610755450799;
createNode animCurveTL -n "Spine_02_Ctrl_translateZ";
	rename -uid "254D7B00-4642-4580-4DD5-3AB13C9BF36A";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 15 0 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "Spine_01_Ctrl_translateX";
	rename -uid "43DC0C62-4747-FA75-2AC7-D3BD30DC1445";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3877787807814457e-17 5 -0.10200460963526782
		 11 -0.10200460963526782 15 -0.21028295725097268 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  0.94779260360141027 1 0.7038059360366361;
	setAttr -s 5 ".kiy[2:4]"  -0.31888741047344554 0 0.71039228909074914;
	setAttr -s 5 ".kox[2:4]"  0.94779260360141027 1 0.7038059360366361;
	setAttr -s 5 ".koy[2:4]"  -0.31888741047344554 0 0.71039228909074914;
createNode animCurveTL -n "Spine_01_Ctrl_translateY";
	rename -uid "5F3D3F25-4BD2-C8E0-3BBC-DF8CA698486F";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.19332253222368037 11 0.19332253222368037
		 15 0.39853526153965668 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  0.84316741073430534 1 0.46326832600955509;
	setAttr -s 5 ".kiy[2:4]"  0.53765111129393839 0 -0.88621806465243336;
	setAttr -s 5 ".kox[2:4]"  0.84316741073430534 1 0.46326832600955509;
	setAttr -s 5 ".koy[2:4]"  0.53765111129393839 0 -0.88621806465243336;
createNode animCurveTL -n "Spine_01_Ctrl_translateZ";
	rename -uid "3543DD11-4C37-2918-D8F9-4AB12E7F8CD0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 15 0 20 0;
	setAttr -s 5 ".kit[2:4]"  1 1 10;
	setAttr -s 5 ".kot[2:4]"  1 1 10;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5187540F-4AD2-7528-AAB4-DB9F8098A6F2";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 496\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n"
		+ "                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 496\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 496\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3BAEEFD0-4805-5806-EEBC-AB87930E55C9";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 20 -ast 0 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
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
connectAttr "Spine_01_Ctrl_translateX.o" "Tar_RigRN.phl[1]";
connectAttr "Spine_01_Ctrl_translateY.o" "Tar_RigRN.phl[2]";
connectAttr "Spine_01_Ctrl_translateZ.o" "Tar_RigRN.phl[3]";
connectAttr "Spine_01_Ctrl_scaleX.o" "Tar_RigRN.phl[4]";
connectAttr "Spine_01_Ctrl_scaleY.o" "Tar_RigRN.phl[5]";
connectAttr "Spine_01_Ctrl_scaleZ.o" "Tar_RigRN.phl[6]";
connectAttr "Head_Ctrl_scaleX.o" "Tar_RigRN.phl[7]";
connectAttr "Head_Ctrl_scaleY.o" "Tar_RigRN.phl[8]";
connectAttr "Head_Ctrl_scaleZ.o" "Tar_RigRN.phl[9]";
connectAttr "Spine_02_Ctrl_translateX.o" "Tar_RigRN.phl[10]";
connectAttr "Spine_02_Ctrl_translateY.o" "Tar_RigRN.phl[11]";
connectAttr "Spine_02_Ctrl_translateZ.o" "Tar_RigRN.phl[12]";
connectAttr "Spine_02_Ctrl_scaleX.o" "Tar_RigRN.phl[13]";
connectAttr "Spine_02_Ctrl_scaleY.o" "Tar_RigRN.phl[14]";
connectAttr "Spine_02_Ctrl_scaleZ.o" "Tar_RigRN.phl[15]";
connectAttr "Spine_03_Ctrl_translateX.o" "Tar_RigRN.phl[16]";
connectAttr "Spine_03_Ctrl_translateY.o" "Tar_RigRN.phl[17]";
connectAttr "Spine_03_Ctrl_translateZ.o" "Tar_RigRN.phl[18]";
connectAttr "Spine_03_Ctrl_scaleX.o" "Tar_RigRN.phl[19]";
connectAttr "Spine_03_Ctrl_scaleY.o" "Tar_RigRN.phl[20]";
connectAttr "Spine_03_Ctrl_scaleZ.o" "Tar_RigRN.phl[21]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Tar Explode Anim.ma
