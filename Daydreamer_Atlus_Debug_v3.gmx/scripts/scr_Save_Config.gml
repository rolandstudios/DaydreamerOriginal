//------------------------------------------------------------------
//---------------- ASYNC CONFIG SAVE -------------------------------
//------------------------------------------------------------------
if (global.platform==3) //PS4 ONLY
{  
    //DO NOTHING  
}

//------------------------------------------------------------------
//---------------- NORMAL CONFIG SAVE ------------------------------
//------------------------------------------------------------------

if (global.platform==0) || (global.platform==1) //PC AND XBOX ONLY
{
    if (global.platform==1)
    {
        if (xboxone_get_savedata_user() != global.xb_user)
        {
        xboxone_set_savedata_user(global.xb_user);
        }
    }

    var directory;
    switch(global.platform)
    {
    case 0: directory="SaveGame\"; break; //PC
    case 1: directory="SaveGame\"; break; //XBOXONE
    case 2: directory=""; break; //PS4
    }
    
    ini_open(directory+"config.ini");

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

