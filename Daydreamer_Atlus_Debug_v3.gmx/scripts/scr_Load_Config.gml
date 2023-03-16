//---------------------------------------------------------------------------//
//---- ASYNC LOADING --------------------------------------------------------//
//---------------------------------------------------------------------------//

if (global.platform==3) //PS4 ONLY
{                                 
    if (global.saving==false) && (global.loading==false) //CHECK SAVING AND LOADING
    {
    global.load_type=1;
    show_debug_message("ASYNC Load Requesting File  ["+global.SaveFile+"]");
    
    globalvar loadbuff;
    global.loadbuff = buffer_create(1,buffer_grow,1);
    
    buffer_async_group_begin("Saves");
    buffer_async_group_option("showdialog", 0);
    buffer_async_group_option("savepadindex", 0);   
    buffer_async_group_option("slottitle", "Daydreamer");
    buffer_async_group_option("subtitle", "Daydreamer Save Files");
                               
    buffer_load_async(global.loadbuff,"savefile.sav",0,-1);  
      
    global.loadid = buffer_async_group_end();   // Actually start loading now please
    global.loading=true;    
    }//END CHECK
} 



//---------------------------------------------------------------------------
//---- NORMAL LOADING -------------------------------------------------------
//---------------------------------------------------------------------------

if (global.platform==0) || (global.platform==1)//PC AND XBOX ONLY
{
var directory;
switch(global.platform)
{
case 0: directory="SaveGame\"; break; //PC
case 1: directory="SaveGame\"; break; //XBOXONE
}

if (global.platform==1)
    {
        if (xboxone_get_savedata_user() != global.xb_user) && (global.xb_user!=pointer_null)
        {
            xboxone_set_savedata_user(global.xb_user);
        }
    }
 
//LOAD/CREATE CONFIG FILE -------------------------------------------------------------------------------        
if (file_exists(directory+"config.ini")) //LOAD CONFIG FILE
{
ini_open(directory+"config.ini");

global.blur_fx     = ini_read_real("Settings","blur_fx",0);
global.vol         = ini_read_real("Settings","vol",1);
global.mus         = ini_read_real("Settings","mus",1); 
global.dof         = ini_read_real("Settings","dof",false);
global.difficulty  = ini_read_real("Settings","difficulty",.75);
global.vsync       = ini_read_real("Settings","vsync",true); 
global.ctlstyle    = ini_read_real("Settings","ctlstyle",1);
global.auto_pickup = ini_read_real("Settings","auto_pickup",false);
global.auto_swap = ini_read_real("Settings","auto_swap",true); //edit 12/22/15
global.rumble      = ini_read_real("Settings","rumble",true);
global.shock_fx    = ini_read_real("Settings","shock_fx",0);
    
global.kb_Left     = ini_read_real("Keyboard","kb_Left",37);
global.kb_Right    = ini_read_real("Keyboard","kb_Right",39);
global.kb_Up       = ini_read_real("Keyboard","kb_Up",38);
global.kb_Down     = ini_read_real("Keyboard","kb_Down",40);
global.kb_Jump     = ini_read_real("Keyboard","kb_Jump",32);
global.kb_Melee    = ini_read_real("Keyboard","kb_Melee",90);
global.kb_Fire     = ini_read_real("Keyboard","kb_Fire",162);
global.kb_Weapon   = ini_read_real("Keyboard","kb_Weapon",160);
global.kb_Pause    = ini_read_real("Keyboard","kb_Pause",13);
global.kb_Select   = ini_read_real("Keyboard","kb_Select",69);
global.kb_Left_Shoulder  =  ini_read_real("Keyboard","kb_Left_Shoulder",67);
global.kb_Right_Shoulder =  ini_read_real("Keyboard","kb_Right_Shoulder",88);
global.kb_Left_Trigger   =  ini_read_real("Keyboard","kb_Left_Trigger",81);
global.kb_Right_Trigger  =  ini_read_real("Keyboard","kb_Right_Trigger",87);
global.kb_Pet_L  =  ini_read_real("Keyboard","kb_Pet_L",219);
global.kb_Pet_R  =  ini_read_real("Keyboard","kb_Pet_R",221);

global.gp_D_Left     = ini_read_real("Gamepad","gp_D_Left",gp_padl);
global.gp_D_Right    = ini_read_real("Gamepad","gp_D_Right",gp_padr);
global.gp_D_Up       = ini_read_real("Gamepad","gp_D_Up",gp_padu);
global.gp_D_Down     = ini_read_real("Gamepad","gp_D_Down",gp_padd);
global.gp_Jump     = ini_read_real("Gamepad","gp_Jump",gp_face1);
global.gp_Melee    = ini_read_real("Gamepad","gp_Melee",gp_face3);
global.gp_Fire     = ini_read_real("Gamepad","gp_Fire",gp_face2);
global.gp_Weapon   = ini_read_real("Gamepad","gp_Weapon",gp_face4);
global.gp_Pause    = ini_read_real("Gamepad","gp_Pause",gp_start);
global.gp_Select   = ini_read_real("Gamepad","gp_Select",gp_select);
global.gp_Left_Shoulder  =  ini_read_real("Gamepad","gp_Left_Shoulder",gp_shoulderl);
global.gp_Right_Shoulder =  ini_read_real("Gamepad","gp_Right_Shoulder",gp_shoulderr);
global.gp_Left_Trigger   =  ini_read_real("Gamepad","gp_Left_Trigger",gp_shoulderlb);
global.gp_Right_Trigger  =  ini_read_real("Gamepad","gp_Right_Trigger",gp_shoulderrb);
global.gp_Pet_L  =  ini_read_real("Gamepad","gp_Pet_L",gp_stickl);
global.gp_Pet_R  =  ini_read_real("Gamepad","gp_Pet_R",gp_stickr);
ini_close();    

}
else //IF NO CONFIG FILE MAKE ONE
{    

    ini_open("SaveGame\config.ini");
    ini_write_real("Settings","blur_fx",global.blur_fx);
    ini_write_real("Settings","vol",global.vol);
    ini_write_real("Settings","mus",global.mus);
    ini_write_real("Settings","dof",global.dof);
    ini_write_real("Settings","difficulty",global.difficulty);
    ini_write_real("Settings","vsync",global.vsync); 
    ini_write_real("Settings","ctlstyle",global.ctlstyle);
    ini_write_real("Settings","auto_pickup",global.auto_pickup);
    ini_write_real("Settings","auto_swap",global.auto_swap);//edit 12/22/15
    ini_write_real("Settings","rumble",global.rumble);
    ini_write_real("Settings","shock_fx",global.shock_fx);
    
    ini_write_real("Keyboard","kb_Left",global.kb_Left);
    ini_write_real("Keyboard","kb_Right",global.kb_Right);
    ini_write_real("Keyboard","kb_Up",global.kb_Up);
    ini_write_real("Keyboard","kb_Down",global.kb_Down);
    ini_write_real("Keyboard","kb_Jump",global.kb_Jump);
    ini_write_real("Keyboard","kb_Melee",global.kb_Melee);
    ini_write_real("Keyboard","kb_Fire",global.kb_Fire);
    ini_write_real("Keyboard","kb_Weapon",global.kb_Weapon);
    ini_write_real("Keyboard","kb_Pause",global.kb_Pause);
    ini_write_real("Keyboard","kb_Select",global.kb_Select);
    ini_write_real("Keyboard","kb_Left_Shoulder",global.kb_Left_Shoulder);
    ini_write_real("Keyboard","kb_Right_Shoulder",global.kb_Right_Shoulder);
    ini_write_real("Keyboard","kb_Left_Trigger",global.kb_Left_Trigger);
    ini_write_real("Keyboard","kb_Right_Trigger",global.kb_Right_Trigger);
    
    ini_write_real("Gamepad","gp_D_Left",global.gp_D_Left);
    ini_write_real("Gamepad","gp_D_Right",global.gp_D_Right);
    ini_write_real("Gamepad","gp_D_Up",global.gp_D_Up);
    ini_write_real("Gamepad","gp_D_Down",global.gp_D_Down);
    ini_write_real("Gamepad","gp_Jump",global.gp_Jump);
    ini_write_real("Gamepad","gp_Melee",global.gp_Melee);
    ini_write_real("Gamepad","gp_Fire",global.gp_Fire);
    ini_write_real("Gamepad","gp_Weapon",global.gp_Weapon);
    ini_write_real("Gamepad","gp_Pause",global.gp_Pause);
    ini_write_real("Gamepad","gp_Select",global.gp_Select);
    ini_write_real("Gamepad","gp_Left_Shoulder",global.gp_Left_Shoulder);
    ini_write_real("Gamepad","gp_Right_Shoulder",global.gp_Right_Shoulder);
    ini_write_real("Gamepad","gp_Left_Trigger",global.gp_Left_Trigger);
    ini_write_real("Gamepad","gp_Right_Trigger",global.gp_Right_Trigger);
    ini_write_real("Gamepad","gp_Pet_L",global.gp_Pet_L);
    ini_write_real("Gamepad","gp_Pet_R",global.gp_Pet_R);
    ini_close();  
    }    
    
    if !instance_exists(obj_Options)
    {
    global.sprite[0]= sprite_add(working_directory+"\Imports\bg_empty.png",0,0,0,0,0);
    global.background[0]= background_add(working_directory+"\Imports\bg_empty.png",false,true);
    master.alarm[2]=1; //CREAT RS LOGO DELAY FOR INTRO MUSIC
    
    if !instance_exists(obj_DJ) instance_create(0,0,obj_DJ);
    with (obj_DJ){audio_sound_gain(music_track, global.mus,0);audio_master_gain(global.vol);}
    if  audio_is_playing(msc_Title_Intro) audio_stop_sound(msc_Title_Intro);
        audio_sound_gain(msc_Title_Intro, global.mus*.5,0)
        audio_sound_pitch(msc_Title_Intro,1)
        audio_play_sound(msc_Title_Intro,10,true);
        audio_play_sound(amb_birds,9,true);
        
    global.load_config=true; //CONFIRM CONFIG HAS BEEN LOADED
    }
}



