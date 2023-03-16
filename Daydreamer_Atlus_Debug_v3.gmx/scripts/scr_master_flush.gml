with(master)
{



if (room==rm_WorldMap)   || (room==rm_TitleScreen) || (room==rm_SaveGame) ||  (room==rm_GameOver) ||
   (room==rm_Tutorial_B) || (room==rm_Tutorial_D)  || (room==rm_World2_B) ||  (room==rm_HOTEL_w5) ||
   (room==rm_World6_HOTEL) || (room==rm_World7_HOTEL) || (room==rm_World_A2) || (room==rm_Sin) || (room==rm_Classroom) 
    {
        full_flush=true; //FLUSH EVERYTHING
    }


    if (global.platform==0) full_flush=true; //ALWAYS FLUSH FOR PC

    if (global.gamestart==false) || (skip_flush)
    {
    background_flush=false;
    sprite_flush=false;
    texture_flush=false;
    full_flush=false;
    }



    
//DELETE ALL IMPORTED SPRITES
if (sprite_flush) || (full_flush)
{
    var i;
    for (i=0; i<=num; i+=1)
    {
       if sprite_exists(global.sprite[i]) sprite_delete(global.sprite[i]);
    }
       
if (num>max_num) max_num=num; //RECORDING MAX SPRITES LOADED   
num=0;  
}


//DELETE ALL IMPORTED BACKGROUNDS
if (background_flush) || (full_flush)
{
var b;
for (b=0; b<=b_num; b+=1)
{
   if background_exists(global.background[b]) background_delete(global.background[b]);
}

b_num=0;
}

if (texture_flush) || (full_flush)
    {
    if (global.platform==3) && (room==rm_Classroom) 
        {
            //DO NOTHING
        }
        else
        {
            if (global.platform!=1)
            draw_texture_flush();
        }
         
        if (global.platform==1)
        {
            if instance_exists(par_HERO)
            {
                //par_HERO.texture_flush=true; 
            }
            else
            {
               //draw_texture_flush();
            }
        }
        
    }



//------------------------------------------------------------------------------//
//---------------- BACKGROUND ID FLUSH -----------------------------------------//
//------------------------------------------------------------------------------//
if (background_flush) || (full_flush)
{
bg_Cloud_Layer_B_half=0;

bg_bluesky=0;
bg_Grassy_Far_Far=0;
bg_Grassy_Far=0;
bg_Grassy_Mid=0;
bg_Grassy_Near=0;

bg_coolsky_A_tile=0;
bg_SkyCity_very_far=0;
bg_SkyCity_far=0;
bg_SkyCity_mid=0;
bg_SkyCity_near=0;

bg_SkyCity_very_far_dk=0;
bg_SkyCity_far_dk=0;
bg_SkyCity_mid_dk=0;
bg_SkyCity_near_dk=0;

bg_Techno_Tower_A=0;

bg_Tunnel_C=0;
bg_Tunnel_B=0;
bg_Tunnel_A=0;

bg_Tunnel_C_far=0;
bg_Cave_A=0;

bg_coolsky_A=0;
bg_Techno_Tower_B_bg_far=0;
bg_Techno_Tower_B_bg=0;
bg_Eggs_A1=0;
bg_Techno_Tower_B=0;

bg_stormy_warm=0;
bg_Mountains=0;
bg_Valley_Buildings=0;
bg_Valley_Near_Buildings=0;

bg_GreenForrest=0;

TrollQueenSky=0;
TrollQueen_Very_Far=0;
TrollQueen_Far_Far=0;
TrollQueen_Far=0;
TrollQueen_Mid=0;

bg_MushroomForrest_sky=0;
bg_MushroomForrest_BG_C=0;
bg_MushroomForrest_BG_B=0;
bg_MushroomForrest_BG_A=0;

DarkCORE_FAR=0;
DarkCORE_FG01=0;
}
//------------------------------------------------------------------------------//
//------------------- SPRITE ID FLUSH ------------------------------------------//
//------------------------------------------------------------------------------//
if (sprite_flush) || (full_flush)
{

spr_Debris_Cloud=0;

//ScreenShots
spr_sh_01=0;
spr_sh_02=0;
spr_sh_03=0;
spr_sh_04=0;
spr_sh_05=0;
spr_sh_06=0;
spr_sh_07=0;
spr_sh_08=0;
spr_sh_09=0;
spr_sh_10=0;
spr_sh_11=0;
spr_sh_12=0;
spr_sh_13=0;
spr_sh_14=0;
spr_sh_15=0;
spr_sh_16=0;
spr_sh_17=0;
spr_sh_18=0;
spr_sh_19=0;
spr_sh_20=0;
spr_sh_21=0;
spr_sh_22=0;
spr_sh_23=0;
spr_sh_24=0;
spr_sh_25=0;
spr_sh_26=0;
spr_sh_27=0;
spr_sh_28=0;
spr_sh_29=0;
spr_sh_30=0;
spr_sh_31=0;
spr_sh_32=0;
spr_sh_33=0;

//END GAME
SWAP_spr_EndGame_Spire=0;
SWAP_spr_EndGame_Mountains=0;
spr_EndGame_Sky=0;

//FrameDrop
spr_FrameDrop_Glass=0;
spr_FrameDrop_Tech=0;

//Brother
spr_Brother_Idle=0;
spr_Brother_LookAt=0;


//GamePad Config
SWAP_spr_gamepad_0 =0;
SWAP_spr_gamepad_1 =0;
spr_Title_Template=0;
spr_Olivia_Title=0;
spr_Daydreamer_LOGO=0;
spr_Awakened=0;

spr_Menu_BG_still = 0;
spr_Cover_Olivia=0;
spr_Cover_Collector=0;
spr_Cover_BG=0;
spr_Cover_top=0;

//spr_GameOver_Tag=0;

//ENVIRONMENT 
//Tech Islands
SWAP_spr_TechIsland_A =0;
SWAP_spr_TechIsland_B =0;
SWAP_spr_TechIsland_C =0;
SWAP_spr_TechIsland_D =0;
SWAP_spr_TechIsland_E =0;
SWAP_spr_TechIsland_F =0;

//SPACE
spr_nebula=0;
bg_Earth=0;


//ClassRoom
SWAP_spr_Olivia_Sit=0;
SWAP_spr_Classroom=0;
SWAP_spr_Classroom_FG_A=0;
SWAP_spr_Classroom_FG_B=0;
SWAP_spr_Classroom_FG_C=0;
SWAP_spr_Classroom_FG_D=0;
SWAP_spr_Classroom_FG_E=0;
SWAP_spr_GateKeeper=0;
SWAP_spr_GateKeeper_white=0;

//House
SWAP_spr_House_Boxes=0;
SWAP_spr_House_TV=0;
SWAP_spr_Washer=0;
SWAP_spr_Fan=0;
SWAP_spr_Laundry_A=0;
SWAP_spr_Laundry_B=0;
SWAP_spr_Laundry_C=0;
SWAP_spr_Laundry_D=0;
SWAP_spr_Laundry_E=0;
SWAP_spr_Olivia_House_Door=0;
SWAP_spr_Olivia_House=0;
SWAP_spr_Olivia_House_collide=0;
SWAP_spr_Dirt_Mound_A=0;

//Chamber Plats
SWAP_spr_Chamber_Plat_A=0;
SWAP_spr_Chamber_Plat_B=0;
SWAP_spr_Chamber_Plat_C=0;
SWAP_spr_Chamber_Plat_D=0;
SWAP_spr_Chamber_Plat_E=0;
SWAP_spr_Chamber_Plat_F=0;
SWAP_spr_Chamber_Plat_G=0;
SWAP_spr_Chamber_Plat_H=0;

SWAP_spr_Chamber_Plat_A_collide=0;
SWAP_spr_Chamber_Plat_B_collide=0;
SWAP_spr_Chamber_Plat_C_collide=0;
SWAP_spr_Chamber_Plat_D_collide=0;
SWAP_spr_Chamber_Plat_E_collide=0;
SWAP_spr_Chamber_Plat_F_collide=0;
SWAP_spr_Chamber_Plat_G_collide=0;
SWAP_spr_Chamber_Plat_H_collide=0;

//TUBE AND TANK
SWAP_spr_Tube_Water=0;
SWAP_spr_Tube_Glass=0;
spr_Old_Olivia_Conform=0;

//LS Plats
SWAP_spr_LS_Spikes=0;

SWAP_spr_Morph_Plat_A=0;
SWAP_spr_Morph_Plat_B=0;

SWAP_spr_LS_Plat_B=0;
SWAP_spr_LS_Plat_C=0;
SWAP_spr_LS_Plat_D=0;
SWAP_spr_LS_Plat_E=0;

SWAP_spr_LS_Long_Plat_A=0;
SWAP_spr_LS_Long_Plat_B=0;
SWAP_spr_LS_Long_Plat_C=0;
SWAP_spr_LS_Long_Plat_D=0;
SWAP_spr_LS_Long_Plat_E=0;
SWAP_spr_LS_Long_Plat_F=0;
SWAP_spr_LS_Long_Plat_G1=0;
SWAP_spr_LS_Long_Plat_G2=0;
SWAP_spr_LS_Long_Plat_H=0;
SWAP_spr_LS_Long_Plat_I1=0;
SWAP_spr_LS_Long_Plat_I2=0;
SWAP_spr_LS_Long_Plat_J=0;
SWAP_spr_LS_Long_Plat_K=0;
SWAP_spr_LS_Long_Plat_L=0;
SWAP_spr_LS_Long_Plat_M=0;
SWAP_spr_LS_Long_Plat_N=0;
SWAP_spr_LS_Long_Plat_O=0;
SWAP_spr_LS_Long_Plat_P=0;
SWAP_spr_LS_Long_Plat_Q=0;

SWAP_spr_LS_Long_Plat_A_collide=0;
SWAP_spr_LS_Long_Plat_B_collide=0;
SWAP_spr_LS_Long_Plat_C_collide=0;
SWAP_spr_LS_Long_Plat_D_collide=0;
SWAP_spr_LS_Long_Plat_E_collide=0;
SWAP_spr_LS_Long_Plat_F_collide=0;
SWAP_spr_LS_Long_Plat_G1_collide=0;
SWAP_spr_LS_Long_Plat_G2_collide=0;
SWAP_spr_LS_Long_Plat_H_collide=0;
SWAP_spr_LS_Long_Plat_I1_collide=0;
SWAP_spr_LS_Long_Plat_I2_collide=0;
SWAP_spr_LS_Long_Plat_J_collide=0;
SWAP_spr_LS_Long_Plat_K_collide=0
SWAP_spr_LS_Long_Plat_L_collide=0
SWAP_spr_LS_Long_Plat_M_collide=0
SWAP_spr_LS_Long_Plat_N_collide=0
SWAP_spr_LS_Long_Plat_O_collide=0
SWAP_spr_LS_Long_Plat_P_collide=0
SWAP_spr_LS_Long_Plat_Q_collide=0


SWAP_spr_LS_Door=0;
SWAP_spr_LS_Door_top=0;
SWAP_spr_LS_Door_collide=0;

//JUNKYARD----------------------------------------------
SWAP_spr_JunkYard_Ground_A=0;
SWAP_spr_JunkYard_Ground_B=0;
SWAP_spr_JunkYard_Ground_C=0;
SWAP_spr_JunkYard_Ground_D=0;
SWAP_spr_JunkYard_Ground_E=0;
SWAP_spr_JunkYard_Ground_F=0;
SWAP_spr_JunkYard_Ground_G=0;
SWAP_spr_JunkYard_Ground_H=0;
SWAP_spr_JunkYard_Ground_I=0;
SWAP_spr_JunkYard_Ground_J=0;
SWAP_spr_JunkYard_Ground_K=0;
SWAP_spr_JunkYard_Ground_L=0;

SWAP_spr_SlimePlat_A=0;

SWAP_spr_JunkYard_Ground_A_collide=0;
SWAP_spr_JunkYard_Ground_B_collide=0;
SWAP_spr_JunkYard_Ground_C_collide=0;
SWAP_spr_JunkYard_Ground_D_collide=0;
SWAP_spr_JunkYard_Ground_E_collide=0;
SWAP_spr_JunkYard_Ground_F_collide=0;
SWAP_spr_JunkYard_Ground_G_collide=0;
SWAP_spr_JunkYard_Ground_H_collide=0;
SWAP_spr_JunkYard_Ground_I_collide=0;
SWAP_spr_JunkYard_Ground_J_collide=0;
SWAP_spr_JunkYard_Ground_K_collide=0;
SWAP_spr_JunkYard_Ground_L_collide=0;

SWAP_spr_TirePile_high=0;
SWAP_spr_TirePile_long=0;
SWAP_spr_TirePile_small=0;
SWAP_spr_TirePile_smallb=0;
SWAP_spr_LotsofJunks=0;
SWAP_spr_Pipes_A=0;
SWAP_spr_Debris_D=0;
SWAP_spr_Debris_E=0;
SWAP_spr_Debris_F=0;
SWAP_spr_Debris_G=0;
SWAP_spr_JunkPile_A=0;
SWAP_spr_JunkPile_B=0;
SWAP_spr_JunkPile_C=0;
SWAP_spr_JunkPile_D=0;
SWAP_spr_JunkPile_E=0;
SWAP_spr_JunkPile_F=0;
SWAP_spr_JunkPile_G=0;
SWAP_spr_JunkPile_H=0;

//GRASSY HILLS------------------------------------------

SWAP_spr_GrassyHill_00=0;
SWAP_spr_GrassyHill_01=0;
SWAP_spr_GrassyHill_02=0;
SWAP_spr_GrassyHill_03=0;
SWAP_spr_GrassyHill_04=0;
SWAP_spr_GrassyHill_05=0;
SWAP_spr_GrassyHill_06=0;
SWAP_spr_GrassyHill_07=0;
SWAP_spr_GrassyHill_08=0;
SWAP_spr_GrassyHill_09=0;
SWAP_spr_GrassyHill_10=0;
SWAP_spr_GrassyHill_11=0;
SWAP_spr_GrassyHill_12=0;
SWAP_spr_GrassyHill_13=0;
SWAP_spr_GrassyHill_14=0;
SWAP_spr_GrassyHill_15=0;
SWAP_spr_GrassyHill_16=0;
SWAP_spr_GrassyHill_17=0;
SWAP_spr_GrassyHill_18=0;
SWAP_spr_GrassyHill_19=0;

SWAP_spr_GrassyHill_00_collide=0;
SWAP_spr_GrassyHill_01_collide=0;
SWAP_spr_GrassyHill_02_collide=0;
SWAP_spr_GrassyHill_03_collide=0;
SWAP_spr_GrassyHill_04_collide=0;
SWAP_spr_GrassyHill_05_collide=0;
SWAP_spr_GrassyHill_06_collide=0;
SWAP_spr_GrassyHill_07_collide=0;
SWAP_spr_GrassyHill_08_collide=0;
SWAP_spr_GrassyHill_09_collide=0;
SWAP_spr_GrassyHill_10_collide=0;
SWAP_spr_GrassyHill_11_collide=0;
SWAP_spr_GrassyHill_12_collide=0;
SWAP_spr_GrassyHill_13_collide=0;
SWAP_spr_GrassyHill_14_collide=0;
SWAP_spr_GrassyHill_15_collide=0;
SWAP_spr_GrassyHill_16_collide=0;
SWAP_spr_GrassyHill_17_collide=0;
SWAP_spr_GrassyHill_18_collide=0;
SWAP_spr_GrassyHill_19_collide=0;

SWAP_spr_Street_A=0;
SWAP_spr_Street_B=0;
SWAP_spr_Street_C=0;
SWAP_spr_Street_D=0;
SWAP_spr_Street_E=0;
SWAP_spr_Street_F=0;
SWAP_spr_Street_G=0;

SWAP_spr_Street_A_collide=0;
SWAP_spr_Street_B_collide=0;
SWAP_spr_Street_C_collide=0;
SWAP_spr_Street_D_collide=0;
SWAP_spr_Street_E_collide=0;
SWAP_spr_Street_F_collide=0;
SWAP_spr_Street_G_collide=0;

SWAP_spr_Island_A=0;
SWAP_spr_Island_B=0;
SWAP_spr_Island_C=0;
SWAP_spr_Island_D=0;
SWAP_spr_Island_E=0;
SWAP_spr_Island_F=0;
SWAP_spr_Island_G=0;
SWAP_spr_Island_H=0;

SWAP_spr_House_A=0;
SWAP_spr_House_B=0;
SWAP_spr_House_C=0;
SWAP_spr_House_D=0;
SWAP_spr_House_E=0;
SWAP_spr_House_F=0;
SWAP_spr_House_G=0;
SWAP_spr_House_H=0;
SWAP_spr_House_I=0;
SWAP_spr_House_J=0;
SWAP_spr_House_K=0;
SWAP_spr_House_L=0;
SWAP_spr_House_M=0;
SWAP_spr_House_N=0;

SWAP_spr_GrassyHILLs_Mountains_A=0;

//CRYPT-------------------------------------------

SWAP_spr_Crypt_A=0;
SWAP_spr_Crypt_B=0;
SWAP_spr_Crypt_C=0;
SWAP_spr_Crypt_D=0;
SWAP_spr_Crypt_E=0;
SWAP_spr_Crypt_F=0;

SWAP_spr_Crypt_A_collide=0;
SWAP_spr_Crypt_B_collide=0;
SWAP_spr_Crypt_C_collide=0;
SWAP_spr_Crypt_D_collide=0;
SWAP_spr_Crypt_E_collide=0;
SWAP_spr_Crypt_F_collide=0;

//--------------------------------------
// Capsoles

SWAP_spr_left_capsole=0;
SWAP_spr_left_capsole_dark=0;
SWAP_spr_middle_Capsole=0;
SWAP_spr_middle_CapsoleDark=0;

// Alien Eggs
SWAP_spr_AlienEgg_B=0;
SWAP_spr_AlienEgg_C=0;
SWAP_spr_AlienEgg_D=0;

//Barrier
SWAP_spr_Barrier=0;
SWAP_spr_Barrier_Lazer=0;
SWAP_spr_Lazer_Damage=0;

//FX
SWAP_spr_Volume_Flare_A=0;

//BUILDINGS------------------------------------

//Pear Store
SWAP_spr_PearStore_0=0;
SWAP_spr_PearStore_1=0;
spr_PearStore_Door=0;
SWAP_spr_PearStore_inside=0;
SWAP_spr_PearStore_inside_collide=0;

// Hotels
SWAP_spr_Hotel_Sign_L=0;
SWAP_spr_Hotel_Sign_R=0;

SWAP_spr_Hotel_A=0;
SWAP_spr_Hotel_B=0;

SWAP_spr_Hotel_A_collide=0;
SWAP_spr_Hotel_B_collide=0;

SWAP_spr_Hotel_A_top=0;
SWAP_spr_Hotel_B_top=0;

//Dolphin Store

SWAP_spr_DolphinStore=0;
SWAP_spr_DolphinStore_Tank_top=0;

SWAP_spr_DolphinStore_collide=0;
//---------------------------------------------

//Crates

SWAP_spr_Crate_Center_Single=0;
SWAP_spr_Crate_Center_Double=0;
SWAP_spr_Crate_Center_Tripple=0;
SWAP_spr_Crate_Right_Single=0;
SWAP_spr_CrateDark_Right_Single=0;
SWAP_spr_Crate_Right_Double=0;
SWAP_spr_CrateDark_Right_Double=0;
SWAP_spr_Crate_Right_Tiple=0;
SWAP_spr_CrateDark_Right_Tiple=0;

SWAP_spr_Crate_Round_A=0;
SWAP_spr_Crate_Round_B=0;
SWAP_spr_Crate_Round_A_LED=0;
SWAP_spr_Crate_Round_B_LED=0;
SWAP_spr_Crate_B_01=0;
SWAP_spr_Crate_B_02=0;
SWAP_spr_Crate_B_03=0;
SWAP_spr_Crate_C_01=0;

//Spike Boxes
SWAP_spr_SpikeBox_A=0;
SWAP_spr_SpikeBox_B=0;
SWAP_spr_SpikeBox_C=0;


//Scaffolding
SWAP_spr_FG_Scaf_A=0;
SWAP_spr_FG_Scaf_B=0;
SWAP_spr_FG_Scaf_C=0;
SWAP_spr_FG_Scaf_D=0;

SWAP_spr_Tall_Scaffolding_A=0;
SWAP_spr_Tall_Scaffolding_B=0;
SWAP_spr_Tall_Scaffolding_C=0;

SWAP_spr_Short_Platform_Left=0;
SWAP_spr_Center_Short_Platform=0;
SWAP_spr_Tall_platform_Center=0;
SWAP_spr_small_Catwalk_Suspension=0;
SWAP_spr_small_Catwalk_suspension_with_shadow=0;
SWAP_spr_Stack_A=0;
SWAP_spr_Stack_B=0;

//Tracks
SWAP_spr_Track_A=0;
SWAP_spr_Track_B=0;
SWAP_spr_Track_C=0;

//PowerCore
SWAP_spr_PowerCore=0;
SWAP_spr_Orb=0;

SWAP_spr_Suspend_Catwalk_Center=0;
SWAP_spr_Suspend_Catwalk_Dark=0;
SWAP_spr_FloatPlat_Center=0;
SWAP_spr_FloatPlat_Right=0;
SWAP_spr_Catwalk_Side=0;
SWAP_spr_Catwalk_Side_small=0;
SWAP_spr_Catwalk_Side_med=0;

SWAP_spr_Scaffolding_Tri_PlatformDark_High_Right=0;
SWAP_spr_Scaffolding_Tri_PlatformDark_High_Right_collide=0;
SWAP_spr_Scaffolding_Tri_PlatformDark_High_Right_Short=0;
SWAP_spr_scaffolding_double=0;

//Rocks

SWAP_spr_Mound_Bolder_A_Center_dark=0;

//Mountains-----------------------
SWAP_spr_Moutain_A01=0;
SWAP_spr_Moutain_A03=0;
SWAP_spr_Moutain_A04=0;
SWAP_spr_Moutain_B01=0;
SWAP_spr_Moutain_B02=0;
SWAP_spr_Moutain_B03=0;
SWAP_spr_Moutain_B04=0;

SWAP_spr_Moutain_A01_collide=0;
SWAP_spr_Moutain_A03_collide=0;
SWAP_spr_Moutain_A04_collide=0;
SWAP_spr_Moutain_B01_collide=0;
SWAP_spr_Moutain_B02_collide=0;
SWAP_spr_Moutain_B03_collide=0;
SWAP_spr_Moutain_B04_collide=0;

//THE VALLEY--------------------------------------

SWAP_spr_BV_Plat_Post=0;
SWAP_spr_BV_Plat_A=0;
SWAP_spr_BV_Plat_B=0;
SWAP_spr_BV_Plat_C=0;
SWAP_spr_BV_Plat_D=0;
SWAP_spr_BV_Plat_E1=0;
SWAP_spr_BV_Plat_E2=0;
SWAP_spr_BV_Plat_F=0;
SWAP_spr_BV_Plat_G=0;
SWAP_spr_BV_Cliff_Back=0;
SWAP_spr_BV_Cliff_Side=0;
SWAP_spr_BV_Shack_A=0;
SWAP_spr_BV_Shack_B=0;
SWAP_spr_BV_TreePlat_A=0;
SWAP_spr_BV_TreePlat_B=0;
SWAP_spr_Narrow_Plat_A=0;
SWAP_spr_Narrow_Plat_B=0;
SWAP_spr_Narrow_Plat_C=0;
SWAP_spr_Narrow_Plat_D=0;

SWAP_spr_BV_Plat_A_collide=0;
SWAP_spr_BV_Plat_B_collide=0;
SWAP_spr_BV_Plat_D_collide=0;
SWAP_spr_BV_Plat_F_collide=0;
SWAP_spr_BV_Plat_Post_collide=0;
SWAP_spr_BV_Shack_A_collide=0;
SWAP_spr_BV_Shack_B_collide=0;
SWAP_spr_BV_TreePlat_A_collide=0;
SWAP_spr_BV_TreePlat_B_collide=0;

SWAP_spr_BurgermanValley_BK_A_small=0;
SWAP_spr_BurgermanValley_BK_B_small=0;
//Green Forrest--------------------------------------
SWAP_spr_Thorns_B=0;
SWAP_spr_GreenForrest_Dirt_A=0;

SWAP_spr_GreenForrest_Log_A=0;
SWAP_spr_GreenForrest_Log_B=0;
SWAP_spr_GreenForrest_Log_C=0;
SWAP_spr_GreenForrest_Log_D=0;

SWAP_spr_GreenForrest_Log_A_collide=0;
SWAP_spr_GreenForrest_Log_B_collide=0;
SWAP_spr_GreenForrest_Log_C_collide=0;
SWAP_spr_GreenForrest_Log_D_collide=0;

SWAP_spr_GreenForrest_Tree_A=0;
SWAP_spr_GreenForrest_Tree_B=0;
SWAP_spr_GreenForrest_Tree_C=0;
SWAP_spr_GreenForrest_Stump_A=0;
SWAP_spr_GreenForrest_Stump_B=0;
SWAP_spr_GreenForrest_Stump_C=0;
SWAP_spr_GreenForrest_BG_A=0;
SWAP_spr_GreenForrest_BG_B=0;
SWAP_spr_GreenForrest_BG_C=0;
SWAP_spr_GreenForrest_BG_D=0;
SWAP_spr_GreenForrest_Hedge_Top=0;
SWAP_spr_GreenForrest_Hedge_Back=0;
SWAP_spr_GreenForrest_Hedge_small=0;

//Mushroom Forrest--------------------------------------

SWAP_spr_MushroomForrest_PLAT_A=0;
SWAP_spr_MushroomForrest_PLAT_B=0;
SWAP_spr_MushroomForrest_PLAT_C=0;
SWAP_spr_MushroomForrest_PLAT_D=0;
SWAP_spr_MushroomForrest_PLAT_E=0;
SWAP_spr_MushroomForrest_PLAT_F=0;
SWAP_spr_MushroomForrest_PLAT_G=0;
SWAP_spr_MushroomForrest_PLAT_H=0;
SWAP_spr_MushroomForrest_PLAT_I=0;
SWAP_spr_MushroomForrest_PLAT_J=0;
SWAP_spr_MushroomForrest_PLAT_K=0;
SWAP_spr_MushroomForrest_PLAT_L=0;
SWAP_spr_MushroomForrest_PLAT_M=0;
SWAP_spr_MushroomForrest_PLAT_N=0;
SWAP_spr_MushroomForrest_PLAT_O=0;
SWAP_spr_MushroomForrest_PLAT_P=0;
SWAP_spr_MushroomForrest_PLAT_Q=0;
SWAP_spr_MushroomForrest_PLAT_R1=0;
SWAP_spr_MushroomForrest_PLAT_R2=0;
SWAP_spr_MushroomForrest_PLAT_S1=0;
SWAP_spr_MushroomForrest_PLAT_S2=0;
SWAP_spr_MushroomForrest_Tree_A=0;
SWAP_spr_MushroomForrest_Tree_B=0;
SWAP_spr_MushroomForrest_Tree_C=0;


SWAP_spr_MushroomForrest_PLAT_A_collide=0;
SWAP_spr_MushroomForrest_PLAT_B_collide=0;
SWAP_spr_MushroomForrest_PLAT_C_collide=0;
SWAP_spr_MushroomForrest_PLAT_D_collide=0;
SWAP_spr_MushroomForrest_PLAT_E_collide=0;
SWAP_spr_MushroomForrest_PLAT_F_collide=0;
SWAP_spr_MushroomForrest_PLAT_G_collide=0;
SWAP_spr_MushroomForrest_PLAT_H_collide=0;
SWAP_spr_MushroomForrest_PLAT_I_collide=0;
SWAP_spr_MushroomForrest_PLAT_J_collide=0;
SWAP_spr_MushroomForrest_PLAT_K_collide=0;
SWAP_spr_MushroomForrest_PLAT_L_collide=0;
SWAP_spr_MushroomForrest_PLAT_M_collide=0;
SWAP_spr_MushroomForrest_PLAT_N_collide=0;

//DARKCORE----------------------------------------

//Factory
SWAP_spr_trollfactory_FG=0;
SWAP_spr_trollfactory_FG_collide=0;

//BedRock
SWAP_spr_RockyGround_With_Bolders_dark=0;
SWAP_spr_RockyGround_With_Bolders=0;

//Cliffs
SWAP_spr_Tunnel_Cliff_A=0;
SWAP_spr_Tunnel_Cliff_B=0;
SWAP_spr_Tunnel_Cliff_C=0;
SWAP_spr_Tunnel_Cliff_D=0;
SWAP_spr_Tunnel_Cliff_E=0;
SWAP_spr_Tunnel_Cliff_F=0;
SWAP_spr_Tunnel_Cliff_G=0;
SWAP_spr_Tunnel_Cliff_H=0;

SWAP_spr_Tunnel_Cliff_A_collide=0;
SWAP_spr_Tunnel_Cliff_B_collide=0;
SWAP_spr_Tunnel_Cliff_C_collide=0;
SWAP_spr_Tunnel_Cliff_D_collide=0;
SWAP_spr_Tunnel_Cliff_E_collide=0;
SWAP_spr_Tunnel_Cliff_F_collide=0;
SWAP_spr_Tunnel_Cliff_G_collide=0;
SWAP_spr_Tunnel_Cliff_H_collide=0;

//LEDS
SWAP_spr_Right_Hallway_LED=0;
SWAP_spr_Diagonal_A_LED=0;
SWAP_spr_Hor_Right_Bridge_small_LED=0;
SWAP_spr_LongBridge_LED=0;
SWAP_spr_PearStore_LED=0;
SWAP_spr_Right_Room_A_LED=0;
SWAP_spr_Right_RoomC01_LED=0;
SWAP_spr_Right_TowerB_LED=0;
SWAP_spr_Stack_LED=0;
SWAP_spr_Tower_I_LED=0;
SWAP_spr_Right_Warehouse_LED=0;
SWAP_spr_Right_RoomC_LED=0;
SWAP_spr_Right_TowerC01_LED=0;
SWAP_spr_Tower_J_LED=0;
SWAP_spr_Tower_K_LED=0;
SWAP_spr_Right_TowerD02_LED=0;
SWAP_spr_Right_TowerA_LED=0;
SWAP_spr_Tower_H_LED=0;
SWAP_spr_LBridge_B_LED=0;
SWAP_spr_UBridge_LED=0;
SWAP_spr_TBridge_LED=0;
SWAP_spr_Tunnel_Cliff_E_LED=0;

//Bridges
SWAP_spr_Bridge_Angle_A=0;
SWAP_spr_Bridge_Angle_B=0;
SWAP_spr_Bridge_Angle_C=0;
SWAP_spr_Bridge_Angle_D=0;
SWAP_spr_Bridge_Double_A=0;
SWAP_spr_Right_Room_A=0;
SWAP_spr_Right_TowerA=0;
SWAP_spr_Right_Warehouse=0;
SWAP_spr_Right_Apartment_A01=0;
SWAP_spr_Right_TowerB=0;
SWAP_spr_Right_TowerC01=0;
SWAP_spr_Right_RoomC=0;
SWAP_spr_Right_TowerD01=0;
SWAP_spr_Right_TowerD02=0;
SWAP_spr_Hor_Right_Bridge_small=0;
SWAP_spr_Ver_Low_Bridge=0;
SWAP_spr_Right_Hallway=0;
SWAP_spr_V_Hallway_Right=0;
SWAP_spr_Naked_Bridge_Right=0;
SWAP_spr_Naked_Bridge_Right_Slim=0;
SWAP_spr_Naked_Bridge_Slim=0;
SWAP_spr_Ver_Mid_Bridge_Dark=0;
SWAP_spr_Ver_Mid_Bridge_Dark_clean=0;
SWAP_spr_Tower_E=0;
SWAP_spr_Tower_F=0;
SWAP_spr_Tower_G=0;
SWAP_spr_Tower_H=0;
SWAP_spr_Tower_I=0;
SWAP_spr_Tower_J=0;
SWAP_spr_Tower_K=0;
SWAP_spr_Diagonal_A=0;
SWAP_spr_LBridge_A=0;
SWAP_spr_LBridge_B=0;
SWAP_spr_TBridge=0;
SWAP_spr_UBridge=0;
SWAP_spr_LongBridge=0;
SWAP_spr_Bridge_single_center=0;
SWAP_spr_Bridge_single_right=0;

SWAP_spr_Bridge_Angle_A_collide=0;
SWAP_spr_Bridge_Angle_B_collide=0;
SWAP_spr_Bridge_Angle_C_collide=0;
SWAP_spr_Bridge_Angle_D_collide=0;
SWAP_spr_Bridge_Double_A_collide=0;
SWAP_spr_Right_Room_A_collide=0;
SWAP_spr_Right_TowerA_collide=0;
SWAP_spr_Right_Warehouse_collide=0;
SWAP_spr_Right_Apartment_A01_collide=0;
SWAP_spr_Right_TowerB_collide=0;
SWAP_spr_Right_TowerC01_collide=0;
SWAP_spr_Right_RoomC_collide=0;
SWAP_spr_Right_TowerD01_collide=0;
SWAP_spr_Right_TowerD02_collide=0;
SWAP_spr_Hor_Right_Bridge_small_collide=0;
SWAP_spr_Ver_Low_Bridge_collide=0;
SWAP_spr_Right_Hallway_collide=0;
SWAP_spr_V_Hallway_Right_collide=0;
SWAP_spr_Naked_Bridge_Right_collide=0;
SWAP_spr_Naked_Bridge_Right_Slim_collide=0;
SWAP_spr_Naked_Bridge_Slim_collide=0;
SWAP_spr_Tower_E_collide=0;
SWAP_spr_Tower_F_collide=0;
SWAP_spr_Tower_G_collide=0;
SWAP_spr_Tower_H_collide=0;
SWAP_spr_Tower_I_collide=0;
SWAP_spr_Tower_J_collide=0;
SWAP_spr_Tower_K_collide=0;
SWAP_spr_Diagonal_A_collide=0;
SWAP_spr_LBridge_A_collide=0;
SWAP_spr_LBridge_B_collide=0;
SWAP_spr_TBridge_collide=0;
SWAP_spr_UBridge_collide=0;
SWAP_spr_LongBridge_collide=0;
SWAP_spr_Bridge_single_center_collide=0;
SWAP_spr_Bridge_single_right_collide=0;



//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// INITIALIZE IMPORT SPRITES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



//Valley --------------------------------------------------------------------------------
SWAP_spr_BurgermanValley_LONG_PLAT_A=0;
SWAP_spr_BurgermanValley_LONG_PLAT_A_collide=0;
SWAP_spr_BurgermanValley_LONG_PLAT_B=0;
SWAP_spr_BurgermanValley_LONG_PLAT_B_collide=0;
SWAP_spr_BurgermanValley_LONG_PLAT_C=0;
SWAP_spr_BurgermanValley_LONG_PLAT_C_collide=0;

SWAP_spr_BurgermanValley_BK_A=0;
SWAP_spr_BurgermanValley_BK_A_collide=0;
SWAP_spr_BurgermanValley_BK_B=0;
SWAP_spr_BurgermanValley_BK_B_collide=0;

//Misc --------------------------------------------------------------------------------
Garbage_Collector=0;
LS_Tile_A=0;
spr_LS_Ground=0;
Anime_Lines=0;
TubeIN =0;
surf =0;
TallBlast=0;
FatBlast=0;

//Dolphin
spr_Dolphin_Swim=0;
spr_Dolphin_Idle=0;

//Dolphin Trainer
spr_DolphinMan_Idle=0;
spr_DolphinMan_Show=0;

//Mentor --------------------------------------------------------------------------------
Mentor=0;
Mentor_Fire=0;
Mentor_Uniform=0;
Mentor_Thomp=0;

//Clouds --------------------------------------------------------------------------------
PinkCloud=0;
BlueCloud=0;
OrangeCloud=0;

//TrollQueen --------------------------------------------------------------------------
TrollQueen_Explode=0;
TrollQueen_Turn=0;
TrollQueen_Stand=0;
TrollQueen_Walk=0;
TrollQueen_Fire=0;
TrollQueen_GetUP=0;
TrollQueen_Swing=0;
TrollQueen_Jump=0;
TrollQueen_SlamGround=0;
TrollQueen_Sit=0;
TrollQueen_BackHand=0;
TrollQueen_UpperCut=0;


//Mr Grin ------------------------------------------------------------------------------
spr_MrGrin_Explode=0;
spr_MrGrin_Walk=0;
spr_MrGrin_Idle=0;
spr_MrGrin_Jump=0;
spr_MrGrin_Clone=0;
spr_MrGrin_Turn=0;
spr_MrGrin_Shoot_UP=0;
spr_MrGrin_Shoot_Down=0;
spr_MrGrin_Shoot_Forward_Down=0;
spr_MrGrin_Shoot_Forward_UP=0;
spr_MrGrin_Shoot_Forward_Single=0;
spr_MrGrin_Shoot_Forward=0;

//Rabbit ------------------------------------------------------------------------------
spr_Rabbit_Explode=0;
spr_Rabbit_Idle=0;
spr_Rabbit_Bomb=0;
spr_Rabbit_Jump=0;
spr_Rabbit_Turn=0;
spr_Rabbit_Walk=0;
spr_Rabbit_ShootUP=0;
spr_Rabbit_ShootDown=0;

spr_Rabbit_Egg_A=0;
spr_Rabbit_Egg_B=0;
spr_Rabbit_Egg_C=0;

//Collector ---------------------------------------------------------------------------
Collector_Backhand=0;
Collector_Shoot=0;
Collector_UpperCut=0;
Collector_Walk=0;
Collector_Idle=0;

spr_Collector_Turn=0;
spr_Collector_Belly=0;
spr_Collector_Explode=0;

spr_Collector_Ball=0;
spr_Collector_Ball_Splash=0;

spr_Collector_Fire =  0;
Collector_Sit=0;

//Mech Collector ---------------------------------------------------------------------------
spr_Mechollector_Explode=0;
spr_Mechollector_Walk=0;
spr_Mechollector_Stand=0;
spr_Mechollector_Shoot=0;
spr_Mechollector_Turn=0;
spr_Mechollector_Jump=0;
spr_Mechollector_GroundBlast=0;
//White Bat ---------------------------------------------------------------------------
spr_WB_Explode=0;
spr_WB_Fly=0;
spr_WB_Glide=0;
spr_WB_Scream=0;
spr_WB_Storm=0;
spr_WB_Turn=0;
//Buffs
spr_Absorb=0;
spr_Absorb_header=0;

//Creeper ------------------------------------------------------------------------------
Creeper_Bite=0;
Creeper_Spray=0;
Creeper_Stand=0;
Creeper_Turn=0;
Creeper_Walk=0;

//BurgerMan ------------------------------------------------------------------------------
BM_Point=0;
BM_Walk=0;
BM_Idle=0;

//Medium Consumer ---------------------------------
spr_Medium_Consumer_Walk=0;
spr_Medium_Consumer_Jump=0;
spr_Medium_Consumer_Turn=0;
spr_Medium_Consumer_Idle=0;
spr_Medium_Consumer_Bite=0;

//Consumer Kart ------------------------------------------------------------------------------
Consumer_Kart_Turn=0;
Consumer_Kart_Ride=0;

//Seeker ------------------------------------------------------------------------------
Seeker_Bite=0;
Seeker_Boost=0;
Seeker_Swim=0;
Seeker_Turn=0;

//Robot -------------------------------------------------------------------------------
Robot_Boost=0;
Robot_Fire=0;
Robot_Walk=0;
Robot_Stand=0;

//Monster 13 -------------------------------------------------------------------------------
spr_Drifter_Die=0;
spr_Drifter_Arm_A=0;
spr_Drifter_Cage=0;
spr_Drifter_Cage_Blast=0;
spr_Drifter_Blast=0;
spr_Drifter_Trigger=0;
spr_Drifter_Idle=0;
spr_Drifter_Turn=0;

//Monster 13 -------------------------------------------------------------------------------
spr_Monster_13_Explode=0;
spr_Monster_13_Boost=0;
spr_Monster_13_Turn=0;
spr_Monster_13_BackSlash=0;
spr_Monster_13_Idle=0;
spr_Monster_13_ForwardSlash=0;
spr_Monster_13_ArcBlast=0;
spr_Monster_13_Jump=0;
spr_Monster_13_Walk=0;
spr_Monster_13_Run=0;
spr_Monster_13_Duck_Shoot=0;
spr_Monster_13_Duck=0;

//MegaBot -------------------------------------------------------------------------------
spr_MegaBot_Explode=0;
spr_MegaBot_Dash_H=0;
spr_MegaBot_Dash_V=0;
spr_MegaBot_Blast=0;
spr_MegaBot_Jump=0;
spr_MegaBot_Slash=0;
spr_MegaBot_Turn=0;
spr_MegaBot_Walk=0;
spr_MegaBot_Sword=0;
spr_MegaBot_Idle=0;


//Gatler -------------------------------------------------------------------------------
Gatler_Fire=0;
Gatler_Fire_UPDOWN=0;
Gatler_Walk=0;
Gatler_Melee=0;
Gatler_Jump=0;

//Terror -------------------------------------------------------------------------------
spr_Terror_Idle=0;
spr_Terror_Turn=0;
spr_Terror_Shoot=0

//UFO --------------------------------------------------------------------------------
UFO=0;
UFO_top=0;

//GooeyDragon --------------------------------------------------------------------------------
spr_GD_Stand=0;
spr_GD_Scream=0;
spr_GD_Leave=0;
spr_GD_Dive=0;
spr_GD_Bite=0;

spr_GD_Swim=0;

//SIN --------------------------------------------------------------------------------
spr_Sin_Explode=0;
spr_SIN_Walk=0;
spr_SIN_Swing=0;
spr_SIN_Teleport=0;
spr_SIN_Turn=0;
spr_SIN_Blast=0;
spr_SIN_Idle=0;
spr_SIN_Grab=0;
spr_SIN_Jump=0;

spr_Wavlet_Blast=0;

//Ginger Hound --------------------------------------------------------------------------------
spr_GH_Explode=0;
spr_GH_Bite=0;
spr_GH_Idle=0;
spr_GH_Pounce=0;
spr_GH_Run=0;
spr_GH_Turn=0;
//spr_GH_Walk=0;
spr_GH_Blast=0;

//Little_Consumer -------------------------------------------------------------------------
spr_Little_Consumer_Walk=0;
spr_Little_Consumer_Jump=0;
spr_Little_Consumer_LookAround=0;
spr_Little_Consumer_Bite=0;
spr_Little_Consumer_Turn=0;

/*
//GingerPup -------------------------------------------------------------------------
spr_GingerPup_Idle_A=0;
spr_GingerPup_Idle_C=0;
spr_GingerPup_Cast=0;
spr_GingerPup_Jump=0;
spr_GingerPup_Float=0;
spr_GingerPup_Walk_A=0;
spr_GingerPup_Sleep=0;

//Fuzzy Turtle -------------------------------------------------------------------------
spr_FuzzyTurtle_OwlSnatch=0;
spr_FuzzyTurtle_Walk=0;
spr_FuzzyTurtle_Talk=0;
spr_FuzzyTurtle_Idle_A=0;
spr_FuzzyTurtle_Jump=0;
spr_FuzzyTurtle_Ladder=0;
spr_FuzzyTurtle_SwimB=0;

//Meow Cat -------------------------------------------------------------------------
spr_Cat_Idle=0;
spr_Cat_Jump=0;
spr_Cat_Meow=0;
spr_Cat_Walk=0;
spr_Cat_Ladder=0;
spr_Cat_Angry=0;
*/
spr_MeowCat_Header=0;

//Bat Consumer -------------------------------------------------------------------------
Bat_Consumer__Skinney_Fly_A=0;
Bat_Consumer__Skinney_Fly_B=0;
Bat_Consumer__Skinney_Fire_A=0;

//QuadroPOD -------------------------------------------------------------------------
spr_QuadroPOD_Idle=0;
spr_QuadroPOD_turn=0;
spr_QuadroPOD_DownForward=0;
spr_QuadroPOD_Forward=0;
spr_QuadroPOD_UPForward=0;
spr_QuadroPOD_UP=0;
spr_QuadroPOD_JUMP=0;
spr_QuadroPOD_walk=0;

/*
//Lurker -------------------------------------------------------------------------
spr_Lurker_Walk=0;
spr_Lurker_Bite=0;
spr_Lurker_Idle=0;
*/

//Baby Fairy -------------------------------------------------------------------------
spr_Baby_Fairy_CAST=0;
spr_Baby_Fairy_FLY=0;
spr_Baby_Fairy_SUMMON=0;



//Ships -------------------------------------------------------------------------
spr_Ship_Short=0;

//TurrentPOD -------------------------------------------------------------------------
spr_TurrentPOD=0;
spr_TurrentPOD_Turn=0;


//Menu --------------------------------------------------------------------------------
spr_Atlus_Logo=0;
spr_Duo=0;
spr_Horizon=0;
//RS_LOGO=0;
Menu_Arrow=0;
spr_Menu_BG=0;

EMP=0;
Ready=0;
Shield=0;
Fight=0;
FuzzyTurtle=0;
GingerPup_header=0;
spr_QuackerSquad=0;
spr_Continue=0;
spr_Clear_Area=0;

Resurrection=0;
Powerup=0;
Checkpoint=0;
StageClear=0;


//Tops --------------------------------------------------------------------------------
SWAP_spr_Right_Warehouse_top=0; //check
SWAP_spr_Right_Apartment_A01_top=0; //check
SWAP_spr_Right_TowerD01_top=0; //check
SWAP_spr_Right_TowerD02_top=0; //check
SWAP_spr_Right_TowerC01_top=0; //check
// Cen_Hallway_top=0;
SWAP_spr_Right_RoomC_top=0; //check

SWAP_spr_Right_Hallway_top=0; //check
SWAP_spr_Ver_Low_Bridge_top=0; //check
// Cen_Warehouse_top=0;
SWAP_spr_Right_Room_A_top=0; //check
// Center_Room_A_top=0;
// Hor_Cen_Bridge_small_top=0;
SWAP_spr_Hor_Right_Bridge_small_top=0; //check
SWAP_spr_V_Hallway_Right_top=0; //check
SWAP_spr_Right_TowerA_top=0; //check
SWAP_spr_Naked_Bridge_Right_top=0; //check
SWAP_spr_Right_TowerB_top=0; //check
SWAP_spr_Tower_E_top=0; //check
SWAP_spr_Tower_F_top=0; //check
SWAP_spr_Tower_G_top=0; //check
SWAP_spr_Tower_H_top=0; //check
SWAP_spr_Tower_I_top=0; //check
SWAP_spr_Tower_J_top=0; //check
SWAP_spr_Tower_K_top=0; //check
SWAP_spr_Diagonal_A_top=0; //check
SWAP_spr_LBridge_A_top=0;//check
SWAP_spr_LBridge_B_top=0;//check
SWAP_spr_TBridge_top=0;//check
SWAP_spr_UBridge_top=0;//check
SWAP_spr_LongBridge_top=0;
SWAP_spr_Bridge_single_center_top=0;
SWAP_spr_Bridge_single_right_top=0;

SWAP_spr_Tunnel_Cliff_A_Top=0; //check
SWAP_spr_Tunnel_Cliff_B_Top=0; //check
SWAP_spr_Tunnel_Cliff_C_Top=0; //check
SWAP_spr_Tunnel_Cliff_F_Top=0; //check
SWAP_spr_Tunnel_Cliff_G_Top=0; //check
SWAP_spr_Tunnel_Cliff_H_Top=0; //check

SWAP_spr_PearStore_inside_top=0; //check

SWAP_spr_Crypt_A_top=0; //check
SWAP_spr_Crypt_F_top=0; //check

SWAP_spr_BurgermanValley_BK_A_top=0; //check

//ADD SPRITES ----------------
TallBlast = 0;

}


background_index[0] = noone;
background_index[1] = noone;
background_index[2] = noone;
background_index[3] = noone;
background_index[4] = noone;
background_index[5] = noone;
background_index[6] = noone;


skip_flush=false;
texture_flush=false;
sprite_flush=false;
page_flush=false;
full_flush=false;

//OTHER STUFF
global.manuel_draw=false; 
global.color_blend=false;
flushed=true;
}
