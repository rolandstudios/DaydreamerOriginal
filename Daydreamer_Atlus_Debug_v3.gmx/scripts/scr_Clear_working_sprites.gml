/*
{
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// DELETE SPRITES
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//Background --------------------------------------------------------------------------------

global.bg_0 = background_add(working_directory+"\Imports\bg_empty.png",false,true);
global.bg_1 = background_add(working_directory+"\Imports\bg_empty.png",false,true);
global.bg_2 = background_add(working_directory+"\Imports\bg_empty.png",false,true);
global.bg_3 = background_add(working_directory+"\Imports\bg_empty.png",false,true);
global.bg_4 = background_add(working_directory+"\Imports\bg_empty.png",false,true);
global.bg_5 = background_add(working_directory+"\Imports\bg_empty.png",false,true);
global.bg_6 = background_add(working_directory+"\Imports\bg_empty.png",false,true);

//ENVIRONMENT 
}

//JUNKYARD----------------------------------------------
if (global.Clear_Working)
{


//END GAME
sprite_delete(spr_EndGame_Spire);
sprite_delete(spr_EndGame_Mountains);


//Title Screen
sprite_delete(spr_Title_Template_temp);
sprite_delete(spr_Olivia_Title_temp);
sprite_delete(spr_Daydreamer_LOGO_temp);
sprite_delete(spr_Cover_Olivia_temp);
sprite_delete(spr_Cover_Collector_temp);
sprite_delete(spr_Cover_BG_temp);
sprite_delete(spr_Cover_top_temp);

//Happy Clouds
sprite_delete(spr_PinkCloud_temp);
sprite_delete(spr_BlueCloud_temp);
sprite_delete(spr_OrangeCloud_temp);

//GamePad Config
sprite_delete(spr_gamepad_0);
sprite_delete(spr_gamepad_1);

//Tech Islands
sprite_delete(spr_TechIsland_A);
sprite_delete(spr_TechIsland_B);
sprite_delete(spr_TechIsland_C);
sprite_delete(spr_TechIsland_D);
sprite_delete(spr_TechIsland_E);
sprite_delete(spr_TechIsland_F);

//ClassRoom
sprite_delete(spr_Olivia_Sit);
sprite_delete(spr_Classroom);
sprite_delete(spr_Classroom_FG_A);
sprite_delete(spr_Classroom_FG_B);
sprite_delete(spr_Classroom_FG_C);
sprite_delete(spr_Classroom_FG_D);
sprite_delete(spr_Classroom_FG_E);
sprite_delete(spr_GateKeeper);
sprite_delete(spr_Dirt_Mound_A);

//House
sprite_delete(spr_House_Boxes);
sprite_delete(spr_House_TV);
sprite_delete(spr_Washer);
sprite_delete(spr_Fan);
sprite_delete(spr_Laundry_A);
sprite_delete(spr_Laundry_B);
sprite_delete(spr_Laundry_C);
sprite_delete(spr_Laundry_D);
sprite_delete(spr_Laundry_E);
sprite_delete(spr_Olivia_House_Door);
sprite_delete(spr_Olivia_House);
sprite_delete(spr_Olivia_House_collide);

sprite_delete(spr_Chamber_Plat_A);
sprite_delete(spr_Chamber_Plat_B);
sprite_delete(spr_Chamber_Plat_C);
sprite_delete(spr_Chamber_Plat_D);
sprite_delete(spr_Chamber_Plat_E);
sprite_delete(spr_Chamber_Plat_F);
sprite_delete(spr_Chamber_Plat_G);
sprite_delete(spr_Chamber_Plat_H);

sprite_delete(spr_Tube_Water);
sprite_delete(spr_Tube_Glass);

sprite_delete(spr_LS_Spikes_temp);

sprite_delete(spr_Morph_Plat_A);
sprite_delete(spr_Morph_Plat_B);

sprite_delete(spr_LS_Plat_B_temp);
sprite_delete(spr_LS_Plat_C_temp);
sprite_delete(spr_LS_Plat_D_temp);
sprite_delete(spr_LS_Plat_E_temp);

sprite_delete(spr_LS_Long_Plat_A);
sprite_delete(spr_LS_Long_Plat_B);
sprite_delete(spr_LS_Long_Plat_C);
sprite_delete(spr_LS_Long_Plat_D);
sprite_delete(spr_LS_Long_Plat_E);
sprite_delete(spr_LS_Long_Plat_F);
sprite_delete(spr_LS_Long_Plat_G1);
sprite_delete(spr_LS_Long_Plat_G2);
sprite_delete(spr_LS_Long_Plat_H);
sprite_delete(spr_LS_Long_Plat_I1);
sprite_delete(spr_LS_Long_Plat_I2);
sprite_delete(spr_LS_Long_Plat_J);
sprite_delete(spr_LS_Long_Plat_K);
sprite_delete(spr_LS_Long_Plat_L);
sprite_delete(spr_LS_Long_Plat_M);
sprite_delete(spr_LS_Long_Plat_N);
//sprite_delete(spr_LS_Long_Plat_O);
sprite_delete(spr_LS_Long_Plat_P);
sprite_delete(spr_LS_Long_Plat_Q);

sprite_delete(spr_JunkYard_Ground_A);
sprite_delete(spr_JunkYard_Ground_B);
sprite_delete(spr_JunkYard_Ground_C);
sprite_delete(spr_JunkYard_Ground_D);
sprite_delete(spr_JunkYard_Ground_E);
sprite_delete(spr_JunkYard_Ground_F);
sprite_delete(spr_JunkYard_Ground_G);
sprite_delete(spr_JunkYard_Ground_H);
sprite_delete(spr_JunkYard_Ground_I);
sprite_delete(spr_JunkYard_Ground_J);
sprite_delete(spr_JunkYard_Ground_K);
sprite_delete(spr_JunkYard_Ground_L);

sprite_delete(spr_JunkYard_Ground_A_collide);
sprite_delete(spr_JunkYard_Ground_B_collide);
sprite_delete(spr_JunkYard_Ground_C_collide);
sprite_delete(spr_JunkYard_Ground_D_collide);
sprite_delete(spr_JunkYard_Ground_E_collide);
sprite_delete(spr_JunkYard_Ground_F_collide);
sprite_delete(spr_JunkYard_Ground_G_collide);
sprite_delete(spr_JunkYard_Ground_H_collide);
sprite_delete(spr_JunkYard_Ground_I_collide);
sprite_delete(spr_JunkYard_Ground_J_collide);
sprite_delete(spr_JunkYard_Ground_K_collide);
sprite_delete(spr_JunkYard_Ground_L_collide);

sprite_delete(spr_SlimePlat_A);

sprite_delete(spr_TirePile_high);
sprite_delete(spr_TirePile_long);
sprite_delete(spr_TirePile_small);
sprite_delete(spr_TirePile_smallb);
sprite_delete(spr_LotsofJunks);
sprite_delete(spr_Pipes_A);
sprite_delete(spr_Debris_D);
sprite_delete(spr_Debris_E);
sprite_delete(spr_Debris_F);
sprite_delete(spr_Debris_G);
sprite_delete(spr_JunkPile_A);
sprite_delete(spr_JunkPile_B);
sprite_delete(spr_JunkPile_C);
sprite_delete(spr_JunkPile_D);
sprite_delete(spr_JunkPile_E);
sprite_delete(spr_JunkPile_F);
sprite_delete(spr_JunkPile_G);
sprite_delete(spr_JunkPile_H);


//GRASSY HILLS------------------------------------------

sprite_delete(spr_GrassyHill_00);
sprite_delete(spr_GrassyHill_01);
sprite_delete(spr_GrassyHill_02);
sprite_delete(spr_GrassyHill_03);
sprite_delete(spr_GrassyHill_04);
sprite_delete(spr_GrassyHill_05);
sprite_delete(spr_GrassyHill_06);
sprite_delete(spr_GrassyHill_07);
sprite_delete(spr_GrassyHill_08);
sprite_delete(spr_GrassyHill_09);
sprite_delete(spr_GrassyHill_10);
sprite_delete(spr_GrassyHill_11);
sprite_delete(spr_GrassyHill_12);
sprite_delete(spr_GrassyHill_13);
sprite_delete(spr_GrassyHill_14);
sprite_delete(spr_GrassyHill_15);
sprite_delete(spr_GrassyHill_16);
sprite_delete(spr_GrassyHill_17);
sprite_delete(spr_GrassyHill_18);
sprite_delete(spr_GrassyHill_19);

sprite_delete(spr_GrassyHill_00_collide);
sprite_delete(spr_GrassyHill_01_collide);
sprite_delete(spr_GrassyHill_02_collide);
sprite_delete(spr_GrassyHill_03_collide);
sprite_delete(spr_GrassyHill_04_collide);
sprite_delete(spr_GrassyHill_05_collide);
sprite_delete(spr_GrassyHill_06_collide);
sprite_delete(spr_GrassyHill_07_collide);
sprite_delete(spr_GrassyHill_08_collide);
sprite_delete(spr_GrassyHill_09_collide);
sprite_delete(spr_GrassyHill_10_collide);
sprite_delete(spr_GrassyHill_11_collide);

sprite_delete(spr_Street_A);
sprite_delete(spr_Street_B);
sprite_delete(spr_Street_C);
sprite_delete(spr_Street_D);
sprite_delete(spr_Street_E);
sprite_delete(spr_Street_F);
sprite_delete(spr_Street_G);

sprite_delete(spr_Street_A_collide);
sprite_delete(spr_Street_B_collide);
sprite_delete(spr_Street_C_collide);
sprite_delete(spr_Street_D_collide);
sprite_delete(spr_Street_E_collide);
sprite_delete(spr_Street_F_collide);
sprite_delete(spr_Street_G_collide);

sprite_delete(spr_Island_A);
sprite_delete(spr_Island_B);
sprite_delete(spr_Island_C);
sprite_delete(spr_Island_D);
sprite_delete(spr_Island_E);
sprite_delete(spr_Island_F);
sprite_delete(spr_Island_G);
sprite_delete(spr_Island_H);

sprite_delete(spr_House_A);
sprite_delete(spr_House_B);
sprite_delete(spr_House_C);
sprite_delete(spr_House_D);
sprite_delete(spr_House_E);
sprite_delete(spr_House_F);
sprite_delete(spr_House_G);
sprite_delete(spr_House_H);
sprite_delete(spr_House_I);
sprite_delete(spr_House_J);
sprite_delete(spr_House_K);
sprite_delete(spr_House_L);
sprite_delete(spr_House_M);
sprite_delete(spr_House_N);

sprite_delete(spr_GrassyHILLs_Mountains_A);

//CRYPT-------------------------------------------

sprite_delete(spr_Crypt_A);
sprite_delete(spr_Crypt_B);
sprite_delete(spr_Crypt_C);
sprite_delete(spr_Crypt_D);
sprite_delete(spr_Crypt_E);
sprite_delete(spr_Crypt_F);

sprite_delete(spr_Crypt_A_collide);
sprite_delete(spr_Crypt_B_collide);
sprite_delete(spr_Crypt_C_collide);
sprite_delete(spr_Crypt_D_collide);
sprite_delete(spr_Crypt_E_collide);
sprite_delete(spr_Crypt_F_collide);

//--------------------------------------
// Capsoles

sprite_delete(spr_left_capsole);
sprite_delete(spr_left_capsole_dark);
sprite_delete(spr_middle_Capsole);
sprite_delete(spr_middle_CapsoleDark);

// Alien Eggs

sprite_delete(spr_AlienEgg_B);
sprite_delete(spr_AlienEgg_C);
sprite_delete(spr_AlienEgg_D);

//Barrier
sprite_delete(spr_Barrier);
sprite_delete(spr_Barrier_Lazer);
sprite_delete(spr_Lazer_Damage);

//FX
sprite_delete(spr_volume_Flare_A);


//BUILDINGS------------------------------------

// Pear Store
sprite_delete(spr_PearStore);
sprite_delete(spr_PearStore_inside);
sprite_delete(spr_PearStore_inside_collide);

// Hotels
sprite_delete(spr_Hotel_Sign_L);
sprite_delete(spr_Hotel_Sign_R);
sprite_delete(spr_Hotel_A);
sprite_delete(spr_Hotel_B);

//Dolphin Store

sprite_delete(spr_DolphinStore);
sprite_delete(spr_DolphinStore_Tank_top);


//---------------------------------------------


//Crates

sprite_delete(spr_Crate_Center_Single);
sprite_delete(spr_Crate_Center_Double);
sprite_delete(spr_Crate_Center_Tripple);
sprite_delete(spr_Crate_Right_Single);
sprite_delete(spr_CrateDark_Right_Single);
sprite_delete(spr_Crate_Right_Double);
sprite_delete(spr_CrateDark_Right_Double);
sprite_delete(spr_Crate_Right_Tiple);
sprite_delete(spr_CrateDark_Right_Tiple);

sprite_delete(spr_Crate_Round_A);
sprite_delete(spr_Crate_Round_B);
sprite_delete(spr_Crate_B_01);
sprite_delete(spr_Crate_B_02);
sprite_delete(spr_Crate_B_03);
sprite_delete(spr_Crate_C_01);

//Spike Boxes
sprite_delete(spr_SpikeBox_A);
sprite_delete(spr_SpikeBox_B);
sprite_delete(spr_SpikeBox_C);


//Scaffolding
sprite_delete(spr_FG_Scaf_A);
sprite_delete(spr_FG_Scaf_B);
sprite_delete(spr_FG_Scaf_C);
sprite_delete(spr_FG_Scaf_D);

sprite_delete(spr_Tall_Scaffolding_A);
sprite_delete(spr_Tall_Scaffolding_B);
sprite_delete(spr_Tall_Scaffolding_C);

sprite_delete(spr_Short_Platform_Left);
sprite_delete(spr_Center_Short_Platform);
sprite_delete(spr_Tall_platform_Center);
sprite_delete(spr_small_Catwalk_Suspension);
sprite_delete(spr_small_Catwalk_suspension_with_shadow);
sprite_delete(spr_Stack_A);
sprite_delete(spr_Stack_B);

//Tracks
sprite_delete(spr_Track_A_temp);
sprite_delete(spr_Track_B_temp);
sprite_delete(spr_Track_C_temp);

//PowerCore
sprite_delete(spr_PowerCore_temp);

sprite_delete(spr_Suspend_Catwalk_Center);
sprite_delete(spr_Suspend_Catwalk_Dark);
sprite_delete(spr_FloatPlat_Center);
sprite_delete(spr_FloatPlat_Right);
sprite_delete(spr_Catwalk_Side);
sprite_delete(spr_Catwalk_Side_small);
sprite_delete(spr_Catwalk_Side_med);

sprite_delete(spr_Scaffolding_Tri_PlatformDark_High_Right);
sprite_delete(spr_Scaffolding_Tri_PlatformDark_High_Right_Short);
sprite_delete(spr_scaffolding_double);

//Rocks

sprite_delete(spr_Mound_Bolder_A_Center_dark);

//Mountains-----------------------
sprite_delete(spr_Moutain_A01);
sprite_delete(spr_Moutain_A03);
sprite_delete(spr_Moutain_A04);
sprite_delete(spr_Moutain_B01);
sprite_delete(spr_Moutain_B02);
sprite_delete(spr_Moutain_B03);
sprite_delete(spr_Moutain_B04);

sprite_delete(spr_Moutain_A01_collide);
sprite_delete(spr_Moutain_A03_collide);
sprite_delete(spr_Moutain_A04_collide);
sprite_delete(spr_Moutain_B01_collide);
sprite_delete(spr_Moutain_B02_collide);
sprite_delete(spr_Moutain_B03_collide);
sprite_delete(spr_Moutain_B04_collide);

//DELETE TEMPS-----------------------------------------------
sprite_delete(spr_BM_temp);
sprite_delete(spr_MrGrin_temp);
sprite_delete(spr_Rabbit_temp);
sprite_delete(spr_Kart_Consumer_temp);
sprite_delete(spr_Creepertemp);
sprite_delete(spr_ELDER);
sprite_delete(spr_UFO);
sprite_delete(Helper_Island);
sprite_delete(spr_Gatler);
sprite_delete(spr_Mentor);
sprite_delete(spr_GingerHound);
sprite_delete(robot_temp);
sprite_delete(spr_Seeker_temp);
sprite_delete(spr_WB_temp);
sprite_delete(spr_Monster_13_temp);
sprite_delete(spr_Drifter_Idle_temp);
sprite_delete(spr_GooeyDragon_temp);
sprite_delete(spr_Dolphin_temp);
sprite_delete(spr_DolphinMan_temp);
sprite_delete(spr_Terror_temp);

sprite_delete(spr_Medium_Consumer_temp)
sprite_delete(spr_Brother_Idle_temp);
sprite_delete(spr_Little_Consumer_temp);
sprite_delete(spr_QuadroPOD_temp);
sprite_delete(Bat_Consumer_Skinney_temp);
sprite_delete(spr_Ship_Short_temp);
sprite_delete(spr_Baby_Fairy_temp);
sprite_delete(spr_TurrentPOD_temp);
sprite_delete(spr_LS_Door_temp);


//THE VALLEY--------------------------------------


sprite_delete(spr_BV_Plat_Post);
sprite_delete(spr_BV_Plat_A);
sprite_delete(spr_BV_Plat_B);
sprite_delete(spr_BV_Plat_C);
sprite_delete(spr_BV_Plat_D);
sprite_delete(spr_BV_Plat_E1);
sprite_delete(spr_BV_Plat_E2);
sprite_delete(spr_BV_Plat_F);
sprite_delete(spr_BV_Plat_G);
sprite_delete(spr_BV_Cliff_Back);
sprite_delete(spr_BV_Cliff_Side);
sprite_delete(spr_BV_Shack_A);
sprite_delete(spr_BV_Shack_B);
sprite_delete(spr_BV_TreePlat_A);
sprite_delete(spr_BV_TreePlat_B);
sprite_delete(spr_Narrow_Plat_A);
sprite_delete(spr_Narrow_Plat_B);
sprite_delete(spr_Narrow_Plat_C);
sprite_delete(spr_Narrow_Plat_D);

sprite_delete(spr_BV_Plat_A_collide);
sprite_delete(spr_BV_Plat_B_collide);
sprite_delete(spr_BV_Plat_D_collide);
sprite_delete(spr_BV_Plat_F_collide);
sprite_delete(spr_BV_Plat_Post_collide);
sprite_delete(spr_BV_Shack_A_collide);
sprite_delete(spr_BV_Shack_B_collide);
sprite_delete(spr_BV_TreePlat_A_collide);
sprite_delete(spr_BV_TreePlat_B_collide);

sprite_delete(spr_BurgermanValley_LONG_PLAT_A_small);
sprite_delete(spr_BurgermanValley_LONG_PLAT_B_small);
sprite_delete(spr_BurgermanValley_LONG_PLAT_C_small)
sprite_delete(spr_BurgermanValley_BK_A_small);
sprite_delete(spr_BurgermanValley_BK_B_small);

//Green Forrest--------------------------------------

sprite_delete(spr_Thorns_B);
sprite_delete(spr_GreenForrest_Dirt_A);

sprite_delete(spr_GreenForrest_Log_A);
sprite_delete(spr_GreenForrest_Log_B);
sprite_delete(spr_GreenForrest_Log_C);
sprite_delete(spr_GreenForrest_Log_D);

sprite_delete(spr_GreenForrest_Tree_A);
sprite_delete(spr_GreenForrest_Tree_B);
sprite_delete(spr_GreenForrest_Tree_C);
sprite_delete(spr_GreenForrest_Stump_A);
sprite_delete(spr_GreenForrest_Stump_B);
sprite_delete(spr_GreenForrest_Stump_C);
sprite_delete(spr_GreenForrest_BG_A);
sprite_delete(spr_GreenForrest_BG_B);
sprite_delete(spr_GreenForrest_BG_C);;
sprite_delete(spr_GreenForrest_BG_D);
sprite_delete(spr_GreenForrest_Hedge_Top);
sprite_delete(spr_GreenForrest_Hedge_Back);

//Mushroom Forrest------------------------------------

sprite_delete(spr_MushroomForrest_PLAT_A);
sprite_delete(spr_MushroomForrest_PLAT_B);
sprite_delete(spr_MushroomForrest_PLAT_C);
sprite_delete(spr_MushroomForrest_PLAT_D);
sprite_delete(spr_MushroomForrest_PLAT_E);
sprite_delete(spr_MushroomForrest_PLAT_F);
sprite_delete(spr_MushroomForrest_PLAT_G);
sprite_delete(spr_MushroomForrest_PLAT_H);
sprite_delete(spr_MushroomForrest_PLAT_I);
sprite_delete(spr_MushroomForrest_PLAT_J);
sprite_delete(spr_MushroomForrest_PLAT_K);
sprite_delete(spr_MushroomForrest_PLAT_L);
sprite_delete(spr_MushroomForrest_PLAT_M);
sprite_delete(spr_MushroomForrest_PLAT_N);
sprite_delete(spr_MushroomForrest_PLAT_O);
sprite_delete(spr_MushroomForrest_PLAT_P);
sprite_delete(spr_MushroomForrest_PLAT_Q);
sprite_delete(spr_MushroomForrest_PLAT_R);
sprite_delete(spr_MushroomForrest_PLAT_S);
sprite_delete(spr_MushroomForrest_Tree_A);
sprite_delete(spr_MushroomForrest_Tree_B);
sprite_delete(spr_MushroomForrest_Tree_C);

//DARKCORE----------------------------------------

//Factory

sprite_delete(spr_trollfactory_FG);
sprite_delete(spr_trollfactory_FG_collide);

//BedRock
sprite_delete(spr_RockyGround_With_Bolders_dark);
sprite_delete(spr_RockyGround_With_Bolders);

//Cliffs
sprite_delete(spr_Tunnel_Cliff_A);
sprite_delete(spr_Tunnel_Cliff_B);
sprite_delete(spr_Tunnel_Cliff_C);
sprite_delete(spr_Tunnel_Cliff_D);
sprite_delete(spr_Tunnel_Cliff_E);
sprite_delete(spr_Tunnel_Cliff_F);
sprite_delete(spr_Tunnel_Cliff_G);
sprite_delete(spr_Tunnel_Cliff_H);

sprite_delete(spr_Tunnel_Cliff_A_collide);
sprite_delete(spr_Tunnel_Cliff_B_collide);
sprite_delete(spr_Tunnel_Cliff_C_collide);
sprite_delete(spr_Tunnel_Cliff_D_collide);
sprite_delete(spr_Tunnel_Cliff_E_collide);
sprite_delete(spr_Tunnel_Cliff_F_collide);
sprite_delete(spr_Tunnel_Cliff_G_collide);
sprite_delete(spr_Tunnel_Cliff_H_collide);

//Bridges
sprite_delete(spr_Bridge_Angle_A);
sprite_delete(spr_Bridge_Angle_B);
sprite_delete(spr_Bridge_Angle_C);
sprite_delete(spr_Bridge_Angle_D);
sprite_delete(spr_Bridge_Double_A);
sprite_delete(spr_Right_Room_A);
sprite_delete(spr_Right_TowerA);
sprite_delete(spr_Right_Warehouse);
sprite_delete(spr_Right_Apartment_A01);
sprite_delete(spr_Right_TowerB);
sprite_delete(spr_Right_TowerC01);
sprite_delete(spr_Right_RoomC);
sprite_delete(spr_Right_TowerD01);
sprite_delete(spr_Right_TowerD02);
sprite_delete(spr_Hor_Right_Bridge_small);
sprite_delete(spr_Ver_Low_Bridge);
sprite_delete(spr_Right_Hallway);
sprite_delete(spr_V_Hallway_Right);
sprite_delete(spr_Naked_Bridge_Right);
sprite_delete(spr_Naked_Bridge_Right_Slim);
sprite_delete(spr_Naked_Bridge_Slim);
sprite_delete(spr_Ver_Mid_Bridge_Dark);
sprite_delete(spr_Ver_Mid_Bridge_Dark_clean);

sprite_delete(spr_Right_Room_A_collide);
sprite_delete(spr_Right_TowerA_collide);
sprite_delete(spr_Right_Warehouse_collide);
sprite_delete(spr_Right_Apartment_A01_collide);
sprite_delete(spr_Right_TowerB_collide);
sprite_delete(spr_Right_TowerC01_collide);
sprite_delete(spr_Right_RoomC_collide);
sprite_delete(spr_Right_TowerD01_collide);
sprite_delete(spr_Right_TowerD02_collide);
sprite_delete(spr_Hor_Right_Bridge_small_collide);
sprite_delete(spr_Ver_Low_Bridge_collide);
sprite_delete(spr_Right_Hallway_collide);
sprite_delete(spr_V_Hallway_Right_collide);
sprite_delete(spr_Naked_Bridge_Right_collide);

sprite_delete(spr_Tower_E);
sprite_delete(spr_Tower_F);
sprite_delete(spr_Tower_G);
sprite_delete(spr_Tower_H);
sprite_delete(spr_Tower_I);
sprite_delete(spr_Tower_J);
sprite_delete(spr_Tower_K);
sprite_delete(spr_Diagonal_A);
sprite_delete(spr_LBridge_A);
sprite_delete(spr_LBridge_B);
sprite_delete(spr_TBridge);
sprite_delete(spr_UBridge);
sprite_delete(spr_LongBridge);
sprite_delete(spr_Bridge_single_center);
sprite_delete(spr_Bridge_single_right);

global.Clear_Working=false;
}//END Clear Working


}
